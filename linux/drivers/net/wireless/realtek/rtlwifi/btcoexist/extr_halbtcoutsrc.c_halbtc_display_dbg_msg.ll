; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_display_dbg_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_halbtc_display_dbg_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.btc_coexist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.seq_file*)* @halbtc_display_dbg_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halbtc_display_dbg_msg(i8* %0, i32 %1, %struct.seq_file* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.btc_coexist*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.seq_file* %2, %struct.seq_file** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.btc_coexist*
  store %struct.btc_coexist* %9, %struct.btc_coexist** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %23 [
    i32 129, label %11
    i32 130, label %15
    i32 128, label %19
  ]

11:                                               ; preds = %3
  %12 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %14 = call i32 @halbtc_display_coex_statistics(%struct.btc_coexist* %12, %struct.seq_file* %13)
  br label %24

15:                                               ; preds = %3
  %16 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = call i32 @halbtc_display_bt_link_info(%struct.btc_coexist* %16, %struct.seq_file* %17)
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.btc_coexist*, %struct.btc_coexist** %7, align 8
  %21 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %22 = call i32 @halbtc_display_wifi_status(%struct.btc_coexist* %20, %struct.seq_file* %21)
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19, %15, %11
  ret void
}

declare dso_local i32 @halbtc_display_coex_statistics(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i32 @halbtc_display_bt_link_info(%struct.btc_coexist*, %struct.seq_file*) #1

declare dso_local i32 @halbtc_display_wifi_status(%struct.btc_coexist*, %struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
