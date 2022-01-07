; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_enable_fw_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c__rtl92c_enable_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i64 }

@HARDWARE_TYPE_RTL8192CU = common dso_local global i64 0, align 8
@REG_MCUFWDL = common dso_local global i64 0, align 8
@MCUFWDL_EN = common dso_local global i32 0, align 4
@HARDWARE_TYPE_RTL8192CE = common dso_local global i64 0, align 8
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32)* @_rtl92c_enable_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92c_enable_fw_download(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %12)
  store %struct.rtl_hal* %13, %struct.rtl_hal** %6, align 8
  %14 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %15 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HARDWARE_TYPE_RTL8192CU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = load i64, i64* @REG_MCUFWDL, align 8
  %22 = call i32 @rtl_read_dword(%struct.rtl_priv* %20, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* @MCUFWDL_EN, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @MCUFWDL_EN, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %36 = load i64, i64* @REG_MCUFWDL, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @rtl_write_dword(%struct.rtl_priv* %35, i64 %36, i32 %37)
  br label %92

39:                                               ; preds = %2
  %40 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HARDWARE_TYPE_RTL8192CE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %50 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @rtl_read_byte(%struct.rtl_priv* %49, i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %54 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %55 = add nsw i64 %54, 1
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %56, 4
  %58 = call i32 @rtl_write_byte(%struct.rtl_priv* %53, i64 %55, i32 %57)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %60 = load i64, i64* @REG_MCUFWDL, align 8
  %61 = call i32 @rtl_read_byte(%struct.rtl_priv* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %63 = load i64, i64* @REG_MCUFWDL, align 8
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, 1
  %66 = call i32 @rtl_write_byte(%struct.rtl_priv* %62, i64 %63, i32 %65)
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %68 = load i64, i64* @REG_MCUFWDL, align 8
  %69 = add nsw i64 %68, 2
  %70 = call i32 @rtl_read_byte(%struct.rtl_priv* %67, i64 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %72 = load i64, i64* @REG_MCUFWDL, align 8
  %73 = add nsw i64 %72, 2
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 247
  %76 = call i32 @rtl_write_byte(%struct.rtl_priv* %71, i64 %73, i32 %75)
  br label %90

77:                                               ; preds = %45
  %78 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %79 = load i64, i64* @REG_MCUFWDL, align 8
  %80 = call i32 @rtl_read_byte(%struct.rtl_priv* %78, i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %82 = load i64, i64* @REG_MCUFWDL, align 8
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, 254
  %85 = call i32 @rtl_write_byte(%struct.rtl_priv* %81, i64 %82, i32 %84)
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %87 = load i64, i64* @REG_MCUFWDL, align 8
  %88 = add nsw i64 %87, 1
  %89 = call i32 @rtl_write_byte(%struct.rtl_priv* %86, i64 %88, i32 0)
  br label %90

90:                                               ; preds = %77, %48
  br label %91

91:                                               ; preds = %90, %39
  br label %92

92:                                               ; preds = %91, %34
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
