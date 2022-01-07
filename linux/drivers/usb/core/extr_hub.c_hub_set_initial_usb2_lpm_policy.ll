; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_set_initial_usb2_lpm_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_set_initial_usb2_lpm_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.usb_hub = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }

@USB_PORT_CONNECT_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@USB_BESL_SUPPORT = common dso_local global i32 0, align 4
@USB_PORT_CONNECT_TYPE_HARD_WIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @hub_set_initial_usb2_lpm_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_set_initial_usb2_lpm_policy(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %5 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %6 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.usb_hub* @usb_hub_to_struct_hub(i32 %7)
  store %struct.usb_hub* %8, %struct.usb_hub** %3, align 8
  %9 = load i32, i32* @USB_PORT_CONNECT_TYPE_UNKNOWN, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  br label %57

20:                                               ; preds = %14
  %21 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %22 = icmp ne %struct.usb_hub* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %25 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %25, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @USB_BESL_SUPPORT, align 4
  %45 = call i32 @cpu_to_le32(i32 %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @USB_PORT_CONNECT_TYPE_HARD_WIRED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48, %36
  %53 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %56 = call i32 @usb_enable_usb2_hardware_lpm(%struct.usb_device* %55)
  br label %57

57:                                               ; preds = %19, %52, %48
  ret void
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_enable_usb2_hardware_lpm(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
