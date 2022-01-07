; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_async_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_port100.c_port100_send_async_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port100 = type { %struct.port100_cmd* }
%struct.port100_cmd = type { i32, i32, i32 (%struct.port100.0*, i32, %struct.sk_buff*)*, %struct.sk_buff*, %struct.sk_buff* }
%struct.port100.0 = type opaque
%struct.sk_buff = type { i64, i32 }

@PORT100_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PORT100_FRAME_TAIL_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port100*)* @port100_send_async_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port100_send_async_complete(%struct.port100* %0) #0 {
  %2 = alloca %struct.port100*, align 8
  %3 = alloca %struct.port100_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.port100* %0, %struct.port100** %2, align 8
  %7 = load %struct.port100*, %struct.port100** %2, align 8
  %8 = getelementptr inbounds %struct.port100, %struct.port100* %7, i32 0, i32 0
  %9 = load %struct.port100_cmd*, %struct.port100_cmd** %8, align 8
  store %struct.port100_cmd* %9, %struct.port100_cmd** %3, align 8
  %10 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %11 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %14 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %13, i32 0, i32 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %17 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %16, i32 0, i32 3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i32 @dev_kfree_skb(%struct.sk_buff* %19)
  %21 = load %struct.port100*, %struct.port100** %2, align 8
  %22 = getelementptr inbounds %struct.port100, %struct.port100* %21, i32 0, i32 0
  store %struct.port100_cmd* null, %struct.port100_cmd** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %1
  %26 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %26, i32 0, i32 2
  %28 = load i32 (%struct.port100.0*, i32, %struct.sk_buff*)*, i32 (%struct.port100.0*, i32, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.port100*, %struct.port100** %2, align 8
  %30 = bitcast %struct.port100* %29 to %struct.port100.0*
  %31 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %32 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.sk_buff* @ERR_PTR(i32 %34)
  %36 = call i32 %28(%struct.port100.0* %30, i32 %33, %struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @dev_kfree_skb(%struct.sk_buff* %37)
  br label %66

39:                                               ; preds = %1
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @port100_rx_frame_size(i32 %43)
  %45 = call i32 @skb_put(%struct.sk_buff* %40, i32 %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @PORT100_FRAME_HEADER_LEN, align 4
  %48 = call i32 @skb_pull(%struct.sk_buff* %46, i32 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PORT100_FRAME_TAIL_LEN, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @skb_trim(%struct.sk_buff* %49, i64 %54)
  %56 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %57 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %56, i32 0, i32 2
  %58 = load i32 (%struct.port100.0*, i32, %struct.sk_buff*)*, i32 (%struct.port100.0*, i32, %struct.sk_buff*)** %57, align 8
  %59 = load %struct.port100*, %struct.port100** %2, align 8
  %60 = bitcast %struct.port100* %59 to %struct.port100.0*
  %61 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %62 = getelementptr inbounds %struct.port100_cmd, %struct.port100_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 %58(%struct.port100.0* %60, i32 %63, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %39, %25
  %67 = load %struct.port100_cmd*, %struct.port100_cmd** %3, align 8
  %68 = call i32 @kfree(%struct.port100_cmd* %67)
  ret void
}

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @port100_rx_frame_size(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree(%struct.port100_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
