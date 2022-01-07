; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SINGLEMAC_SINGLEPHY = common dso_local global i64 0, align 8
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i64 0, align 8
@REG_TRXFF_BNDY = common dso_local global i64 0, align 8
@REG_TDECTRL = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i32 0, align 4
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@REG_RX_DRVINFO_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92de_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92de_llt_table_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %4, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SINGLEMAC_SINGLEPHY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 255, i32* %7, align 4
  store i32 246, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 -2134962903, i32* %9, align 4
  br label %21

20:                                               ; preds = %1
  store i32 127, i32* %7, align 4
  store i32 123, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 -2139815931, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i32, i32* @REG_RQPN_NPQ, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 %23, i32 %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %27 = load i64, i64* @REG_RQPN, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rtl_write_dword(%struct.rtl_priv* %26, i64 %27, i32 %28)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i32 @rtl_read_word(%struct.rtl_priv* %32, i64 %34)
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @rtl_write_dword(%struct.rtl_priv* %30, i64 %31, i32 %38)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %41 = load i32, i32* @REG_TDECTRL, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @rtl_write_byte(%struct.rtl_priv* %40, i32 %42, i32 %43)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %46 = load i32, i32* @REG_TXPKTBUF_BCNQ_BDNY, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @rtl_write_byte(%struct.rtl_priv* %45, i32 %46, i32 %47)
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %50 = load i32, i32* @REG_TXPKTBUF_MGQ_BDNY, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @rtl_write_byte(%struct.rtl_priv* %49, i32 %50, i32 %51)
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @rtl_write_byte(%struct.rtl_priv* %53, i32 1117, i32 %54)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %57 = load i32, i32* @REG_PBP, align 4
  %58 = call i32 @rtl_write_byte(%struct.rtl_priv* %56, i32 %57, i32 17)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %60 = load i32, i32* @REG_RX_DRVINFO_SZ, align 4
  %61 = call i32 @rtl_write_byte(%struct.rtl_priv* %59, i32 %60, i32 4)
  store i16 0, i16* %5, align 2
  br label %62

62:                                               ; preds = %81, %21
  %63 = load i16, i16* %5, align 2
  %64 = zext i16 %63 to i32
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %70 = load i16, i16* %5, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, i16* %5, align 2
  %73 = zext i16 %72 to i32
  %74 = add nsw i32 %73, 1
  %75 = call i32 @_rtl92de_llt_write(%struct.ieee80211_hw* %69, i32 %71, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 1, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %2, align 4
  br label %127

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load i16, i16* %5, align 2
  %83 = add i16 %82, 1
  store i16 %83, i16* %5, align 2
  br label %62

84:                                               ; preds = %62
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sub nsw i32 %86, 1
  %88 = call i32 @_rtl92de_llt_write(%struct.ieee80211_hw* %85, i32 %87, i32 255)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 1, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %127

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %5, align 2
  br label %96

96:                                               ; preds = %114, %93
  %97 = load i16, i16* %5, align 2
  %98 = zext i16 %97 to i32
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %96
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %103 = load i16, i16* %5, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* %5, align 2
  %106 = zext i16 %105 to i32
  %107 = add nsw i32 %106, 1
  %108 = call i32 @_rtl92de_llt_write(%struct.ieee80211_hw* %102, i32 %104, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 1, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %127

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113
  %115 = load i16, i16* %5, align 2
  %116 = add i16 %115, 1
  store i16 %116, i16* %5, align 2
  br label %96

117:                                              ; preds = %96
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @_rtl92de_llt_write(%struct.ieee80211_hw* %118, i32 %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 1, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %127

126:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %124, %111, %91, %78
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_read_word(%struct.rtl_priv*, i64) #1

declare dso_local i32 @_rtl92de_llt_write(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
