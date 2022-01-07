; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@REG_TRXFF_BNDY = common dso_local global i32 0, align 4
@REG_TDECTRL = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i32 0, align 4
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@REG_RX_DRVINFO_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl88ee_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl88ee_llt_table_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %4, align 8
  store i32 175, i32* %7, align 4
  store i32 171, i32* %6, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = load i32, i32* @REG_RQPN_NPQ, align 4
  %13 = call i32 @rtl_write_byte(%struct.rtl_priv* %11, i32 %12, i32 1)
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = load i32, i32* @REG_RQPN, align 4
  %16 = call i32 @rtl_write_dword(%struct.rtl_priv* %14, i32 %15, i32 -2139943639)
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 637468672, %19
  %21 = call i32 @rtl_write_dword(%struct.rtl_priv* %17, i32 %18, i32 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @REG_TDECTRL, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 %24, i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i32, i32* @REG_TXPKTBUF_BCNQ_BDNY, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %27, i32 %28, i32 %29)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = load i32, i32* @REG_TXPKTBUF_MGQ_BDNY, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i32 %32, i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @rtl_write_byte(%struct.rtl_priv* %35, i32 1117, i32 %36)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %39 = load i32, i32* @REG_PBP, align 4
  %40 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i32 %39, i32 17)
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %42 = load i32, i32* @REG_RX_DRVINFO_SZ, align 4
  %43 = call i32 @rtl_write_byte(%struct.rtl_priv* %41, i32 %42, i32 4)
  store i16 0, i16* %5, align 2
  br label %44

44:                                               ; preds = %63, %1
  %45 = load i16, i16* %5, align 2
  %46 = zext i16 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* %5, align 2
  %55 = zext i16 %54 to i32
  %56 = add nsw i32 %55, 1
  %57 = call i32 @_rtl88ee_llt_write(%struct.ieee80211_hw* %51, i32 %53, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 1, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %109

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i16, i16* %5, align 2
  %65 = add i16 %64, 1
  store i16 %65, i16* %5, align 2
  br label %44

66:                                               ; preds = %44
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %68, 1
  %70 = call i32 @_rtl88ee_llt_write(%struct.ieee80211_hw* %67, i32 %69, i32 255)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 1, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %109

75:                                               ; preds = %66
  %76 = load i32, i32* %6, align 4
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %5, align 2
  br label %78

78:                                               ; preds = %96, %75
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* %5, align 2
  %88 = zext i16 %87 to i32
  %89 = add nsw i32 %88, 1
  %90 = call i32 @_rtl88ee_llt_write(%struct.ieee80211_hw* %84, i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 1, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %109

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95
  %97 = load i16, i16* %5, align 2
  %98 = add i16 %97, 1
  store i16 %98, i16* %5, align 2
  br label %78

99:                                               ; preds = %78
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @_rtl88ee_llt_write(%struct.ieee80211_hw* %100, i32 %101, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 1, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %2, align 4
  br label %109

108:                                              ; preds = %99
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %106, %93, %73, %60
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl88ee_llt_write(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
