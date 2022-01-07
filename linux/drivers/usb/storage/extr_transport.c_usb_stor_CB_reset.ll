; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_CB_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_transport.c_usb_stor_CB_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32*, i32 }

@CB_RESET_CMD_SIZE = common dso_local global i32 0, align 4
@SEND_DIAGNOSTIC = common dso_local global i32 0, align 4
@US_CBI_ADSC = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_CB_reset(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = load %struct.us_data*, %struct.us_data** %2, align 8
  %4 = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* @CB_RESET_CMD_SIZE, align 4
  %7 = call i32 @memset(i32* %5, i32 255, i32 %6)
  %8 = load i32, i32* @SEND_DIAGNOSTIC, align 4
  %9 = load %struct.us_data*, %struct.us_data** %2, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %8, i32* %12, align 4
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 4, i32* %16, align 4
  %17 = load %struct.us_data*, %struct.us_data** %2, align 8
  %18 = load i32, i32* @US_CBI_ADSC, align 4
  %19 = load i32, i32* @USB_TYPE_CLASS, align 4
  %20 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.us_data*, %struct.us_data** %2, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.us_data*, %struct.us_data** %2, align 8
  %26 = getelementptr inbounds %struct.us_data, %struct.us_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @CB_RESET_CMD_SIZE, align 4
  %29 = call i32 @usb_stor_reset_common(%struct.us_data* %17, i32 %18, i32 %21, i32 0, i32 %24, i32* %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_stor_reset_common(%struct.us_data*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
