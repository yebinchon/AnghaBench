; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub_descriptor = type { i32, i32, i32, i32 }

@USB_DT_HUB = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_COMMON_OCPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub_descriptor*)* @hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_descriptor(%struct.usb_hub_descriptor* %0) #0 {
  %2 = alloca %struct.usb_hub_descriptor*, align 8
  store %struct.usb_hub_descriptor* %0, %struct.usb_hub_descriptor** %2, align 8
  %3 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %4 = call i32 @memset(%struct.usb_hub_descriptor* %3, i32 0, i32 16)
  %5 = load i32, i32* @USB_DT_HUB, align 4
  %6 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %7 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %8, i32 0, i32 0
  store i32 9, i32* %9, align 4
  %10 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %11 = load i32, i32* @HUB_CHAR_COMMON_OCPM, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %15 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %17 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  ret void
}

declare dso_local i32 @memset(%struct.usb_hub_descriptor*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
