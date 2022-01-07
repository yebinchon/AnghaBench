; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_fill_tx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_tx.c_rtw_tx_fill_tx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_tx_pkt_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_tx_fill_tx_desc(%struct.rtw_tx_pkt_info* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtw_tx_pkt_info*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  store %struct.rtw_tx_pkt_info* %0, %struct.rtw_tx_pkt_info** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %11, i32 0, i32 20
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @SET_TX_DESC_TXPKTSIZE(i32* %10, i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SET_TX_DESC_OFFSET(i32* %15, i32 %18)
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %22 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %21, i32 0, i32 18
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SET_TX_DESC_PKT_OFFSET(i32* %20, i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %27 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %26, i32 0, i32 17
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SET_TX_DESC_QSEL(i32* %25, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %32 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SET_TX_DESC_BMC(i32* %30, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %37 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %36, i32 0, i32 15
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SET_TX_DESC_RATE_ID(i32* %35, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %42 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %41, i32 0, i32 14
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SET_TX_DESC_DATARATE(i32* %40, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %47 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SET_TX_DESC_DISDATAFB(i32* %45, i32 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SET_TX_DESC_USE_RATE(i32* %50, i32 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %57 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %56, i32 0, i32 11
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SET_TX_DESC_SEC_TYPE(i32* %55, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %62 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %61, i32 0, i32 10
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @SET_TX_DESC_DATA_BW(i32* %60, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %67 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SET_TX_DESC_SW_SEQ(i32* %65, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %72 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @SET_TX_DESC_MAX_AGG_NUM(i32* %70, i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %77 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SET_TX_DESC_AMPDU_DENSITY(i32* %75, i32 %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %82 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SET_TX_DESC_DATA_STBC(i32* %80, i32 %83)
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %87 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @SET_TX_DESC_DATA_LDPC(i32* %85, i32 %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %92 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SET_TX_DESC_AGG_EN(i32* %90, i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %97 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @SET_TX_DESC_LS(i32* %95, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %102 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @SET_TX_DESC_DATA_SHORT(i32* %100, i32 %103)
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %107 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SET_TX_DESC_SPE_RPT(i32* %105, i32 %108)
  %110 = load i32*, i32** %5, align 8
  %111 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %3, align 8
  %112 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @SET_TX_DESC_SW_DEFINE(i32* %110, i32 %113)
  ret void
}

declare dso_local i32 @SET_TX_DESC_TXPKTSIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_QSEL(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_BMC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RATE_ID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATARATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DISDATAFB(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_USE_RATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEC_TYPE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_BW(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SW_SEQ(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_MAX_AGG_NUM(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_AMPDU_DENSITY(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_STBC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_LDPC(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_AGG_EN(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LS(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_DATA_SHORT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SPE_RPT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SW_DEFINE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
