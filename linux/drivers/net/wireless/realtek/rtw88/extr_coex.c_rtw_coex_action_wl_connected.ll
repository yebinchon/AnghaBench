; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_action_wl_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_efuse, %struct.rtw_coex }
%struct.rtw_efuse = type { i32 }
%struct.rtw_coex = type { %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i32*, i32* }
%struct.rtw_coex_stat = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw_coex_action_wl_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_action_wl_connected(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_coex*, align 8
  %4 = alloca %struct.rtw_coex_stat*, align 8
  %5 = alloca %struct.rtw_coex_dm*, align 8
  %6 = alloca %struct.rtw_efuse*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 1
  store %struct.rtw_coex* %9, %struct.rtw_coex** %3, align 8
  %10 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %10, i32 0, i32 1
  store %struct.rtw_coex_stat* %11, %struct.rtw_coex_stat** %4, align 8
  %12 = load %struct.rtw_coex*, %struct.rtw_coex** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %12, i32 0, i32 0
  store %struct.rtw_coex_dm* %13, %struct.rtw_coex_dm** %5, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_efuse* %15, %struct.rtw_efuse** %6, align 8
  %16 = load %struct.rtw_efuse*, %struct.rtw_efuse** %6, align 8
  %17 = getelementptr inbounds %struct.rtw_efuse, %struct.rtw_efuse* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %1
  %21 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %22 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %20
  %26 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %27 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @COEX_RSSI_HIGH(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  %34 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %5, align 8
  %35 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @COEX_RSSI_HIGH(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %43 = call i32 @rtw_coex_action_freerun(%struct.rtw_dev* %42)
  br label %85

44:                                               ; preds = %33, %25, %20, %1
  %45 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %46 = call i32 @rtw_coex_algorithm(%struct.rtw_dev* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  switch i32 %47, label %81 [
    i32 132, label %48
    i32 131, label %51
    i32 136, label %54
    i32 129, label %66
    i32 135, label %69
    i32 134, label %72
    i32 128, label %75
    i32 133, label %78
    i32 130, label %82
  ]

48:                                               ; preds = %44
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %50 = call i32 @rtw_coex_action_bt_hfp(%struct.rtw_dev* %49)
  br label %85

51:                                               ; preds = %44
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %53 = call i32 @rtw_coex_action_bt_hid(%struct.rtw_dev* %52)
  br label %85

54:                                               ; preds = %44
  %55 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %4, align 8
  %56 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %61 = call i32 @rtw_coex_action_bt_a2dpsink(%struct.rtw_dev* %60)
  br label %65

62:                                               ; preds = %54
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %64 = call i32 @rtw_coex_action_bt_a2dp(%struct.rtw_dev* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %85

66:                                               ; preds = %44
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %68 = call i32 @rtw_coex_action_bt_pan(%struct.rtw_dev* %67)
  br label %85

69:                                               ; preds = %44
  %70 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %71 = call i32 @rtw_coex_action_bt_a2dp_hid(%struct.rtw_dev* %70)
  br label %85

72:                                               ; preds = %44
  %73 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %74 = call i32 @rtw_coex_action_bt_a2dp_pan(%struct.rtw_dev* %73)
  br label %85

75:                                               ; preds = %44
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %77 = call i32 @rtw_coex_action_bt_pan_hid(%struct.rtw_dev* %76)
  br label %85

78:                                               ; preds = %44
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %80 = call i32 @rtw_coex_action_bt_a2dp_pan_hid(%struct.rtw_dev* %79)
  br label %85

81:                                               ; preds = %44
  br label %82

82:                                               ; preds = %44, %81
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %84 = call i32 @rtw_coex_action_bt_idle(%struct.rtw_dev* %83)
  br label %85

85:                                               ; preds = %41, %82, %78, %75, %72, %69, %66, %65, %51, %48
  ret void
}

declare dso_local i64 @COEX_RSSI_HIGH(i32) #1

declare dso_local i32 @rtw_coex_action_freerun(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_algorithm(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_hfp(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_hid(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_a2dpsink(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_a2dp(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_pan(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_a2dp_hid(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_a2dp_pan(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_pan_hid(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_a2dp_pan_hid(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_action_bt_idle(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
