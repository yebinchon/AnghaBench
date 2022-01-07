; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_is_tx_desc_closed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_is_tx_desc_closed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i64 }
%struct.rtl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@rtl92ee_is_tx_desc_closed.stop_report_cnt = internal global i64 0, align 8
@BEACON_QUEUE = common dso_local global i64 0, align 8
@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92ee_is_tx_desc_closed(%struct.ieee80211_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl8192_tx_ring*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_pci* @rtl_pcidev(i32 %17)
  store %struct.rtl_pci* %18, %struct.rtl_pci** %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %22 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %21, i32 0, i32 0
  %23 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %23, i64 %24
  store %struct.rtl8192_tx_ring* %25, %struct.rtl8192_tx_ring** %12, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @get_desc_addr_fr_q_idx(i64 %27)
  %29 = call i32 @rtl_read_dword(%struct.rtl_priv* %26, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 4095
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %13, align 8
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %34, 4095
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %39 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %41 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %12, align 8
  %44 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %3
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %59

58:                                               ; preds = %53, %49
  store i32 1, i32* %11, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %82

60:                                               ; preds = %3
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  br label %74

73:                                               ; preds = %68, %64
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %81

75:                                               ; preds = %60
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %11, align 4
  br label %80

80:                                               ; preds = %79, %75
  br label %81

81:                                               ; preds = %80, %74
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @BEACON_QUEUE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %82
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %87
  %94 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %95 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93, %87
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %93
  %102 = load i64, i64* %5, align 8
  %103 = load i64, i64* @BEACON_QUEUE, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @rtl92ee_is_tx_desc_closed.stop_report_cnt, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* @rtl92ee_is_tx_desc_closed.stop_report_cnt, align 8
  br label %112

111:                                              ; preds = %105
  store i64 0, i64* @rtl92ee_is_tx_desc_closed.stop_report_cnt, align 8
  br label %112

112:                                              ; preds = %111, %108
  br label %113

113:                                              ; preds = %112, %101
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @get_desc_addr_fr_q_idx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
