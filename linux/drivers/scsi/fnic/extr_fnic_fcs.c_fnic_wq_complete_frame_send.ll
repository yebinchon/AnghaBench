; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_wq_complete_frame_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_wq_complete_frame_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { i32 }
%struct.cq_desc = type { i32 }
%struct.vnic_wq_buf = type { %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.fc_frame = type { i32 }
%struct.fnic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, %struct.cq_desc*, %struct.vnic_wq_buf*, i8*)* @fnic_wq_complete_frame_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fnic_wq_complete_frame_send(%struct.vnic_wq* %0, %struct.cq_desc* %1, %struct.vnic_wq_buf* %2, i8* %3) #0 {
  %5 = alloca %struct.vnic_wq*, align 8
  %6 = alloca %struct.cq_desc*, align 8
  %7 = alloca %struct.vnic_wq_buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.fc_frame*, align 8
  %11 = alloca %struct.fnic*, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %5, align 8
  store %struct.cq_desc* %1, %struct.cq_desc** %6, align 8
  store %struct.vnic_wq_buf* %2, %struct.vnic_wq_buf** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %13 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = bitcast %struct.sk_buff* %15 to %struct.fc_frame*
  store %struct.fc_frame* %16, %struct.fc_frame** %10, align 8
  %17 = load %struct.vnic_wq*, %struct.vnic_wq** %5, align 8
  %18 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fnic* @vnic_dev_priv(i32 %19)
  store %struct.fnic* %20, %struct.fnic** %11, align 8
  %21 = load %struct.fnic*, %struct.fnic** %11, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %26 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %29 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_single(i32* %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.fc_frame*, %struct.fc_frame** %10, align 8
  %34 = call i32 @fp_skb(%struct.fc_frame* %33)
  %35 = call i32 @dev_kfree_skb_irq(i32 %34)
  %36 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %7, align 8
  %37 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %36, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %37, align 8
  ret void
}

declare dso_local %struct.fnic* @vnic_dev_priv(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(i32) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
