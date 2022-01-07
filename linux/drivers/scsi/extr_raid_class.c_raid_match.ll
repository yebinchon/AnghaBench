; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_raid_class.c_raid_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_raid_class.c_raid_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.raid_internal = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 (%struct.device*)* }
%struct.scsi_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CONFIG_SCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @raid_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.raid_internal*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %9 = call %struct.raid_internal* @ac_to_raid_internal(%struct.attribute_container* %8)
  store %struct.raid_internal* %9, %struct.raid_internal** %6, align 8
  %10 = load i32, i32* @CONFIG_SCSI, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i64 @scsi_is_sdev_device(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.scsi_device* @to_scsi_device(%struct.device* %18)
  store %struct.scsi_device* %19, %struct.scsi_device** %7, align 8
  %20 = load %struct.raid_internal*, %struct.raid_internal** %6, align 8
  %21 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

32:                                               ; preds = %17
  %33 = load %struct.raid_internal*, %struct.raid_internal** %6, align 8
  %34 = getelementptr inbounds %struct.raid_internal, %struct.raid_internal* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.device*)*, i32 (%struct.device*)** %36, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 %37(%struct.device* %38)
  store i32 %39, i32* %3, align 4
  br label %41

40:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %32, %31
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.raid_internal* @ac_to_raid_internal(%struct.attribute_container*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @scsi_is_sdev_device(%struct.device*) #1

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
