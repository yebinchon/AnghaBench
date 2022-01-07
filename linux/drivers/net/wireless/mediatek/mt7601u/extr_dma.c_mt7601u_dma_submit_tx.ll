; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_submit_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_dma_submit_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, i32, %struct.mt7601u_tx_queue*, i32* }
%struct.mt7601u_tx_queue = type { i32, i32, i64, %struct.mt7601u_dma_buf_tx* }
%struct.mt7601u_dma_buf_tx = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }
%struct.usb_device = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@mt7601u_complete_tx = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MT7601U_STATE_REMOVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error: TX urb submit failed:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.sk_buff*, i64)* @mt7601u_dma_submit_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_dma_submit_tx(%struct.mt7601u_dev* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7601u_dma_buf_tx*, align 8
  %10 = alloca %struct.mt7601u_tx_queue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %14 = call %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev* %13)
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %17 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_sndbulkpipe(%struct.usb_device* %15, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 4
  %25 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %25, i64 %26
  store %struct.mt7601u_tx_queue* %27, %struct.mt7601u_tx_queue** %10, align 8
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %29 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %33 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %36 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %125

45:                                               ; preds = %3
  %46 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %47 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %46, i32 0, i32 3
  %48 = load %struct.mt7601u_dma_buf_tx*, %struct.mt7601u_dma_buf_tx** %47, align 8
  %49 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %50 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mt7601u_dma_buf_tx, %struct.mt7601u_dma_buf_tx* %48, i64 %51
  store %struct.mt7601u_dma_buf_tx* %52, %struct.mt7601u_dma_buf_tx** %9, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load %struct.mt7601u_dma_buf_tx*, %struct.mt7601u_dma_buf_tx** %9, align 8
  %55 = getelementptr inbounds %struct.mt7601u_dma_buf_tx, %struct.mt7601u_dma_buf_tx* %54, i32 0, i32 1
  store %struct.sk_buff* %53, %struct.sk_buff** %55, align 8
  %56 = load %struct.mt7601u_dma_buf_tx*, %struct.mt7601u_dma_buf_tx** %9, align 8
  %57 = getelementptr inbounds %struct.mt7601u_dma_buf_tx, %struct.mt7601u_dma_buf_tx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @mt7601u_complete_tx, align 4
  %68 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %69 = call i32 @usb_fill_bulk_urb(i32 %58, %struct.usb_device* %59, i32 %60, i32 %63, i32 %66, i32 %67, %struct.mt7601u_tx_queue* %68)
  %70 = load %struct.mt7601u_dma_buf_tx*, %struct.mt7601u_dma_buf_tx** %9, align 8
  %71 = getelementptr inbounds %struct.mt7601u_dma_buf_tx, %struct.mt7601u_dma_buf_tx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %45
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i32, i32* @MT7601U_STATE_REMOVED, align 4
  %84 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %85 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %84, i32 0, i32 3
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  br label %93

87:                                               ; preds = %77
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %89 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %87, %82
  br label %125

94:                                               ; preds = %45
  %95 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %96 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %100 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = urem i64 %98, %102
  %104 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %105 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %107 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %111 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %10, align 8
  %114 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp sge i32 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %94
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %119 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %121)
  %123 = call i32 @ieee80211_stop_queue(i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %117, %94
  br label %125

125:                                              ; preds = %124, %93, %42
  %126 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %127 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %126, i32 0, i32 0
  %128 = load i64, i64* %11, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load i32, i32* %12, align 4
  ret i32 %130
}

declare dso_local %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.usb_device*, i32, i32, i32, i32, %struct.mt7601u_tx_queue*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
