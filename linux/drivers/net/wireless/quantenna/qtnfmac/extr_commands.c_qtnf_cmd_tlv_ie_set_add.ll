; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_tlv_ie_set_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_commands.c_qtnf_cmd_tlv_ie_set_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qlink_tlv_ie_set = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@QTN_TLV_ID_IE_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32*, i64)* @qtnf_cmd_tlv_ie_set_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_cmd_tlv_ie_set_add(%struct.sk_buff* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qlink_tlv_ie_set*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 40, %11
  %13 = trunc i64 %12 to i32
  %14 = call i64 @skb_put(%struct.sk_buff* %10, i32 %13)
  %15 = inttoptr i64 %14 to %struct.qlink_tlv_ie_set*
  store %struct.qlink_tlv_ie_set* %15, %struct.qlink_tlv_ie_set** %9, align 8
  %16 = load i64, i64* @QTN_TLV_ID_IE_SET, align 8
  %17 = call i8* @cpu_to_le16(i64 %16)
  %18 = load %struct.qlink_tlv_ie_set*, %struct.qlink_tlv_ie_set** %9, align 8
  %19 = getelementptr inbounds %struct.qlink_tlv_ie_set, %struct.qlink_tlv_ie_set* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i8* %17, i8** %20, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %21, 40
  %23 = sub i64 %22, 16
  %24 = call i8* @cpu_to_le16(i64 %23)
  %25 = load %struct.qlink_tlv_ie_set*, %struct.qlink_tlv_ie_set** %9, align 8
  %26 = getelementptr inbounds %struct.qlink_tlv_ie_set, %struct.qlink_tlv_ie_set* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.qlink_tlv_ie_set*, %struct.qlink_tlv_ie_set** %9, align 8
  %30 = getelementptr inbounds %struct.qlink_tlv_ie_set, %struct.qlink_tlv_ie_set* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qlink_tlv_ie_set*, %struct.qlink_tlv_ie_set** %9, align 8
  %32 = getelementptr inbounds %struct.qlink_tlv_ie_set, %struct.qlink_tlv_ie_set* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.qlink_tlv_ie_set*, %struct.qlink_tlv_ie_set** %9, align 8
  %40 = getelementptr inbounds %struct.qlink_tlv_ie_set, %struct.qlink_tlv_ie_set* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(i32 %41, i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %35, %4
  ret void
}

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
