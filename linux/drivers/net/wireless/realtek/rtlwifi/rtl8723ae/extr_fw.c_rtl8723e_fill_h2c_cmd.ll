; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c_rtl8723e_fill_h2c_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_fw.c_rtl8723e_fill_h2c_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_hal = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"rtl8723ae: error H2C cmd because of Fw download fail!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rtl_hal*, align 8
  %10 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call i32 @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(i32 %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %9, align 8
  %14 = load %struct.rtl_hal*, %struct.rtl_hal** %9, align 8
  %15 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %32

20:                                               ; preds = %4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %22 = call i32 @memset(i32* %21, i32 0, i32 8)
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i32* %23, i32* %24, i32 %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = bitcast [2 x i32]* %10 to i32*
  %31 = call i32 @_rtl8723e_fill_h2c_command(%struct.ieee80211_hw* %27, i32 %28, i32 %29, i32* %30)
  br label %32

32:                                               ; preds = %20, %18
  ret void
}

declare dso_local %struct.rtl_hal* @rtl_hal(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @_rtl8723e_fill_h2c_command(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
