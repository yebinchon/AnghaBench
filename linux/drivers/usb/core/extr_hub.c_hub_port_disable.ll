; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { %struct.usb_device*, i32, %struct.usb_port** }
%struct.usb_device = type { i32 }
%struct.usb_port = type { i32, i64, i32 }

@USB_SS_PORT_LS_U3 = common dso_local global i32 0, align 4
@USB_PORT_FEAT_ENABLE = common dso_local global i32 0, align 4
@USB_STATE_NOTATTACHED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot disable (err = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, i32)* @hub_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_disable(%struct.usb_hub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_port*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %10, i32 0, i32 2
  %12 = load %struct.usb_port**, %struct.usb_port*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %12, i64 %15
  %17 = load %struct.usb_port*, %struct.usb_port** %16, align 8
  store %struct.usb_port* %17, %struct.usb_port** %7, align 8
  %18 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %19 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %18, i32 0, i32 0
  %20 = load %struct.usb_device*, %struct.usb_device** %19, align 8
  store %struct.usb_device* %20, %struct.usb_device** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %22 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %47, label %25

25:                                               ; preds = %3
  %26 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %27 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %26, i32 0, i32 0
  %28 = load %struct.usb_device*, %struct.usb_device** %27, align 8
  %29 = call i64 @hub_is_superspeed(%struct.usb_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %33 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %34 = call i32 @hub_usb3_port_prepare_disable(%struct.usb_hub* %32, %struct.usb_port* %33)
  %35 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %36 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %37 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @USB_SS_PORT_LS_U3, align 4
  %40 = call i32 @hub_set_port_link_state(%struct.usb_hub* %35, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %46

41:                                               ; preds = %25
  %42 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @USB_PORT_FEAT_ENABLE, align 4
  %45 = call i32 @usb_clear_port_feature(%struct.usb_device* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %41, %31
  br label %47

47:                                               ; preds = %46, %3
  %48 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %49 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %57 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @USB_STATE_NOTATTACHED, align 4
  %60 = call i32 @usb_set_device_state(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %55, %52, %47
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %71 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %64, %61
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i64 @hub_is_superspeed(%struct.usb_device*) #1

declare dso_local i32 @hub_usb3_port_prepare_disable(%struct.usb_hub*, %struct.usb_port*) #1

declare dso_local i32 @hub_set_port_link_state(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @usb_clear_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_set_device_state(i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
