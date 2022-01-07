; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_handle_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fw_c2h_cmd_handle_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtw_c2h_cmd = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.sk_buff*)* @rtw_fw_c2h_cmd_handle_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_fw_c2h_cmd_handle_ext(%struct.rtw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtw_c2h_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.rtw_c2h_cmd* @get_c2h_from_skb(%struct.sk_buff* %7)
  store %struct.rtw_c2h_cmd* %8, %struct.rtw_c2h_cmd** %5, align 8
  %9 = load %struct.rtw_c2h_cmd*, %struct.rtw_c2h_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.rtw_c2h_cmd, %struct.rtw_c2h_cmd* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %19 [
    i32 128, label %15
  ]

15:                                               ; preds = %2
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @rtw_tx_report_handle(%struct.rtw_dev* %16, %struct.sk_buff* %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15
  ret void
}

declare dso_local %struct.rtw_c2h_cmd* @get_c2h_from_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtw_tx_report_handle(%struct.rtw_dev*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
