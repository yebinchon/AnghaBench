; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun4i-usb.c_sun4i_usb_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.sun4i_usb_phy_data = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.phy* }
%struct.TYPE_4__ = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @sun4i_usb_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @sun4i_usb_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.sun4i_usb_phy_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.sun4i_usb_phy_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.sun4i_usb_phy_data* %8, %struct.sun4i_usb_phy_data** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %6, align 8
  %15 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %13, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.phy* @ERR_PTR(i32 %22)
  store %struct.phy* %23, %struct.phy** %3, align 8
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %6, align 8
  %26 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %31 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @BIT(i64 %34)
  %36 = and i32 %29, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.phy* @ERR_PTR(i32 %40)
  store %struct.phy* %41, %struct.phy** %3, align 8
  br label %54

42:                                               ; preds = %24
  %43 = load %struct.sun4i_usb_phy_data*, %struct.sun4i_usb_phy_data** %6, align 8
  %44 = getelementptr inbounds %struct.sun4i_usb_phy_data, %struct.sun4i_usb_phy_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %47 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.phy*, %struct.phy** %52, align 8
  store %struct.phy* %53, %struct.phy** %3, align 8
  br label %54

54:                                               ; preds = %42, %38, %20
  %55 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %55
}

declare dso_local %struct.sun4i_usb_phy_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
