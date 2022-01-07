; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_frontend_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_frontend_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.vscsibk_info = type { i32 }

@VSCSIBACK_OP_ADD_OR_DEL_LUN = common dso_local global i32 0, align 4
@VSCSIBACK_OP_UPDATEDEV_STATE = common dso_local global i32 0, align 4
@XenbusStateReconfigured = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"saw state %d at frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @scsiback_frontend_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsiback_frontend_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vscsibk_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 1
  %8 = call %struct.vscsibk_info* @dev_get_drvdata(i32* %7)
  store %struct.vscsibk_info* %8, %struct.vscsibk_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %64 [
    i32 130, label %10
    i32 131, label %11
    i32 132, label %22
    i32 133, label %34
    i32 134, label %45
    i32 128, label %53
    i32 129, label %57
  ]

10:                                               ; preds = %2
  br label %70

11:                                               ; preds = %2
  %12 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %13 = call i32 @scsiback_map(%struct.vscsibk_info* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %70

16:                                               ; preds = %11
  %17 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %18 = load i32, i32* @VSCSIBACK_OP_ADD_OR_DEL_LUN, align 4
  %19 = call i32 @scsiback_do_lun_hotplug(%struct.vscsibk_info* %17, i32 %18)
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %21 = call i32 @xenbus_switch_state(%struct.xenbus_device* %20, i32 132)
  br label %70

22:                                               ; preds = %2
  %23 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %24 = load i32, i32* @VSCSIBACK_OP_UPDATEDEV_STATE, align 4
  %25 = call i32 @scsiback_do_lun_hotplug(%struct.vscsibk_info* %23, i32 %24)
  %26 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %27 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 132
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %70

31:                                               ; preds = %22
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %33 = call i32 @xenbus_switch_state(%struct.xenbus_device* %32, i32 132)
  br label %70

34:                                               ; preds = %2
  %35 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %36 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %41 = call i32 @scsiback_disconnect(%struct.vscsibk_info* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %44 = call i32 @xenbus_switch_state(%struct.xenbus_device* %43, i32 133)
  br label %70

45:                                               ; preds = %2
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %47 = call i32 @xenbus_switch_state(%struct.xenbus_device* %46, i32 134)
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %49 = call i32 @xenbus_dev_is_online(%struct.xenbus_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %70

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %2, %52
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %55 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %54, i32 0, i32 1
  %56 = call i32 @device_unregister(i32* %55)
  br label %70

57:                                               ; preds = %2
  %58 = load %struct.vscsibk_info*, %struct.vscsibk_info** %5, align 8
  %59 = load i32, i32* @VSCSIBACK_OP_ADD_OR_DEL_LUN, align 4
  %60 = call i32 @scsiback_do_lun_hotplug(%struct.vscsibk_info* %58, i32 %59)
  %61 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %62 = load i32, i32* @XenbusStateReconfigured, align 4
  %63 = call i32 @xenbus_switch_state(%struct.xenbus_device* %61, i32 %62)
  br label %70

64:                                               ; preds = %2
  %65 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %65, i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %57, %53, %51, %42, %31, %30, %16, %15, %10
  ret void
}

declare dso_local %struct.vscsibk_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @scsiback_map(%struct.vscsibk_info*) #1

declare dso_local i32 @scsiback_do_lun_hotplug(%struct.vscsibk_info*, i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @scsiback_disconnect(%struct.vscsibk_info*) #1

declare dso_local i32 @xenbus_dev_is_online(%struct.xenbus_device*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
