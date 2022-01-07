; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_seqnum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_tx.c_rtllib_query_seqnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.tx_ts_record = type { i32 }
%struct.ts_common_info = type { i32 }

@TX_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, i32*)* @rtllib_query_seqnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_query_seqnum(%struct.rtllib_device* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtllib_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tx_ts_record*, align 8
  store %struct.rtllib_device* %0, %struct.rtllib_device** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = call i64 @is_multicast_ether_addr(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IsQoSDataFrame(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  store %struct.tx_ts_record* null, %struct.tx_ts_record** %9, align 8
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %5, align 8
  %22 = bitcast %struct.tx_ts_record** %9 to %struct.ts_common_info**
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TX_DIR, align 4
  %28 = call i32 @GetTs(%struct.rtllib_device* %21, %struct.ts_common_info** %22, i32* %23, i32 %26, i32 %27, i32 1)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %44

31:                                               ; preds = %20
  %32 = load %struct.tx_ts_record*, %struct.tx_ts_record** %9, align 8
  %33 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.tx_ts_record*, %struct.tx_ts_record** %9, align 8
  %36 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = srem i32 %38, 4096
  %40 = load %struct.tx_ts_record*, %struct.tx_ts_record** %9, align 8
  %41 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %31, %30, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @IsQoSDataFrame(i32) #1

declare dso_local i32 @GetTs(%struct.rtllib_device*, %struct.ts_common_info**, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
