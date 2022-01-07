; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rx_pkt_stat = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unused phy status page (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*)* @query_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_phy_status(%struct.rtw_dev* %0, i32* %1, %struct.rtw_rx_pkt_stat* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.rtw_rx_pkt_stat* %2, %struct.rtw_rx_pkt_stat** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 15
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %22 [
    i32 0, label %12
    i32 1, label %17
  ]

12:                                               ; preds = %3
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %16 = call i32 @query_phy_status_page0(%struct.rtw_dev* %13, i32* %14, %struct.rtw_rx_pkt_stat* %15)
  br label %26

17:                                               ; preds = %3
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %21 = call i32 @query_phy_status_page1(%struct.rtw_dev* %18, i32* %19, %struct.rtw_rx_pkt_stat* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @rtw_warn(%struct.rtw_dev* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17, %12
  ret void
}

declare dso_local i32 @query_phy_status_page0(%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*) #1

declare dso_local i32 @query_phy_status_page1(%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*) #1

declare dso_local i32 @rtw_warn(%struct.rtw_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
