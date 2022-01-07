; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_fmn_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_net_fmn_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_fmn_msg = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.net_device = type { i32 }
%struct.xlr_net_priv = type { i32 }
%struct.xlr_adapter = type { %struct.net_device** }

@MAC_SKB_BACK_PTR_SIZE = common dso_local global i8* null, align 8
@BYTE_OFFSET = common dso_local global i32 0, align 4
@MAC_CRC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.nlm_fmn_msg*, i8*)* @xlr_net_fmn_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlr_net_fmn_handler(i32 %0, i32 %1, i32 %2, i32 %3, %struct.nlm_fmn_msg* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nlm_fmn_msg*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.xlr_net_priv*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.xlr_adapter*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nlm_fmn_msg* %4, %struct.nlm_fmn_msg** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %14, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = bitcast i8* %21 to %struct.xlr_adapter*
  store %struct.xlr_adapter* %22, %struct.xlr_adapter** %20, align 8
  %23 = load %struct.nlm_fmn_msg*, %struct.nlm_fmn_msg** %11, align 8
  %24 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 40
  %27 = and i32 %26, 16383
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %18, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %6
  %32 = load %struct.nlm_fmn_msg*, %struct.nlm_fmn_msg** %11, align 8
  %33 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, 1099511627775
  %37 = trunc i64 %36 to i32
  %38 = call i8* @bus_to_virt(i32 %37)
  store i8* %38, i8** %19, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = load i8*, i8** @MAC_SKB_BACK_PTR_SIZE, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %19, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = bitcast i8* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.sk_buff*
  store %struct.sk_buff* %48, %struct.sk_buff** %13, align 8
  %49 = load i8*, i8** %19, align 8
  %50 = bitcast i8* %49 to %struct.sk_buff*
  %51 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %50)
  br label %123

52:                                               ; preds = %6
  %53 = load %struct.nlm_fmn_msg*, %struct.nlm_fmn_msg** %11, align 8
  %54 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = and i64 %56, 1099511627744
  %58 = trunc i64 %57 to i32
  %59 = call i8* @bus_to_virt(i32 %58)
  store i8* %59, i8** %19, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i32, i32* @BYTE_OFFSET, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = load i64, i64* @MAC_CRC_LEN, align 8
  %65 = sub i64 %63, %64
  store i64 %65, i64* %18, align 8
  %66 = load %struct.nlm_fmn_msg*, %struct.nlm_fmn_msg** %11, align 8
  %67 = getelementptr inbounds %struct.nlm_fmn_msg, %struct.nlm_fmn_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 15
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %17, align 8
  %71 = load i8*, i8** %19, align 8
  %72 = load i8*, i8** @MAC_SKB_BACK_PTR_SIZE, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %19, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.sk_buff*
  store %struct.sk_buff* %80, %struct.sk_buff** %13, align 8
  %81 = load %struct.xlr_adapter*, %struct.xlr_adapter** %20, align 8
  %82 = getelementptr inbounds %struct.xlr_adapter, %struct.xlr_adapter* %81, i32 0, i32 0
  %83 = load %struct.net_device**, %struct.net_device*** %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds %struct.net_device*, %struct.net_device** %83, i64 %84
  %86 = load %struct.net_device*, %struct.net_device** %85, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  store %struct.net_device* %86, %struct.net_device** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  %92 = icmp ne %struct.net_device* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %52
  br label %123

94:                                               ; preds = %52
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load %struct.net_device*, %struct.net_device** %96, align 8
  store %struct.net_device* %97, %struct.net_device** %15, align 8
  %98 = load %struct.net_device*, %struct.net_device** %15, align 8
  %99 = call %struct.xlr_net_priv* @netdev_priv(%struct.net_device* %98)
  store %struct.xlr_net_priv* %99, %struct.xlr_net_priv** %16, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = load i32, i32* @BYTE_OFFSET, align 4
  %102 = call i32 @skb_reserve(%struct.sk_buff* %100, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = load i64, i64* %18, align 8
  %105 = call i32 @skb_put(%struct.sk_buff* %103, i64 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load %struct.net_device*, %struct.net_device** %108, align 8
  %110 = call i32 @eth_type_trans(%struct.sk_buff* %106, %struct.net_device* %109)
  %111 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %114 = call i32 @netif_rx(%struct.sk_buff* %113)
  %115 = call i8* (...) @xlr_alloc_skb()
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %94
  %119 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %16, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @send_to_rfr_fifo(%struct.xlr_net_priv* %119, i8* %120)
  br label %122

122:                                              ; preds = %118, %94
  br label %123

123:                                              ; preds = %93, %122, %31
  ret void
}

declare dso_local i8* @bus_to_virt(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.xlr_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i8* @xlr_alloc_skb(...) #1

declare dso_local i32 @send_to_rfr_fifo(%struct.xlr_net_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
