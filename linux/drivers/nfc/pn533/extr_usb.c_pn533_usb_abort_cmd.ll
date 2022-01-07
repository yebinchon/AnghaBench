; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { i64, %struct.pn533_usb_phy* }
%struct.pn533_usb_phy = type { i32 }

@PN533_DEVICE_ACR122U = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pn533*, i32)* @pn533_usb_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pn533_usb_abort_cmd(%struct.pn533* %0, i32 %1) #0 {
  %3 = alloca %struct.pn533*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pn533_usb_phy*, align 8
  store %struct.pn533* %0, %struct.pn533** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pn533*, %struct.pn533** %3, align 8
  %7 = getelementptr inbounds %struct.pn533, %struct.pn533* %6, i32 0, i32 1
  %8 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %7, align 8
  store %struct.pn533_usb_phy* %8, %struct.pn533_usb_phy** %5, align 8
  %9 = load %struct.pn533*, %struct.pn533** %3, align 8
  %10 = getelementptr inbounds %struct.pn533, %struct.pn533* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PN533_DEVICE_ACR122U, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.pn533*, %struct.pn533** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pn533_usb_send_ack(%struct.pn533* %16, i32 %17)
  %19 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %5, align 8
  %20 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_kill_urb(i32 %21)
  br label %23

23:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @pn533_usb_send_ack(%struct.pn533*, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
