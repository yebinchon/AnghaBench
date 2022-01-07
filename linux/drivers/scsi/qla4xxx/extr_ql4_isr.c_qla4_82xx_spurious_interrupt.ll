; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_82xx_spurious_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_isr.c_qla4_82xx_spurious_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Spurious Interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, i64)* @qla4_82xx_spurious_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla4_82xx_spurious_interrupt(%struct.scsi_qla_host* %0, i64 %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %48

8:                                                ; preds = %2
  %9 = load i32, i32* @KERN_INFO, align 4
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = call i32 @ql4_printk(i32 %9, %struct.scsi_qla_host* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @DEBUG2(i32 %11)
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %14 = call i64 @is_qla8022(%struct.scsi_qla_host* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @writel(i32 0, i32* %20)
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %23 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %16
  %29 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %30 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qla4_82xx_wr_32(%struct.scsi_qla_host* %36, i32 %40, i32 64511)
  br label %42

42:                                               ; preds = %35, %28, %16
  br label %43

43:                                               ; preds = %42, %8
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %7
  ret void
}

declare dso_local i32 @DEBUG2(i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @qla4_82xx_wr_32(%struct.scsi_qla_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
