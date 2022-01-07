; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_TRXFF_BNDY = common dso_local global i64 0, align 8
@MAX_RX_DMA_BUFFER_SIZE = common dso_local global i64 0, align 8
@REG_TDECTRL = common dso_local global i64 0, align 8
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i64 0, align 8
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i64 0, align 8
@REG_PBP = common dso_local global i64 0, align 8
@REG_RX_DRVINFO_SZ = common dso_local global i64 0, align 8
@REG_RQPN = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8821ae_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8821ae_llt_table_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %4, align 8
  store i32 255, i32* %8, align 4
  store i32 247, i32* %6, align 4
  store i32 -2132408312, i32* %7, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %12, i64 %13, i32 %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i64, i64* @REG_TRXFF_BNDY, align 8
  %18 = add nsw i64 %17, 2
  %19 = load i64, i64* @MAX_RX_DMA_BUFFER_SIZE, align 8
  %20 = sub nsw i64 %19, 1
  %21 = call i32 @rtl_write_word(%struct.rtl_priv* %16, i64 %18, i64 %20)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %23 = load i64, i64* @REG_TDECTRL, align 8
  %24 = add nsw i64 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i64 %24, i32 %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %28 = load i64, i64* @REG_TXPKTBUF_BCNQ_BDNY, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %27, i64 %28, i32 %29)
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %32 = load i64, i64* @REG_TXPKTBUF_MGQ_BDNY, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtl_write_byte(%struct.rtl_priv* %31, i64 %32, i32 %33)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %36 = load i64, i64* @REG_PBP, align 8
  %37 = call i32 @rtl_write_byte(%struct.rtl_priv* %35, i64 %36, i32 49)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %39 = load i64, i64* @REG_RX_DRVINFO_SZ, align 8
  %40 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i64 %39, i32 4)
  store i16 0, i16* %5, align 2
  br label %41

41:                                               ; preds = %60, %1
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %49 = load i16, i16* %5, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* %5, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, 1
  %54 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %48, i32 %50, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %113

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59
  %61 = load i16, i16* %5, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %5, align 2
  br label %41

63:                                               ; preds = %41
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %64, i32 %66, i32 255)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  br label %113

72:                                               ; preds = %63
  %73 = load i32, i32* %6, align 4
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %5, align 2
  br label %75

75:                                               ; preds = %93, %72
  %76 = load i16, i16* %5, align 2
  %77 = zext i16 %76 to i32
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %82 = load i16, i16* %5, align 2
  %83 = zext i16 %82 to i32
  %84 = load i16, i16* %5, align 2
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, 1
  %87 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %81, i32 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %2, align 4
  br label %113

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i16, i16* %5, align 2
  %95 = add i16 %94, 1
  store i16 %95, i16* %5, align 2
  br label %75

96:                                               ; preds = %75
  %97 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw* %97, i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %113

105:                                              ; preds = %96
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %107 = load i32, i32* @REG_RQPN, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @rtl_write_dword(%struct.rtl_priv* %106, i32 %107, i32 %108)
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %111 = load i64, i64* @REG_RQPN_NPQ, align 8
  %112 = call i32 @rtl_write_byte(%struct.rtl_priv* %110, i64 %111, i32 0)
  store i32 1, i32* %2, align 4
  br label %113

113:                                              ; preds = %105, %103, %90, %70, %57
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i64) #1

declare dso_local i32 @_rtl8821ae_llt_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
