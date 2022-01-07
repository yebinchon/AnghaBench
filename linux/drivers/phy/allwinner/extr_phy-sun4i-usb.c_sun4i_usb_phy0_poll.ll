; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy0_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy0_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_usb_phy_data = type { i64, i64, %struct.TYPE_3__*, i64, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@sun6i_a31_phy = common dso_local global i64 0, align 8
@sun8i_a33_phy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_usb_phy_data*)* @sun4i_usb_phy0_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_usb_phy0_poll(%struct.sun4i_usb_phy_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sun4i_usb_phy_data*, align 8
  store %struct.sun4i_usb_phy_data* %0, %struct.sun4i_usb_phy_data** %3, align 8
  %4 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %5 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %10 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %15 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %20 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %8
  store i32 1, i32* %2, align 4
  br label %55

24:                                               ; preds = %18, %13
  %25 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %26 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @sun6i_a31_phy, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %34 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @sun8i_a33_phy, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %32, %24
  %41 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %42 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %3, align 8
  %47 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %2, align 4
  br label %55

54:                                               ; preds = %45, %40, %32
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %53, %23
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
