; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_loopback_set_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_loopback.c_loopback_set_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_loopback = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, i32, i32)* @loopback_set_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_set_alt(%struct.usb_function* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f_loopback*, align 8
  %8 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %10 = call %struct.f_loopback* @func_to_loop(%struct.usb_function* %9)
  store %struct.f_loopback* %10, %struct.f_loopback** %7, align 8
  %11 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %12 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %14, align 8
  store %struct.usb_composite_dev* %15, %struct.usb_composite_dev** %8, align 8
  %16 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %17 = call i32 @disable_loopback(%struct.f_loopback* %16)
  %18 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %8, align 8
  %19 = load %struct.f_loopback*, %struct.f_loopback** %7, align 8
  %20 = call i32 @enable_loopback(%struct.usb_composite_dev* %18, %struct.f_loopback* %19)
  ret i32 %20
}

declare dso_local %struct.f_loopback* @func_to_loop(%struct.usb_function*) #1

declare dso_local i32 @disable_loopback(%struct.f_loopback*) #1

declare dso_local i32 @enable_loopback(%struct.usb_composite_dev*, %struct.f_loopback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
