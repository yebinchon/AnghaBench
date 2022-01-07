; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl8188ee_bt_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl8188ee_bt_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }
%struct.rtl_phy = type { i64 }

@BT_CSR_BC4 = common dso_local global i64 0, align 8
@BT_CSR_BC8 = common dso_local global i64 0, align 8
@REG_GPIO_MUXCFG = common dso_local global i32 0, align 4
@BT_SCO = common dso_local global i64 0, align 8
@REG_BT_COEX_TABLE = common dso_local global i64 0, align 8
@RF_1T1R = common dso_local global i64 0, align 8
@ROFDM0_TRXPATHENABLE = common dso_local global i32 0, align 4
@ROFDM1_TRXPATHENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8188ee_bt_hw_init(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.rtl_phy* %9, %struct.rtl_phy** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %112

15:                                               ; preds = %1
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BT_CSR_BC4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BT_CSR_BC8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %112

29:                                               ; preds = %22, %15
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %37 = load i32, i32* @REG_GPIO_MUXCFG, align 4
  %38 = call i32 @rtl_write_byte(%struct.rtl_priv* %36, i32 %37, i32 160)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = call i32 @rtl_read_byte(%struct.rtl_priv* %40, i32 1277)
  %42 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 0, i32 1)
  %43 = and i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %53

51:                                               ; preds = %39
  %52 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 1, i32 1)
  br label %53

53:                                               ; preds = %51, %50
  %54 = phi i32 [ 0, %50 ], [ %52, %51 ]
  %55 = or i32 %44, %54
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BT_SCO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %65

63:                                               ; preds = %53
  %64 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 2, i32 1)
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 0, %62 ], [ %64, %63 ]
  %67 = or i32 %55, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @rtl_write_byte(%struct.rtl_priv* %68, i32 1277, i32 %69)
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %72 = load i64, i64* @REG_BT_COEX_TABLE, align 8
  %73 = add nsw i64 %72, 4
  %74 = call i32 @rtl_write_dword(%struct.rtl_priv* %71, i64 %73, i32 -1431659862)
  %75 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %76 = load i64, i64* @REG_BT_COEX_TABLE, align 8
  %77 = add nsw i64 %76, 8
  %78 = call i32 @rtl_write_dword(%struct.rtl_priv* %75, i64 %77, i32 -4390848)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i64, i64* @REG_BT_COEX_TABLE, align 8
  %81 = add nsw i64 %80, 12
  %82 = call i32 @rtl_write_dword(%struct.rtl_priv* %79, i64 %81, i32 1073741840)
  %83 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %84 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RF_1T1R, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %111

88:                                               ; preds = %65
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %91 = call i32 @rtl_read_byte(%struct.rtl_priv* %89, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 1, i32 1)
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @ROFDM0_TRXPATHENABLE, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @rtl_write_byte(%struct.rtl_priv* %96, i32 %97, i32 %98)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %101 = load i32, i32* @ROFDM1_TRXPATHENABLE, align 4
  %102 = call i32 @rtl_read_byte(%struct.rtl_priv* %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = call i32 @BIT_OFFSET_LEN_MASK_32(i32 1, i32 1)
  %104 = xor i32 %103, -1
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %5, align 4
  %107 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %108 = load i32, i32* @ROFDM1_TRXPATHENABLE, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @rtl_write_byte(%struct.rtl_priv* %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %88, %65
  br label %112

112:                                              ; preds = %111, %22, %1
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @BIT_OFFSET_LEN_MASK_32(i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
