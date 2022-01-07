; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_hsotg_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hsotg_remove(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %3 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %4 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %3, i32 0, i32 2
  %5 = call i32 @usb_del_gadget_udc(i32* %4)
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %8, i64 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dwc2_hsotg_ep_free_request(i32* %11, i32 %14)
  ret i32 0
}

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @dwc2_hsotg_ep_free_request(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
