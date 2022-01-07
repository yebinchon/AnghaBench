; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_quit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_mod = type { i64, i64, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_fifo_quit(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhs_mod*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %4 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %5 = call %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv* %4)
  store %struct.usbhs_mod* %5, %struct.usbhs_mod** %3, align 8
  %6 = load %struct.usbhs_mod*, %struct.usbhs_mod** %3, align 8
  %7 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %6, i32 0, i32 3
  store i32* null, i32** %7, align 8
  %8 = load %struct.usbhs_mod*, %struct.usbhs_mod** %3, align 8
  %9 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.usbhs_mod*, %struct.usbhs_mod** %3, align 8
  %11 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.usbhs_mod*, %struct.usbhs_mod** %3, align 8
  %13 = getelementptr inbounds %struct.usbhs_mod, %struct.usbhs_mod* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  ret void
}

declare dso_local %struct.usbhs_mod* @usbhs_mod_get_current(%struct.usbhs_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
