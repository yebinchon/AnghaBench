; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_send_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key_params = type { i64, i64, i64, i64, i32 }
%struct.sk_buff = type { i64 }
%struct.qlink_cmd_add_key = type { i32, i32, i32, i32 }

@QLINK_CMD_ADD_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QTN_TLV_ID_KEY = common dso_local global i32 0, align 4
@QTN_TLV_ID_SEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtnf_cmd_send_add_key(%struct.qtnf_vif* %0, i32 %1, i32 %2, i32* %3, %struct.key_params* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qtnf_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.key_params*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.qlink_cmd_add_key*, align 8
  %14 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.key_params* %4, %struct.key_params** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %16 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %21 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QLINK_CMD_ADD_KEY, align 4
  %24 = call %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32 %19, i32 %22, i32 %23, i32 16)
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %126

30:                                               ; preds = %5
  %31 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %32 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qtnf_bus_lock(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.qlink_cmd_add_key*
  store %struct.qlink_cmd_add_key* %40, %struct.qlink_cmd_add_key** %13, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %30
  %44 = load %struct.qlink_cmd_add_key*, %struct.qlink_cmd_add_key** %13, align 8
  %45 = getelementptr inbounds %struct.qlink_cmd_add_key, %struct.qlink_cmd_add_key* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @ether_addr_copy(i32 %46, i32* %47)
  br label %54

49:                                               ; preds = %30
  %50 = load %struct.qlink_cmd_add_key*, %struct.qlink_cmd_add_key** %13, align 8
  %51 = getelementptr inbounds %struct.qlink_cmd_add_key, %struct.qlink_cmd_add_key* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @eth_broadcast_addr(i32 %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.key_params*, %struct.key_params** %11, align 8
  %56 = getelementptr inbounds %struct.key_params, %struct.key_params* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.qlink_cmd_add_key*, %struct.qlink_cmd_add_key** %13, align 8
  %60 = getelementptr inbounds %struct.qlink_cmd_add_key, %struct.qlink_cmd_add_key* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.qlink_cmd_add_key*, %struct.qlink_cmd_add_key** %13, align 8
  %63 = getelementptr inbounds %struct.qlink_cmd_add_key, %struct.qlink_cmd_add_key* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.qlink_cmd_add_key*, %struct.qlink_cmd_add_key** %13, align 8
  %66 = getelementptr inbounds %struct.qlink_cmd_add_key, %struct.qlink_cmd_add_key* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.key_params*, %struct.key_params** %11, align 8
  %68 = getelementptr inbounds %struct.key_params, %struct.key_params* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %54
  %72 = load %struct.key_params*, %struct.key_params** %11, align 8
  %73 = getelementptr inbounds %struct.key_params, %struct.key_params* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %78 = load i32, i32* @QTN_TLV_ID_KEY, align 4
  %79 = load %struct.key_params*, %struct.key_params** %11, align 8
  %80 = getelementptr inbounds %struct.key_params, %struct.key_params* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.key_params*, %struct.key_params** %11, align 8
  %83 = getelementptr inbounds %struct.key_params, %struct.key_params* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff* %77, i32 %78, i64 %81, i64 %84)
  br label %86

86:                                               ; preds = %76, %71, %54
  %87 = load %struct.key_params*, %struct.key_params** %11, align 8
  %88 = getelementptr inbounds %struct.key_params, %struct.key_params* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load %struct.key_params*, %struct.key_params** %11, align 8
  %93 = getelementptr inbounds %struct.key_params, %struct.key_params* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = load i32, i32* @QTN_TLV_ID_SEQ, align 4
  %99 = load %struct.key_params*, %struct.key_params** %11, align 8
  %100 = getelementptr inbounds %struct.key_params, %struct.key_params* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.key_params*, %struct.key_params** %11, align 8
  %103 = getelementptr inbounds %struct.key_params, %struct.key_params* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff* %97, i32 %98, i64 %101, i64 %104)
  br label %106

106:                                              ; preds = %96, %91, %86
  %107 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %108 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = call i32 @qtnf_cmd_send(i32 %111, %struct.sk_buff* %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %106
  br label %118

117:                                              ; preds = %106
  br label %118

118:                                              ; preds = %117, %116
  %119 = load %struct.qtnf_vif*, %struct.qtnf_vif** %7, align 8
  %120 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @qtnf_bus_unlock(i32 %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %118, %27
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.sk_buff* @qtnf_cmd_alloc_new_cmdskb(i32, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_lock(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qtnf_cmd_skb_put_tlv_arr(%struct.sk_buff*, i32, i64, i64) #1

declare dso_local i32 @qtnf_cmd_send(i32, %struct.sk_buff*) #1

declare dso_local i32 @qtnf_bus_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
