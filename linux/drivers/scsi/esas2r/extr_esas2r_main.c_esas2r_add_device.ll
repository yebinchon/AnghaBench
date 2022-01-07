; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.scsi_device = type { i32 }

@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"scsi device already exists at id %d\00", align 1
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"scsi_add_device() called for 0:%d:0\00", align 1
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"scsi_add_device failed with %d for id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esas2r_adapter*, i32)* @esas2r_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esas2r_add_device(%struct.esas2r_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.esas2r_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.scsi_device* @scsi_device_lookup(%struct.TYPE_3__* %9, i32 0, i32 %10, i32 0)
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  %12 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %13 = icmp ne %struct.scsi_device* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %16 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i32*, i8*, i32, ...) @esas2r_log_dev(i32 %15, i32* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %21 = call i32 @scsi_device_put(%struct.scsi_device* %20)
  br label %47

22:                                               ; preds = %2
  %23 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %24 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i32, i32*, i8*, i32, ...) @esas2r_log_dev(i32 %23, i32* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @scsi_add_device(%struct.TYPE_3__* %32, i32 0, i32 %33, i32 0)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %22
  %38 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %39 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 (i32, i32*, i8*, i32, ...) @esas2r_log_dev(i32 %38, i32* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %22
  br label %47

47:                                               ; preds = %46, %14
  ret void
}

declare dso_local %struct.scsi_device* @scsi_device_lookup(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @scsi_add_device(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
