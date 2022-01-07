; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_register_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_register_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { i32, i32, %struct.TYPE_3__*, %struct.platform_device* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@qpti_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"QlogicPTI\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"qlogicpti%d: IRQ %d \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"qlogicpti%d: Cannot acquire irq line\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlogicpti*)* @qpti_register_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpti_register_irq(%struct.qlogicpti* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlogicpti*, align 8
  %4 = alloca %struct.platform_device*, align 8
  store %struct.qlogicpti* %0, %struct.qlogicpti** %3, align 8
  %5 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %6 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %5, i32 0, i32 3
  %7 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  store %struct.platform_device* %7, %struct.platform_device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %15 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %17 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %13, i32* %19, align 4
  %20 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %21 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @qpti_intr, align 4
  %24 = load i32, i32* @IRQF_SHARED, align 4
  %25 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %26 = call i64 @request_irq(i32 %22, i32 %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.qlogicpti* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %31 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %34 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  store i32 0, i32* %2, align 4
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %39 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.qlogicpti*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
