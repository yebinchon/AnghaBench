; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_burst_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_burst_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.sk_buff = type { i32 }

@INBAND_PACKET_MAX_LEN = common dso_local global i32 0, align 4
@MT_DMA_HDR_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MT_MCU_MEMMAP_WLAN = common dso_local global i64 0, align 8
@CMD_BURST_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_burst_write_regs(%struct.mt7601u_dev* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @INBAND_PACKET_MAX_LEN, align 4
  %16 = sdiv i32 %15, 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %90

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %29 = add nsw i64 %27, %28
  %30 = add nsw i64 %29, 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.sk_buff* @alloc_skb(i64 %30, i32 %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %11, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %90

38:                                               ; preds = %21
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = load i64, i64* @MT_DMA_HDR_LEN, align 8
  %41 = call i32 @skb_reserve(%struct.sk_buff* %39, i64 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %43 = load i64, i64* @MT_MCU_MEMMAP_WLAN, align 8
  %44 = load i64, i64* %7, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @skb_put_le32(%struct.sk_buff* %42, i64 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %59, %38
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @skb_put_le32(%struct.sk_buff* %52, i64 %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %65 = load i32, i32* @CMD_BURST_WRITE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @mt7601u_mcu_msg_send(%struct.mt7601u_dev* %63, %struct.sk_buff* %64, i32 %65, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %5, align 4
  br label %90

75:                                               ; preds = %62
  %76 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = load i64*, i64** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @mt7601u_burst_write_regs(%struct.mt7601u_dev* %76, i64 %81, i64* %85, i32 %88)
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %75, %73, %35, %20
  %91 = load i32, i32* %5, align 4
  ret i32 %91
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
