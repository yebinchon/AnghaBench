; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_iscsi_unmap_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_iscsi_unmap_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_cmd = type { %struct.TYPE_2__, %struct.scsi_cmnd* }
%struct.TYPE_2__ = type { i64 }
%struct.scsi_cmnd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_iscsi_unmap_sg_list(%struct.bnx2i_cmd* %0) #0 {
  %2 = alloca %struct.bnx2i_cmd*, align 8
  %3 = alloca %struct.scsi_cmnd*, align 8
  store %struct.bnx2i_cmd* %0, %struct.bnx2i_cmd** %2, align 8
  %4 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %4, i32 0, i32 1
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  store %struct.scsi_cmnd* %6, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %14 = icmp ne %struct.scsi_cmnd* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %17 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %16)
  %18 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %2, align 8
  %19 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %12, %1
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
