; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_usb_role_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_role_switch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@usb_role_switch_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_role_switch* @usb_role_switch_get(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.usb_role_switch*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call i32 @dev_fwnode(%struct.device* %4)
  %6 = call %struct.usb_role_switch* @usb_role_switch_is_parent(i32 %5)
  store %struct.usb_role_switch* %6, %struct.usb_role_switch** %3, align 8
  %7 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %8 = icmp ne %struct.usb_role_switch* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = load i32, i32* @usb_role_switch_match, align 4
  %12 = call %struct.usb_role_switch* @device_connection_find_match(%struct.device* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %11)
  store %struct.usb_role_switch* %12, %struct.usb_role_switch** %3, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %15 = call i32 @IS_ERR_OR_NULL(%struct.usb_role_switch* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %19 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @try_module_get(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  br label %31

31:                                               ; preds = %17, %13
  %32 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  ret %struct.usb_role_switch* %32
}

declare dso_local %struct.usb_role_switch* @usb_role_switch_is_parent(i32) #1

declare dso_local i32 @dev_fwnode(%struct.device*) #1

declare dso_local %struct.usb_role_switch* @device_connection_find_match(%struct.device*, i8*, i32*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.usb_role_switch*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
