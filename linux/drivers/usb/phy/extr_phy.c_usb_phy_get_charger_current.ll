; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_get_charger_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy.c_usb_phy_get_charger_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_phy_get_charger_current(%struct.usb_phy* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_phy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.usb_phy* %0, %struct.usb_phy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %8 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 128, label %10
    i32 129, label %21
    i32 130, label %32
    i32 131, label %43
  ]

10:                                               ; preds = %3
  %11 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %12 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %17 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  store i32 %19, i32* %20, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %23 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %28 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %57

32:                                               ; preds = %3
  %33 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %34 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %39 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %57

43:                                               ; preds = %3
  %44 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %45 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %50 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %57

54:                                               ; preds = %3
  %55 = load i32*, i32** %5, align 8
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %43, %32, %21, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
