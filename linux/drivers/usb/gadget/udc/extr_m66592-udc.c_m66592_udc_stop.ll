; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_m66592-udc.c_m66592_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.m66592 = type { i32* }

@M66592_VBSE = common dso_local global i32 0, align 4
@M66592_URST = common dso_local global i32 0, align 4
@M66592_INTENB0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @m66592_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m66592_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.m66592*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.m66592* @to_m66592(%struct.usb_gadget* %4)
  store %struct.m66592* %5, %struct.m66592** %3, align 8
  %6 = load %struct.m66592*, %struct.m66592** %3, align 8
  %7 = load i32, i32* @M66592_VBSE, align 4
  %8 = load i32, i32* @M66592_URST, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @M66592_INTENB0, align 4
  %11 = call i32 @m66592_bclr(%struct.m66592* %6, i32 %9, i32 %10)
  %12 = load %struct.m66592*, %struct.m66592** %3, align 8
  %13 = call i32 @init_controller(%struct.m66592* %12)
  %14 = load %struct.m66592*, %struct.m66592** %3, align 8
  %15 = call i32 @disable_controller(%struct.m66592* %14)
  %16 = load %struct.m66592*, %struct.m66592** %3, align 8
  %17 = getelementptr inbounds %struct.m66592, %struct.m66592* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret i32 0
}

declare dso_local %struct.m66592* @to_m66592(%struct.usb_gadget*) #1

declare dso_local i32 @m66592_bclr(%struct.m66592*, i32, i32) #1

declare dso_local i32 @init_controller(%struct.m66592*) #1

declare dso_local i32 @disable_controller(%struct.m66592*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
