; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_TRXFF_BNDY = common dso_local global i32 0, align 4
@REG_TDECTRL = common dso_local global i32 0, align 4
@REG_TXPKTBUF_BCNQ_BDNY = common dso_local global i32 0, align 4
@REG_TXPKTBUF_MGQ_BDNY = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@REG_RX_DRVINFO_SZ = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl8723be_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl8723be_llt_table_init(%struct.ieee80211_hw* %0) #0 {
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
  store i32 255, i32* %7, align 4
  store i32 245, i32* %6, align 4
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %12 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 671023104, %13
  %15 = call i32 @rtl_write_dword(%struct.rtl_priv* %11, i32 %12, i32 %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %17 = load i32, i32* @REG_TDECTRL, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i32 %18, i32 %19)
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %22 = load i32, i32* @REG_TXPKTBUF_BCNQ_BDNY, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %21, i32 %22, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = load i32, i32* @REG_TXPKTBUF_MGQ_BDNY, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %26, i32 %27)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 1117, i32 %30)
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = load i32, i32* @REG_PBP, align 4
  %34 = call i32 @rtl_write_byte(%struct.rtl_priv* %32, i32 %33, i32 49)
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %36 = load i32, i32* @REG_RX_DRVINFO_SZ, align 4
  %37 = call i32 @rtl_write_byte(%struct.rtl_priv* %35, i32 %36, i32 4)
  store i16 0, i16* %5, align 2
  br label %38

38:                                               ; preds = %57, %1
  %39 = load i16, i16* %5, align 2
  %40 = zext i16 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i16, i16* %5, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = add nsw i32 %49, 1
  %51 = call i32 @_rtl8723be_llt_write(%struct.ieee80211_hw* %45, i32 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %2, align 4
  br label %109

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56
  %58 = load i16, i16* %5, align 2
  %59 = add i16 %58, 1
  store i16 %59, i16* %5, align 2
  br label %38

60:                                               ; preds = %38
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = call i32 @_rtl8723be_llt_write(%struct.ieee80211_hw* %61, i32 %63, i32 255)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %109

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %5, align 2
  br label %72

72:                                               ; preds = %90, %69
  %73 = load i16, i16* %5, align 2
  %74 = zext i16 %73 to i32
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %72
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = load i16, i16* %5, align 2
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* %5, align 2
  %82 = zext i16 %81 to i32
  %83 = add nsw i32 %82, 1
  %84 = call i32 @_rtl8723be_llt_write(%struct.ieee80211_hw* %78, i32 %80, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %109

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89
  %91 = load i16, i16* %5, align 2
  %92 = add i16 %91, 1
  store i16 %92, i16* %5, align 2
  br label %72

93:                                               ; preds = %72
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @_rtl8723be_llt_write(%struct.ieee80211_hw* %94, i32 %95, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %109

102:                                              ; preds = %93
  %103 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %104 = load i32, i32* @REG_RQPN, align 4
  %105 = call i32 @rtl_write_dword(%struct.rtl_priv* %103, i32 %104, i32 -2132539384)
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %107 = load i32, i32* @REG_RQPN_NPQ, align 4
  %108 = call i32 @rtl_write_byte(%struct.rtl_priv* %106, i32 %107, i32 0)
  store i32 1, i32* %2, align 4
  br label %109

109:                                              ; preds = %102, %100, %87, %67, %54
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl8723be_llt_write(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
