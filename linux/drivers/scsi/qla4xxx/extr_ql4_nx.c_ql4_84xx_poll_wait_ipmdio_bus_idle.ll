; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_poll_wait_ipmdio_bus_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla4xxx/extr_ql4_nx.c_ql4_84xx_poll_wait_ipmdio_bus_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TIMEOUT_100_MS = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Error in processing mdiobus idle\0A\00", align 1
@QLA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32, i32, i32)* @ql4_84xx_poll_wait_ipmdio_bus_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql4_84xx_poll_wait_ipmdio_bus_idle(%struct.scsi_qla_host* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @TIMEOUT_100_MS, align 4
  %18 = call i64 @msecs_to_jiffies(i32 %17)
  %19 = add i64 %16, %18
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %42, %5
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @ql4_84xx_ipmdio_rd_reg(%struct.scsi_qla_host* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32* %13)
  %27 = load i32, i32* %13, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %43

31:                                               ; preds = %20
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @time_after_eq(i64 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @KERN_INFO, align 4
  %38 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %39 = call i32 @ql4_printk(i32 %37, %struct.scsi_qla_host* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @QLA_ERROR, align 4
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  br i1 true, label %20, label %43

43:                                               ; preds = %42, %30
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ql4_84xx_ipmdio_rd_reg(%struct.scsi_qla_host*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
