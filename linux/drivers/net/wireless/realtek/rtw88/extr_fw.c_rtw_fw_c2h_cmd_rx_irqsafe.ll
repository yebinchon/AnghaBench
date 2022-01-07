; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_rx_irqsafe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_rx_irqsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.rtw_c2h_cmd = type { i32, i32 }

@RTW_DBG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"recv C2H, id=0x%02x, seq=0x%02x, len=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_fw_c2h_cmd_rx_irqsafe(%struct.rtw_dev* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rtw_c2h_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to %struct.rtw_c2h_cmd*
  store %struct.rtw_c2h_cmd* %14, %struct.rtw_c2h_cmd** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = sub nsw i64 %17, %18
  %20 = sub nsw i64 %19, 2
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %27 = load i32, i32* @RTW_DBG_FW, align 4
  %28 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @rtw_dbg(%struct.rtw_dev* %26, i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i64 %34)
  %36 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %43 [
    i32 128, label %39
  ]

39:                                               ; preds = %3
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @rtw_coex_info_response(%struct.rtw_dev* %40, %struct.sk_buff* %41)
  br label %59

43:                                               ; preds = %3
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i64*
  store i64 %44, i64* %48, align 8
  %49 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %50 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @skb_queue_tail(i32* %50, %struct.sk_buff* %51)
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %54 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %57 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %56, i32 0, i32 0
  %58 = call i32 @ieee80211_queue_work(i32 %55, i32* %57)
  br label %59

59:                                               ; preds = %43, %39
  ret void
}

declare dso_local i32 @rtw_dbg(%struct.rtw_dev*, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @rtw_coex_info_response(%struct.rtw_dev*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
