; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_logical_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_port_logical_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"logical disconnect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub*, i32)* @hub_port_logical_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_port_logical_disconnect(%struct.usb_hub* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hub*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %6 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %7, i64 %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @hub_port_disable(%struct.usb_hub* %15, i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %20 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  %23 = load %struct.usb_hub*, %struct.usb_hub** %3, align 8
  %24 = call i32 @kick_hub_wq(%struct.usb_hub* %23)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hub_port_disable(%struct.usb_hub*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kick_hub_wq(%struct.usb_hub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
