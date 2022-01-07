; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_dpc.c_vnt_receive_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_dpc.c_vnt_receive_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vnt_rx_desc = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.vnt_rd_info* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vnt_rd_info = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Wrong frame size %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_receive_frame(%struct.vnt_private* %0, %struct.vnt_rx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.vnt_rx_desc*, align 8
  %6 = alloca %struct.vnt_rd_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.vnt_rx_desc* %1, %struct.vnt_rx_desc** %5, align 8
  %9 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %10 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %9, i32 0, i32 2
  %11 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %10, align 8
  store %struct.vnt_rd_info* %11, %struct.vnt_rd_info** %6, align 8
  %12 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %13 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %7, align 8
  %15 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.vnt_rd_info*, %struct.vnt_rd_info** %6, align 8
  %20 = getelementptr inbounds %struct.vnt_rd_info, %struct.vnt_rd_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %23 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @dma_unmap_single(i32* %18, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %28 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le16_to_cpu(i32 %30)
  %32 = load %struct.vnt_rx_desc*, %struct.vnt_rx_desc** %5, align 8
  %33 = getelementptr inbounds %struct.vnt_rx_desc, %struct.vnt_rx_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @le16_to_cpu(i32 %35)
  %37 = sub nsw i32 %31, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 2364
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 33
  br i1 %42, label %43, label %52

43:                                               ; preds = %40, %2
  %44 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %45 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %50)
  store i32 1, i32* %3, align 4
  br label %62

52:                                               ; preds = %40
  %53 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @vnt_rx_data(%struct.vnt_private* %53, %struct.sk_buff* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %62

59:                                               ; preds = %52
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %60)
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %58, %43
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @vnt_rx_data(%struct.vnt_private*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
