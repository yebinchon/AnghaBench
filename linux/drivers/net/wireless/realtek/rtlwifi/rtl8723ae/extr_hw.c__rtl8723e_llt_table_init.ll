; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c__rtl8723e_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_CR = common dso_local global i32 0, align 4
@REG_TRXFF_BNDY = common dso_local global i32 0, align 4
@REG_TDECTRL = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i32 0, align 4
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@REG_RX_DRVINFO_SZ = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723e_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723e_llt_table_init(%struct.ieee80211_hw* %0) #0 {
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
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %13 = load i32, i32* @REG_CR, align 4
  %14 = call i32 @rtl_write_byte(%struct.rtl_priv* %12, i32 %13, i32 139)
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %16 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 671023104, %17
  %19 = call i32 @rtl_write_dword(%struct.rtl_priv* %15, i32 %16, i32 %18)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = load i32, i32* @REG_TDECTRL, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 %22, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = load i32, i32* @REG_TXPKTBUF_BCNQ_BDNY, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = load i32, i32* @REG_TXPKTBUF_MGQ_BDNY, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 %30, i32 %31)
  %33 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @rtl_write_byte(%struct.rtl_priv* %33, i32 1117, i32 %34)
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %37 = load i32, i32* @REG_PBP, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 17)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %40 = load i32, i32* @REG_RX_DRVINFO_SZ, align 4
  %41 = call i32 @rtl_write_byte(%struct.rtl_priv* %39, i32 %40, i32 4)
  store i16 0, i16* %5, align 2
  br label %42

42:                                               ; preds = %61, %1
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %50 = load i16, i16* %5, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = add nsw i32 %53, 1
  %55 = call i32 @_rtl8723e_llt_write(%struct.ieee80211_hw* %49, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 1, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %121

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i16, i16* %5, align 2
  %63 = add i16 %62, 1
  store i16 %63, i16* %5, align 2
  br label %42

64:                                               ; preds = %42
  %65 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @_rtl8723e_llt_write(%struct.ieee80211_hw* %65, i32 %67, i32 255)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 1, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %2, align 4
  br label %121

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %5, align 2
  br label %76

76:                                               ; preds = %94, %73
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %83 = load i16, i16* %5, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %5, align 2
  %86 = zext i16 %85 to i32
  %87 = add nsw i32 %86, 1
  %88 = call i32 @_rtl8723e_llt_write(%struct.ieee80211_hw* %82, i32 %84, i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 1, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %2, align 4
  br label %121

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i16, i16* %5, align 2
  %96 = add i16 %95, 1
  store i16 %96, i16* %5, align 2
  br label %76

97:                                               ; preds = %76
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @_rtl8723e_llt_write(%struct.ieee80211_hw* %98, i32 %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 1, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %121

106:                                              ; preds = %97
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %108 = load i32, i32* @REG_CR, align 4
  %109 = call i32 @rtl_write_byte(%struct.rtl_priv* %107, i32 %108, i32 255)
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %111 = load i32, i32* @REG_RQPN, align 4
  %112 = add nsw i32 %111, 3
  %113 = call i32 @rtl_read_byte(%struct.rtl_priv* %110, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %115 = load i32, i32* @REG_RQPN, align 4
  %116 = add nsw i32 %115, 3
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @BIT(i32 7)
  %119 = or i32 %117, %118
  %120 = call i32 @rtl_write_byte(%struct.rtl_priv* %114, i32 %116, i32 %119)
  store i32 1, i32* %2, align 4
  br label %121

121:                                              ; preds = %106, %104, %91, %71, %58
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8723e_llt_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
