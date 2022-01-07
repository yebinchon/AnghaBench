; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_rx_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c_zd_rx_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_status = type { i32 }

@ZD_RX_OFDM = common dso_local global i32 0, align 4
@ZD_CCK_RATE_1M = common dso_local global i32 0, align 4
@ZD_CCK_RATE_2M = common dso_local global i32 0, align 4
@ZD_CCK_RATE_5_5M = common dso_local global i32 0, align 4
@ZD_CCK_RATE_11M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_rx_rate(i8* %0, %struct.rx_status* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rx_status*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.rx_status* %1, %struct.rx_status** %4, align 8
  %6 = load %struct.rx_status*, %struct.rx_status** %4, align 8
  %7 = getelementptr inbounds %struct.rx_status, %struct.rx_status* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ZD_RX_OFDM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @zd_rate_from_ofdm_plcp_header(i8* %13)
  store i32 %14, i32* %5, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @zd_cck_plcp_header_signal(i8* %16)
  switch i32 %17, label %26 [
    i32 130, label %18
    i32 129, label %20
    i32 128, label %22
    i32 131, label %24
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* @ZD_CCK_RATE_1M, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %15
  %21 = load i32, i32* @ZD_CCK_RATE_2M, align 4
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load i32, i32* @ZD_CCK_RATE_5_5M, align 4
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ZD_CCK_RATE_11M, align 4
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %24, %22, %20, %18
  br label %28

28:                                               ; preds = %27, %12
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @zd_rate_from_ofdm_plcp_header(i8*) #1

declare dso_local i32 @zd_cck_plcp_header_signal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
