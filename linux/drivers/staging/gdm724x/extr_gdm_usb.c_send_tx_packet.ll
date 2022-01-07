; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_send_tx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_send_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_tx = type { i32, i32 }

@gdm_usb_send_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"usb_submit_urb failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_tx*, i32)* @send_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_tx_packet(%struct.usb_device* %0, %struct.usb_tx* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_tx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_tx* %1, %struct.usb_tx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = srem i32 %8, 512
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %11, %3
  %15 = load %struct.usb_tx*, %struct.usb_tx** %5, align 8
  %16 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = call i32 @usb_sndbulkpipe(%struct.usb_device* %19, i32 2)
  %21 = load %struct.usb_tx*, %struct.usb_tx** %5, align 8
  %22 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @gdm_usb_send_complete, align 4
  %26 = load %struct.usb_tx*, %struct.usb_tx** %5, align 8
  %27 = call i32 @usb_fill_bulk_urb(i32 %17, %struct.usb_device* %18, i32 %20, i32 %23, i32 %24, i32 %25, %struct.usb_tx* %26)
  %28 = load %struct.usb_tx*, %struct.usb_tx** %5, align 8
  %29 = getelementptr inbounds %struct.usb_tx, %struct.usb_tx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call i32 @usb_submit_urb(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %14
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %14
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = call i32 @usb_mark_last_busy(%struct.usb_device* %41)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.usb_tx*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_mark_last_busy(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
