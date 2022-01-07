; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_write_reg_pairs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_write_reg_pairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt76_reg_pair = type { i64, i64 }
%struct.sk_buff = type { i32 }

@INBAND_PACKET_MAX_LEN = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_RANDOM_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %0, i64 %1, %struct.mt76_reg_pair* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mt76_reg_pair*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.mt76_reg_pair* %2, %struct.mt76_reg_pair** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @INBAND_PACKET_MAX_LEN, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %91

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @alloc_skb(i64 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %39 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %40 = call i32 @skb_reserve(%struct.sk_buff* %38, i64 %39)
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %64, %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %48, i64 %50
  %52 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %47, %53
  %55 = call i32 @skb_put_le32(%struct.sk_buff* %46, i64 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %57 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %57, i64 %59
  %61 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @skb_put_le32(%struct.sk_buff* %56, i64 %62)
  br label %64

64:                                               ; preds = %45
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %41

67:                                               ; preds = %41
  %68 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %70 = load i32, i32* @CMD_RANDOM_WRITE, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @mt7601u_mcu_msg_send(%struct.mt7601u_dev* %68, %struct.sk_buff* %69, i32 %70, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %91

80:                                               ; preds = %67
  %81 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.mt76_reg_pair*, %struct.mt76_reg_pair** %8, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mt76_reg_pair, %struct.mt76_reg_pair* %83, i64 %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @mt7601u_write_reg_pairs(%struct.mt7601u_dev* %81, i64 %82, %struct.mt76_reg_pair* %86, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %80, %78, %34, %19
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put_le32(%struct.sk_buff*, i64) #1

declare dso_local i32 @mt7601u_mcu_msg_send(%struct.mt7601u_dev*, %struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
