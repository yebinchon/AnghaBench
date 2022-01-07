; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipw_packet_received_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipw_packet_received_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@PPP_ALLSTATIONS = common dso_local global i8 0, align 1
@PPP_UI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (i8*, i32)* @ipw_packet_received_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ipw_packet_received_skb(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ugt i32 %7, 2
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @PPP_ALLSTATIONS, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @PPP_UI, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %26, 2
  store i32 %27, i32* %5, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 2
  store i8* %29, i8** %4, align 8
  br label %30

30:                                               ; preds = %25, %17, %9, %2
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 4
  %33 = call %struct.sk_buff* @dev_alloc_skb(i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %45

37:                                               ; preds = %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = call i32 @skb_reserve(%struct.sk_buff* %38, i32 2)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @skb_put_data(%struct.sk_buff* %40, i8* %41, i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %3, align 8
  br label %45

45:                                               ; preds = %37, %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %46
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
