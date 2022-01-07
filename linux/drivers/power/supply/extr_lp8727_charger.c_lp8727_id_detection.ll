; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_id_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_id_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8727_chg = type { i32, i32*, %struct.lp8727_platform_data* }
%struct.lp8727_platform_data = type { i32*, i32* }

@LP8727_ID_NONE = common dso_local global i32 0, align 4
@LP8727_SW_DM1_HiZ = common dso_local global i32 0, align 4
@LP8727_SW_DP2_HiZ = common dso_local global i32 0, align 4
@LP8727_ID_TA = common dso_local global i32 0, align 4
@LP8727_ID_DEDICATED_CHG = common dso_local global i32 0, align 4
@LP8727_ID_USB_CHG = common dso_local global i32 0, align 4
@LP8727_SW_DM1_DM = common dso_local global i32 0, align 4
@LP8727_SW_DP2_DP = common dso_local global i32 0, align 4
@LP8727_ID_USB_DS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lp8727_chg*, i32, i32)* @lp8727_id_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lp8727_id_detection(%struct.lp8727_chg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lp8727_chg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp8727_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lp8727_chg* %0, %struct.lp8727_chg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %11 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %10, i32 0, i32 2
  %12 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %11, align 8
  store %struct.lp8727_platform_data* %12, %struct.lp8727_platform_data** %7, align 8
  %13 = load i32, i32* @LP8727_ID_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @LP8727_SW_DM1_HiZ, align 4
  %15 = load i32, i32* @LP8727_SW_DP2_HiZ, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %79 [
    i32 5, label %18
    i32 11, label %31
  ]

18:                                               ; preds = %3
  %19 = load i32, i32* @LP8727_ID_TA, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %21 = icmp ne %struct.lp8727_platform_data* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %24 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32* [ %25, %22 ], [ null, %26 ]
  %29 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %30 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  br label %83

31:                                               ; preds = %3
  %32 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %33 = call i32 @lp8727_is_dedicated_charger(%struct.lp8727_chg* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %37 = icmp ne %struct.lp8727_platform_data* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32* [ %41, %38 ], [ null, %42 ]
  %45 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %46 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @LP8727_ID_DEDICATED_CHG, align 4
  store i32 %47, i32* %8, align 4
  br label %78

48:                                               ; preds = %31
  %49 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %50 = call i32 @lp8727_is_usb_charger(%struct.lp8727_chg* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %54 = icmp ne %struct.lp8727_platform_data* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.lp8727_platform_data*, %struct.lp8727_platform_data** %7, align 8
  %57 = getelementptr inbounds %struct.lp8727_platform_data, %struct.lp8727_platform_data* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32* [ %58, %55 ], [ null, %59 ]
  %62 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %63 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %62, i32 0, i32 1
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* @LP8727_ID_USB_CHG, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* @LP8727_SW_DM1_DM, align 4
  %66 = load i32, i32* @LP8727_SW_DP2_DP, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %9, align 4
  br label %77

68:                                               ; preds = %48
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @LP8727_ID_USB_DS, align 4
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* @LP8727_SW_DM1_DM, align 4
  %74 = load i32, i32* @LP8727_SW_DP2_DP, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %43
  br label %83

79:                                               ; preds = %3
  %80 = load i32, i32* @LP8727_ID_NONE, align 4
  store i32 %80, i32* %8, align 4
  %81 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %82 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %79, %78, %27
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %86 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.lp8727_chg*, %struct.lp8727_chg** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @lp8727_ctrl_switch(%struct.lp8727_chg* %87, i32 %88)
  ret void
}

declare dso_local i32 @lp8727_is_dedicated_charger(%struct.lp8727_chg*) #1

declare dso_local i32 @lp8727_is_usb_charger(%struct.lp8727_chg*) #1

declare dso_local i32 @lp8727_ctrl_switch(%struct.lp8727_chg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
