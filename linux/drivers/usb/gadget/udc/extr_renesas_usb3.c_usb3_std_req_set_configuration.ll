; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_set_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@USB_COM_CON_CONF = common dso_local global i32 0, align 4
@USB3_USB_COM_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3*, %struct.usb_ctrlrequest*)* @usb3_std_req_set_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_std_req_set_configuration(%struct.renesas_usb3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %5 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %6 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @le16_to_cpu(i32 %7)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %12 = load i32, i32* @USB_COM_CON_CONF, align 4
  %13 = load i32, i32* @USB3_USB_COM_CON, align 4
  %14 = call i32 @usb3_set_bit(%struct.renesas_usb3* %11, i32 %12, i32 %13)
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %17 = load i32, i32* @USB_COM_CON_CONF, align 4
  %18 = load i32, i32* @USB3_USB_COM_CON, align 4
  %19 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %16, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %10
  ret i32 0
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
