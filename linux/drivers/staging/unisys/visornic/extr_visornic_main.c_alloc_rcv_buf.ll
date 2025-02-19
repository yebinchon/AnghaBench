; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_alloc_rcv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_alloc_rcv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@RCVPOST_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net_device*)* @alloc_rcv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_rcv_buf(%struct.net_device* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i32, i32* @RCVPOST_BUF_SIZE, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call %struct.sk_buff* @alloc_skb(i32 %5, i32 %6)
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = icmp ne %struct.sk_buff* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 2
  store %struct.net_device* %12, %struct.net_device** %14, align 8
  %15 = load i32, i32* @RCVPOST_BUF_SIZE, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %2, align 8
  br label %21

21:                                               ; preds = %11, %10
  %22 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %22
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
