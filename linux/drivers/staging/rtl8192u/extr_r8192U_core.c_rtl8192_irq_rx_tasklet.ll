; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_irq_rx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_irq_rx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8192_priv = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct.rtl8192_rx_info = type { i32 }

@COMP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"command in-pipe index(%d)\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown in-pipe index(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8192_priv*)* @rtl8192_irq_rx_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192_irq_rx_tasklet(%struct.r8192_priv* %0) #0 {
  %2 = alloca %struct.r8192_priv*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.rtl8192_rx_info*, align 8
  store %struct.r8192_priv* %0, %struct.r8192_priv** %2, align 8
  br label %5

5:                                                ; preds = %41, %1
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 1
  %8 = call %struct.sk_buff* @skb_dequeue(i32* %7)
  store %struct.sk_buff* %8, %struct.sk_buff** %3, align 8
  %9 = icmp ne %struct.sk_buff* null, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %5
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %14, %struct.rtl8192_rx_info** %4, align 8
  %15 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %4, align 8
  %16 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %33 [
    i32 3, label %18
    i32 9, label %25
  ]

18:                                               ; preds = %10
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %2, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = call i32 @rtl8192_rx_nomal(%struct.sk_buff* %23)
  br label %41

25:                                               ; preds = %10
  %26 = load i32, i32* @COMP_RECV, align 4
  %27 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %4, align 8
  %28 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RT_TRACE(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = call i32 @rtl8192_rx_cmd(%struct.sk_buff* %31)
  br label %41

33:                                               ; preds = %10
  %34 = load i32, i32* @COMP_ERR, align 4
  %35 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %4, align 8
  %36 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @RT_TRACE(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %33, %25, %18
  br label %5

42:                                               ; preds = %5
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rtl8192_rx_nomal(%struct.sk_buff*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32) #1

declare dso_local i32 @rtl8192_rx_cmd(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
