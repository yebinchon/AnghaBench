; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_wait_for_pending_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_device_wait_for_pending_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pqi_scsi_dev = type { i32 }

@PQI_HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"timed out waiting for pending IO\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*, %struct.pqi_scsi_dev*, i64)* @pqi_device_wait_for_pending_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_device_wait_for_pending_io(%struct.pqi_ctrl_info* %0, %struct.pqi_scsi_dev* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_ctrl_info*, align 8
  %6 = alloca %struct.pqi_scsi_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %5, align 8
  store %struct.pqi_scsi_dev* %1, %struct.pqi_scsi_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @PQI_HZ, align 8
  %11 = mul i64 %9, %10
  %12 = load i64, i64* @jiffies, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %46, %3
  %15 = load %struct.pqi_scsi_dev*, %struct.pqi_scsi_dev** %6, align 8
  %16 = getelementptr inbounds %struct.pqi_scsi_dev, %struct.pqi_scsi_dev* %15, i32 0, i32 0
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %14
  %20 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %21 = call i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info* %20)
  %22 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %23 = call i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %49

28:                                               ; preds = %19
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @NO_TIMEOUT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i64 @time_after(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %5, align 8
  %39 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %28
  %47 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %14

48:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %37, %25
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pqi_check_ctrl_health(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @pqi_ctrl_offline(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
