; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_stop_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_stop_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usba_udc*)* @stop_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_clock(%struct.usba_udc* %0) #0 {
  %2 = alloca %struct.usba_udc*, align 8
  store %struct.usba_udc* %0, %struct.usba_udc** %2, align 8
  %3 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %4 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %10 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  %13 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %14 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %18 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.usba_udc*, %struct.usba_udc** %2, align 8
  %20 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @pm_relax(i32* %22)
  br label %24

24:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_relax(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
