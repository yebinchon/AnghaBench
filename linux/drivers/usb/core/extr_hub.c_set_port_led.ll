; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_set_port_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.usb_port** }
%struct.usb_port = type { i32 }

@USB_PORT_FEAT_INDICATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"indicator %s status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32, i32)* @set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_port_led(%struct.usb_hub* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_port*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %10 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %9, i32 0, i32 1
  %11 = load %struct.usb_port**, %struct.usb_port*** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.usb_port*, %struct.usb_port** %11, i64 %14
  %16 = load %struct.usb_port*, %struct.usb_port** %15, align 8
  store %struct.usb_port* %16, %struct.usb_port** %7, align 8
  %17 = load %struct.usb_hub*, %struct.usb_hub** %4, align 8
  %18 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @USB_PORT_FEAT_INDICATOR, align 4
  %25 = call i32 @set_port_feature(i32 %19, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.usb_port*, %struct.usb_port** %7, align 8
  %27 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %26, i32 0, i32 0
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @to_led_name(i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @set_port_feature(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @to_led_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
