; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_free_td1_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_device_free_td1_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.vnt_tx_desc*, %struct.TYPE_2__ }
%struct.vnt_tx_desc = type { %struct.vnt_td_info* }
%struct.vnt_td_info = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @device_free_td1_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_free_td1_ring(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_tx_desc*, align 8
  %5 = alloca %struct.vnt_td_info*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %9 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 0
  %18 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %18, i64 %20
  store %struct.vnt_tx_desc* %21, %struct.vnt_tx_desc** %4, align 8
  %22 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %4, align 8
  %23 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %22, i32 0, i32 0
  %24 = load %struct.vnt_td_info*, %struct.vnt_td_info** %23, align 8
  store %struct.vnt_td_info* %24, %struct.vnt_td_info** %5, align 8
  %25 = load %struct.vnt_td_info*, %struct.vnt_td_info** %5, align 8
  %26 = getelementptr inbounds %struct.vnt_td_info, %struct.vnt_td_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_kfree_skb(i32 %27)
  %29 = load %struct.vnt_tx_desc*, %struct.vnt_tx_desc** %4, align 8
  %30 = getelementptr inbounds %struct.vnt_tx_desc, %struct.vnt_tx_desc* %29, i32 0, i32 0
  %31 = load %struct.vnt_td_info*, %struct.vnt_td_info** %30, align 8
  %32 = call i32 @kfree(%struct.vnt_td_info* %31)
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @kfree(%struct.vnt_td_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
