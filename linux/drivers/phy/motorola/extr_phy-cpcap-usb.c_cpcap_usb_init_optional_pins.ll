; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_optional_pins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_optional_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_phy_ddata = type { i32*, i32*, i32, i32*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"default pins not configured: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ulpi pins not configured\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"utmi pins not configured\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"uart pins not configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_phy_ddata*)* @cpcap_usb_init_optional_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_init_optional_pins(%struct.cpcap_phy_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_phy_ddata*, align 8
  store %struct.cpcap_phy_ddata* %0, %struct.cpcap_phy_ddata** %3, align 8
  %4 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %5 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32* @devm_pinctrl_get(i32 %6)
  %8 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %9 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %8, i32 0, i32 1
  store i32* %7, i32** %9, align 8
  %10 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %11 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @IS_ERR(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %17 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %20 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  %23 = call i32 (i32, i8*, ...) @dev_info(i32 %18, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %25 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  store i32 0, i32* %2, align 4
  br label %100

26:                                               ; preds = %1
  %27 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %28 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @pinctrl_lookup_state(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %33 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %35 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %41 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @dev_info(i32 %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %45 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %44, i32 0, i32 4
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %26
  %47 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %48 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i8* @pinctrl_lookup_state(i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %51 = bitcast i8* %50 to i32*
  %52 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %53 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %55 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @IS_ERR(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %61 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, ...) @dev_info(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %64 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %65 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %59, %46
  %67 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %68 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @pinctrl_lookup_state(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %73 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %75 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %66
  %80 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %81 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %84 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %85 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %79, %66
  %87 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %88 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %93 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %96 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @pinctrl_select_state(i32* %94, i32* %97)
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %91, %15
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32* @devm_pinctrl_get(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @pinctrl_lookup_state(i32*, i8*) #1

declare dso_local i32 @pinctrl_select_state(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
