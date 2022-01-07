; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_start_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_start_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usba_udc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usba_udc*)* @start_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_clock(%struct.usba_udc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usba_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.usba_udc* %0, %struct.usba_udc** %3, align 8
  %5 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %6 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %12 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @pm_stay_awake(i32* %14)
  %16 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %17 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_prepare_enable(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %40

24:                                               ; preds = %10
  %25 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %26 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_prepare_enable(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %33 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_disable_unprepare(i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %24
  %38 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %39 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %31, %22, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @pm_stay_awake(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
