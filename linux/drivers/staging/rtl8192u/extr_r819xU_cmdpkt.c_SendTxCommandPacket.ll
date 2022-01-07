; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_SendTxCommandPacket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r819xU_cmdpkt.c_SendTxCommandPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, %struct.net_device*)*, i32*, i64, i32 (%struct.net_device*, i64)* }
%struct.sk_buff = type { i64 }
%struct.cb_desc = type { i64, i64, i64, i32 }

@USB_HWDESC_HEADER_LEN = common dso_local global i64 0, align 8
@RT_STATUS_FAILURE = common dso_local global i32 0, align 4
@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8
@TXCMD_QUEUE = common dso_local global i64 0, align 8
@DESC_PACKET_TYPE_NORMAL = common dso_local global i32 0, align 4
@COMP_FIRMWARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"=== NULL packet ======> tx full!\0A\00", align 1
@RT_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SendTxCommandPacket(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.cb_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %11)
  store %struct.r8192_priv* %12, %struct.r8192_priv** %8, align 8
  %13 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add nsw i64 %13, %14
  %16 = add nsw i64 %15, 4
  %17 = call %struct.sk_buff* @dev_alloc_skb(i64 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @RT_STATUS_FAILURE, align 4
  store i32 %21, i32* %4, align 4
  br label %107

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @memcpy(i8* %26, %struct.net_device** %5, i32 8)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = inttoptr i64 %32 to %struct.cb_desc*
  store %struct.cb_desc* %33, %struct.cb_desc** %10, align 8
  %34 = load i64, i64* @TXCMD_QUEUE, align 8
  %35 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %36 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @DESC_PACKET_TYPE_NORMAL, align 4
  %38 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %39 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %41 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %43 = load i64, i64* @USB_HWDESC_HEADER_LEN, align 8
  %44 = call i32 @skb_reserve(%struct.sk_buff* %42, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @skb_put_data(%struct.sk_buff* %45, i8* %46, i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %51 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = load i32 (%struct.net_device*, i64)*, i32 (%struct.net_device*, i64)** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %59 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 %56(%struct.net_device* %57, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %22
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %70 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = call i32 @skb_queue_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75, %63, %22
  %83 = load i32, i32* @COMP_FIRMWARE, align 4
  %84 = call i32 @RT_TRACE(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.cb_desc*, %struct.cb_desc** %10, align 8
  %91 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %95 = call i32 @skb_queue_tail(i32* %93, %struct.sk_buff* %94)
  br label %105

96:                                               ; preds = %75
  %97 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %98 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32 (%struct.sk_buff*, %struct.net_device*)*, i32 (%struct.sk_buff*, %struct.net_device*)** %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = call i32 %101(%struct.sk_buff* %102, %struct.net_device* %103)
  br label %105

105:                                              ; preds = %96, %82
  %106 = load i32, i32* @RT_STATUS_SUCCESS, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %20
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @memcpy(i8*, %struct.net_device**, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
