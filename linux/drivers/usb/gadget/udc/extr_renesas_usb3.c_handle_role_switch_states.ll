; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_handle_role_switch_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_handle_role_switch_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.renesas_usb3 = type { %struct.device* }

@USB_ROLE_HOST = common dso_local global i32 0, align 4
@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"device_attach(host) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @handle_role_switch_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_role_switch_states(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.renesas_usb3* @dev_get_drvdata(%struct.device* %8)
  store %struct.renesas_usb3* %9, %struct.renesas_usb3** %5, align 8
  %10 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %11 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @renesas_usb3_role_switch_get(%struct.device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @USB_ROLE_HOST, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @device_release_driver(%struct.device* %23)
  %25 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %26 = call i32 @usb3_set_mode(%struct.renesas_usb3* %25, i32 0)
  br label %46

27:                                               ; preds = %18, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @USB_ROLE_DEVICE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @USB_ROLE_HOST, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %37 = call i32 @usb3_set_mode(%struct.renesas_usb3* %36, i32 1)
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i64 @device_attach(%struct.device* %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %3, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %31, %27
  br label %46

46:                                               ; preds = %45, %22
  ret void
}

declare dso_local %struct.renesas_usb3* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @renesas_usb3_role_switch_get(%struct.device*) #1

declare dso_local i32 @device_release_driver(%struct.device*) #1

declare dso_local i32 @usb3_set_mode(%struct.renesas_usb3*, i32) #1

declare dso_local i64 @device_attach(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
