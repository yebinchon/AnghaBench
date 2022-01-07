; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_queue_reserved_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c__rtl92cu_init_queue_reserved_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }

@CHIP_B_PAGE_NUM_PUBQ = common dso_local global i32 0, align 4
@CHIP_A_PAGE_NUM_PUBQ = common dso_local global i32 0, align 4
@TX_TOTAL_PAGE_NUMBER = common dso_local global i32 0, align 4
@TX_SELE_HQ = common dso_local global i32 0, align 4
@TX_SELE_LQ = common dso_local global i32 0, align 4
@TX_SELE_NQ = common dso_local global i32 0, align 4
@REG_RQPN_NPQ = common dso_local global i32 0, align 4
@WMM_CHIP_B_PAGE_NUM_PUBQ = common dso_local global i32 0, align 4
@WMM_CHIP_A_PAGE_NUM_PUBQ = common dso_local global i32 0, align 4
@WMM_CHIP_B_PAGE_NUM_HPQ = common dso_local global i32 0, align 4
@WMM_CHIP_A_PAGE_NUM_HPQ = common dso_local global i32 0, align 4
@WMM_CHIP_B_PAGE_NUM_LPQ = common dso_local global i32 0, align 4
@WMM_CHIP_A_PAGE_NUM_LPQ = common dso_local global i32 0, align 4
@WMM_CHIP_B_PAGE_NUM_NPQ = common dso_local global i32 0, align 4
@LD_RQPN = common dso_local global i32 0, align 4
@REG_RQPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32)* @_rtl92cu_init_queue_reserved_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92cu_init_queue_reserved_page(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %9, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %25)
  store %struct.rtl_hal* %26, %struct.rtl_hal** %10, align 8
  %27 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %28 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @IS_NORMAL_CHIP(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %94, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @CHIP_B_PAGE_NUM_PUBQ, align 4
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @CHIP_A_PAGE_NUM_PUBQ, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* @TX_TOTAL_PAGE_NUMBER, align 4
  %44 = load i32, i32* %16, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %19, align 4
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %12, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = srem i32 %49, %50
  store i32 %51, i32* %21, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @TX_SELE_HQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %20, align 4
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @TX_SELE_LQ, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i32, i32* %21, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %71, %68, %65
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @TX_SELE_NQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @_NPQ(i32 %86)
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %18, align 4
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %90 = load i32, i32* @REG_RQPN_NPQ, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @rtl_write_byte(%struct.rtl_priv* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %75
  br label %149

94:                                               ; preds = %4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @WMM_CHIP_B_PAGE_NUM_PUBQ, align 4
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @WMM_CHIP_A_PAGE_NUM_PUBQ, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @TX_SELE_HQ, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @WMM_CHIP_B_PAGE_NUM_HPQ, align 4
  br label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @WMM_CHIP_A_PAGE_NUM_HPQ, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %114, %101
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* @TX_SELE_LQ, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @WMM_CHIP_B_PAGE_NUM_LPQ, align 4
  br label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @WMM_CHIP_A_PAGE_NUM_LPQ, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %128, %116
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @TX_SELE_NQ, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i32, i32* @WMM_CHIP_B_PAGE_NUM_NPQ, align 4
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @_NPQ(i32 %141)
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %18, align 4
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %145 = load i32, i32* @REG_RQPN_NPQ, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 @rtl_write_byte(%struct.rtl_priv* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %140, %130
  br label %149

149:                                              ; preds = %148, %93
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @_HPQ(i32 %150)
  %152 = load i32, i32* %14, align 4
  %153 = call i32 @_LPQ(i32 %152)
  %154 = or i32 %151, %153
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @_PUBQ(i32 %155)
  %157 = or i32 %154, %156
  %158 = load i32, i32* @LD_RQPN, align 4
  %159 = or i32 %157, %158
  store i32 %159, i32* %17, align 4
  %160 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %161 = load i32, i32* @REG_RQPN, align 4
  %162 = load i32, i32* %17, align 4
  %163 = call i32 @rtl_write_dword(%struct.rtl_priv* %160, i32 %161, i32 %162)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @IS_NORMAL_CHIP(i32) #1

declare dso_local i64 @_NPQ(i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_HPQ(i32) #1

declare dso_local i32 @_LPQ(i32) #1

declare dso_local i32 @_PUBQ(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
