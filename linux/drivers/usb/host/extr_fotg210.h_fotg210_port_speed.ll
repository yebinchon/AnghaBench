; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210.h_fotg210_port_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210.h_fotg210_port_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }

@USB_PORT_STAT_LOW_SPEED = common dso_local global i32 0, align 4
@USB_PORT_STAT_HIGH_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_hcd*, i32)* @fotg210_port_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_port_speed(%struct.fotg210_hcd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @fotg210_get_speed(%struct.fotg210_hcd* %6, i32 %7)
  switch i32 %8, label %13 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %12
  ]

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @USB_PORT_STAT_LOW_SPEED, align 4
  store i32 %11, i32* %3, align 4
  br label %15

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  %14 = load i32, i32* @USB_PORT_STAT_HIGH_SPEED, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %10, %9
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @fotg210_get_speed(%struct.fotg210_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
