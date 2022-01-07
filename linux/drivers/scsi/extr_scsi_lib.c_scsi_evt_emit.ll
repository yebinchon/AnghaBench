; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_evt_emit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_evt_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_event = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"SDEV_MEDIA_CHANGE=1\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SDEV_UA=INQUIRY_DATA_HAS_CHANGED\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SDEV_UA=CAPACITY_DATA_HAS_CHANGED\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"SDEV_UA=THIN_PROVISIONING_SOFT_THRESHOLD_REACHED\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"SDEV_UA=MODE_PARAMETERS_CHANGED\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"SDEV_UA=REPORTED_LUNS_DATA_HAS_CHANGED\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SDEV_UA=ASYMMETRIC_ACCESS_STATE_CHANGED\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"SDEV_UA=POWER_ON_RESET_OCCURRED\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.scsi_event*)* @scsi_evt_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_evt_emit(%struct.scsi_device* %0, %struct.scsi_event* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.scsi_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.scsi_event* %1, %struct.scsi_event** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.scsi_event*, %struct.scsi_event** %4, align 8
  %8 = getelementptr inbounds %struct.scsi_event, %struct.scsi_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %53 [
    i32 131, label %10
    i32 133, label %15
    i32 134, label %23
    i32 128, label %28
    i32 130, label %33
    i32 132, label %38
    i32 135, label %43
    i32 129, label %48
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %13
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 0
  %18 = call i32 @scsi_rescan_device(%struct.TYPE_2__* %17)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %21
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %22, align 8
  br label %54

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %26
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %27, align 8
  br label %54

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %31
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  br label %54

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %36
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8** %37, align 8
  br label %54

38:                                               ; preds = %2
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %41
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8** %42, align 8
  br label %54

43:                                               ; preds = %2
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %46
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8** %47, align 8
  br label %54

48:                                               ; preds = %2
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %51
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8** %52, align 8
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %48, %43, %38, %33, %28, %23, %15, %10
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %57
  store i8* null, i8** %58, align 8
  %59 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %60 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* @KOBJ_CHANGE, align 4
  %63 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %64 = call i32 @kobject_uevent_env(i32* %61, i32 %62, i8** %63)
  ret void
}

declare dso_local i32 @scsi_rescan_device(%struct.TYPE_2__*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
