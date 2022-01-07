; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_core.c_musb_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_hw_ep = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @musb_read_fifo(%struct.musb_hw_ep* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.musb_hw_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.musb_hw_ep* %0, %struct.musb_hw_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %8 = getelementptr inbounds %struct.musb_hw_ep, %struct.musb_hw_ep* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to void (%struct.musb_hw_ep*, i32, i32*)**
  %13 = load void (%struct.musb_hw_ep*, i32, i32*)*, void (%struct.musb_hw_ep*, i32, i32*)** %12, align 8
  %14 = load %struct.musb_hw_ep*, %struct.musb_hw_ep** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %6, align 8
  call void %13(%struct.musb_hw_ep* %14, i32 %15, i32* %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
