; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @qeth_l2_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.qeth_card*, %struct.qeth_card** %10, align 8
  store %struct.qeth_card* %11, %struct.qeth_card** %8, align 8
  %12 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %13 = call i64 @IS_IQD(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @qeth_get_ether_cast_type(%struct.sk_buff* %18)
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @qeth_iqd_select_queue(%struct.net_device* %16, %struct.sk_buff* %17, i32 %19, %struct.net_device* %20)
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %3
  %23 = load %struct.qeth_card*, %struct.qeth_card** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @qeth_get_priority_queue(%struct.qeth_card* %23, %struct.sk_buff* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_iqd_select_queue(%struct.net_device*, %struct.sk_buff*, i32, %struct.net_device*) #1

declare dso_local i32 @qeth_get_ether_cast_type(%struct.sk_buff*) #1

declare dso_local i32 @qeth_get_priority_queue(%struct.qeth_card*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
