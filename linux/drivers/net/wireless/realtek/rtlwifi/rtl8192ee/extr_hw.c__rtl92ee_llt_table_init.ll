; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_llt_table_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_llt_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@REG_RQPN = common dso_local global i32 0, align 4
@REG_TRXFF_BNDY = common dso_local global i32 0, align 4
@REG_DWBCN0_CTRL = common dso_local global i32 0, align 4
@REG_DWBCN1_CTRL = common dso_local global i32 0, align 4
@REG_BCNQ_BDNY = common dso_local global i32 0, align 4
@REG_BCNQ1_BDNY = common dso_local global i32 0, align 4
@REG_MGQ_BDNY = common dso_local global i32 0, align 4
@REG_PBP = common dso_local global i32 0, align 4
@REG_RX_DRVINFO_SZ = common dso_local global i32 0, align 4
@REG_AUTO_LLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @_rtl92ee_llt_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_llt_table_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 247, i32* %4, align 4
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = load i32, i32* @REG_RQPN, align 4
  %11 = call i32 @rtl_write_dword(%struct.rtl_priv* %9, i32 %10, i32 -2132408312)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %12, i32 %13, i32 %14)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i32, i32* @REG_TRXFF_BNDY, align 4
  %18 = add nsw i32 %17, 2
  %19 = call i32 @rtl_write_word(%struct.rtl_priv* %16, i32 %18, i32 15615)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i32, i32* @REG_DWBCN0_CTRL, align 4
  %22 = add nsw i32 %21, 1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @rtl_write_byte(%struct.rtl_priv* %20, i32 %22, i32 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i32, i32* @REG_DWBCN1_CTRL, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @rtl_write_byte(%struct.rtl_priv* %25, i32 %27, i32 %28)
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = load i32, i32* @REG_BCNQ_BDNY, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rtl_write_byte(%struct.rtl_priv* %30, i32 %31, i32 %32)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i32, i32* @REG_BCNQ1_BDNY, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @rtl_write_byte(%struct.rtl_priv* %34, i32 %35, i32 %36)
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %39 = load i32, i32* @REG_MGQ_BDNY, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @rtl_write_byte(%struct.rtl_priv* %38, i32 %39, i32 %40)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i32 1117, i32 %43)
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = load i32, i32* @REG_PBP, align 4
  %47 = call i32 @rtl_write_byte(%struct.rtl_priv* %45, i32 %46, i32 49)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = load i32, i32* @REG_RX_DRVINFO_SZ, align 4
  %50 = call i32 @rtl_write_byte(%struct.rtl_priv* %48, i32 %49, i32 4)
  %51 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %52 = load i32, i32* @REG_AUTO_LLT, align 4
  %53 = add nsw i32 %52, 2
  %54 = call i32 @rtl_read_byte(%struct.rtl_priv* %51, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @REG_AUTO_LLT, align 4
  %57 = add nsw i32 %56, 2
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @BIT(i32 0)
  %60 = or i32 %58, %59
  %61 = call i32 @rtl_write_byte(%struct.rtl_priv* %55, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %78, %1
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @BIT(i32 0)
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* @REG_AUTO_LLT, align 4
  %70 = add nsw i32 %69, 2
  %71 = call i32 @rtl_read_byte(%struct.rtl_priv* %68, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = call i32 @udelay(i32 10)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 10
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %79

78:                                               ; preds = %67
  br label %62

79:                                               ; preds = %77, %62
  ret i32 1
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
