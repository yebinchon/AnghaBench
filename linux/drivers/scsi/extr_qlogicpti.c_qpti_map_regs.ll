; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_map_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qlogicpti.c_qpti_map_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlogicpti = type { i8*, i64, i8*, %struct.platform_device* }
%struct.platform_device = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"PTI Qlogic/ISP\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"PTI: Qlogic/ISP registers are unmappable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"PTI Qlogic/ISP statreg\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"PTI: Qlogic/ISP status register is unmappable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlogicpti*)* @qpti_map_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpti_map_regs(%struct.qlogicpti* %0) #0 {
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
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @resource_size(i32* %15)
  %17 = call i8* @of_ioremap(i32* %11, i32 0, i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %19 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %21 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %1
  %25 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %51

28:                                               ; preds = %1
  %29 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %30 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = call i8* @of_ioremap(i32* %37, i32 65536, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %40 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.qlogicpti*, %struct.qlogicpti** %3, align 8
  %42 = getelementptr inbounds %struct.qlogicpti, %struct.qlogicpti* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %51

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %28
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @of_ioremap(i32*, i32, i32, i8*) #1

declare dso_local i32 @resource_size(i32*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
