; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_fwnode_usb_role_switch_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/roles/extr_class.c_fwnode_usb_role_switch_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_role_switch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.fwnode_handle = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"usb-role-switch\00", align 1
@usb_role_switch_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_role_switch* @fwnode_usb_role_switch_get(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.usb_role_switch*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %2, align 8
  %4 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %5 = call %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle* %4)
  store %struct.usb_role_switch* %5, %struct.usb_role_switch** %3, align 8
  %6 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %7 = icmp ne %struct.usb_role_switch* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  %10 = load i32, i32* @usb_role_switch_match, align 4
  %11 = call %struct.usb_role_switch* @fwnode_connection_find_match(%struct.fwnode_handle* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %10)
  store %struct.usb_role_switch* %11, %struct.usb_role_switch** %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %14 = call i32 @IS_ERR_OR_NULL(%struct.usb_role_switch* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  %17 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  %18 = getelementptr inbounds %struct.usb_role_switch, %struct.usb_role_switch* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @try_module_get(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  br label %30

30:                                               ; preds = %16, %12
  %31 = load %struct.usb_role_switch*, %struct.usb_role_switch** %3, align 8
  ret %struct.usb_role_switch* %31
}

declare dso_local %struct.usb_role_switch* @usb_role_switch_is_parent(%struct.fwnode_handle*) #1

declare dso_local %struct.usb_role_switch* @fwnode_connection_find_match(%struct.fwnode_handle*, i8*, i32*, i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.usb_role_switch*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
