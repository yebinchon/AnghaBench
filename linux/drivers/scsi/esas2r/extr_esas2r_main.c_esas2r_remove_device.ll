; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { i32 }

@SDEV_OFFLINE = common dso_local global i32 0, align 4
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"scsi_remove_device() called for 0:%d:0\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"scsi_device_put() called\00", align 1
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"no target found at id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, i32)* @esas2r_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_remove_device(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.scsi_device* @scsi_device_lookup(%struct.TYPE_2__* %8, i32 0, i32 %9, i32 0)
  store %struct.scsi_device* %10, %struct.scsi_device** %5, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %12 = icmp ne %struct.scsi_device* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = load i32, i32* @SDEV_OFFLINE, align 4
  %16 = call i32 @scsi_device_set_state(%struct.scsi_device* %14, i32 %15)
  %17 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %18 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %17, i32* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %23 = call i32 @scsi_remove_device(%struct.scsi_device* %22)
  %24 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %24, i32* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %29 = call i32 @scsi_device_put(%struct.scsi_device* %28)
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %32 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %31, i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %13
  ret void
}

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, ...) #1

declare dso_local i32 @scsi_remove_device(%struct.scsi_device*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
