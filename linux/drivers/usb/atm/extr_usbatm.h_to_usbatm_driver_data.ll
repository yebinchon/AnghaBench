; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.h_to_usbatm_driver_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_usbatm.h_to_usbatm_driver_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usbatm_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_interface*)* @to_usbatm_driver_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @to_usbatm_driver_data(%struct.usb_interface* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.usbatm_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %6 = icmp eq %struct.usb_interface* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %10 = call %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface* %9)
  store %struct.usbatm_data* %10, %struct.usbatm_data** %4, align 8
  %11 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %12 = icmp eq %struct.usbatm_data* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i8* null, i8** %2, align 8
  br label %18

14:                                               ; preds = %8
  %15 = load %struct.usbatm_data*, %struct.usbatm_data** %4, align 8
  %16 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %2, align 8
  br label %18

18:                                               ; preds = %14, %13, %7
  %19 = load i8*, i8** %2, align 8
  ret i8* %19
}

declare dso_local %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
