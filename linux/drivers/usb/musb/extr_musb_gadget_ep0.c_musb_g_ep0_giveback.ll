; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget_ep0.c_musb_g_ep0_giveback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget_ep0.c_musb_g_ep0_giveback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb*, %struct.usb_request*)* @musb_g_ep0_giveback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musb_g_ep0_giveback(%struct.musb* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.usb_request*, align 8
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %5 = load %struct.musb*, %struct.musb** %3, align 8
  %6 = getelementptr inbounds %struct.musb, %struct.musb* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %11 = call i32 @musb_g_giveback(i32* %9, %struct.usb_request* %10, i32 0)
  ret void
}

declare dso_local i32 @musb_g_giveback(i32*, %struct.usb_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
