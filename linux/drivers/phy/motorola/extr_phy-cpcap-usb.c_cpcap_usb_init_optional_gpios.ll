; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_optional_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_optional_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_phy_ddata = type { i32**, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no mode change GPIO%i: %li\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpcap_phy_ddata*)* @cpcap_usb_init_optional_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap_usb_init_optional_gpios(%struct.cpcap_phy_ddata* %0) #0 {
  %2 = alloca %struct.cpcap_phy_ddata*, align 8
  %3 = alloca i32, align 4
  store %struct.cpcap_phy_ddata* %0, %struct.cpcap_phy_ddata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %50, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %53

7:                                                ; preds = %4
  %8 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %9 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %13 = call i32* @devm_gpiod_get_index(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %15 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  store i32* %13, i32** %19, align 8
  %20 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %21 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %7
  %30 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %31 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %35 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  %42 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %41)
  %43 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %2, align 8
  %44 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %29, %7
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %4

53:                                               ; preds = %4
  ret void
}

declare dso_local i32* @devm_gpiod_get_index(i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
