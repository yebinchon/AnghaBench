; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_is_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_is_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_role_switch = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@role_class = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_role_switch* (%struct.fwnode_handle*)* @usb_role_switch_is_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.usb_role_switch*, align 8
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %7 = call %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle* %6)
  store %struct.fwnode_handle* %7, %struct.fwnode_handle** %4, align 8
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %9 = icmp ne %struct.fwnode_handle* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %12 = call i32 @fwnode_property_present(%struct.fwnode_handle* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %1
  store %struct.usb_role_switch* null, %struct.usb_role_switch** %2, align 8
  br label %30

15:                                               ; preds = %10
  %16 = load i32, i32* @role_class, align 4
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %18 = call %struct.device* @class_find_device_by_fwnode(i32 %16, %struct.fwnode_handle* %17)
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = call %struct.usb_role_switch* @to_role_switch(%struct.device* %22)
  br label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.usb_role_switch* @ERR_PTR(i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi %struct.usb_role_switch* [ %23, %21 ], [ %27, %24 ]
  store %struct.usb_role_switch* %29, %struct.usb_role_switch** %2, align 8
  br label %30

30:                                               ; preds = %28, %14
  %31 = load %struct.usb_role_switch*, %struct.usb_role_switch** %2, align 8
  ret %struct.usb_role_switch* %31
}

declare dso_local %struct.fwnode_handle* @fwnode_get_parent(%struct.fwnode_handle*) #1

declare dso_local i32 @fwnode_property_present(%struct.fwnode_handle*, i8*) #1

declare dso_local %struct.device* @class_find_device_by_fwnode(i32, %struct.fwnode_handle*) #1

declare dso_local %struct.usb_role_switch* @to_role_switch(%struct.device*) #1

declare dso_local %struct.usb_role_switch* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
