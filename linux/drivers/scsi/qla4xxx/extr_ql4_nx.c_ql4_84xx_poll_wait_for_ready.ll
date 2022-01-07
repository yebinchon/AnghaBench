; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_poll_wait_for_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_poll_wait_for_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_qla_host*, i32, i32*)* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIMEOUT_100_MS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error in processing rdmdio entry\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32)* @ql4_84xx_poll_wait_for_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql4_84xx_poll_wait_for_ready(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i32, i32* @TIMEOUT_100_MS, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = add i64 %12, %14
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.scsi_qla_host*, i32, i32*)*, i32 (%struct.scsi_qla_host*, i32, i32*)** %20, align 8
  %22 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 %21(%struct.scsi_qla_host* %22, i32 %23, i32* %10)
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %42

30:                                               ; preds = %16
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @time_after_eq(i64 %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %38 = call i32 @ql4_printk(i32 %36, %struct.scsi_qla_host* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @QLA_ERROR, align 4
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  br i1 true, label %16, label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
