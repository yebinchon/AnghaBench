; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_free_rq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_fcs.c_fnic_free_rq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_rq = type { i32 }
%struct.vnic_rq_buf = type { %struct.fc_frame*, i32, i32 }
%struct.fc_frame = type { i32 }
%struct.fnic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fnic_free_rq_buf(%struct.vnic_rq* %0, %struct.vnic_rq_buf* %1) #0 {
  %3 = alloca %struct.vnic_rq*, align 8
  %4 = alloca %struct.vnic_rq_buf*, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca %struct.fnic*, align 8
  store %struct.vnic_rq* %0, %struct.vnic_rq** %3, align 8
  store %struct.vnic_rq_buf* %1, %struct.vnic_rq_buf** %4, align 8
  %7 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %8 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %7, i32 0, i32 0
  %9 = load %struct.fc_frame*, %struct.fc_frame** %8, align 8
  store %struct.fc_frame* %9, %struct.fc_frame** %5, align 8
  %10 = load %struct.vnic_rq*, %struct.vnic_rq** %3, align 8
  %11 = getelementptr inbounds %struct.vnic_rq, %struct.vnic_rq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fnic* @vnic_dev_priv(i32 %12)
  store %struct.fnic* %13, %struct.fnic** %6, align 8
  %14 = load %struct.fnic*, %struct.fnic** %6, align 8
  %15 = getelementptr inbounds %struct.fnic, %struct.fnic* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %19 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %22 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_unmap_single(i32* %17, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %27 = call i32 @fp_skb(%struct.fc_frame* %26)
  %28 = call i32 @dev_kfree_skb(i32 %27)
  %29 = load %struct.vnic_rq_buf*, %struct.vnic_rq_buf** %4, align 8
  %30 = getelementptr inbounds %struct.vnic_rq_buf, %struct.vnic_rq_buf* %29, i32 0, i32 0
  store %struct.fc_frame* null, %struct.fc_frame** %30, align 8
  ret void
}

declare dso_local %struct.fnic* @vnic_dev_priv(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
