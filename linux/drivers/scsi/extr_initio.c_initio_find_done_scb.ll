; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_done_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_done_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_ctrl_blk = type { %struct.scsi_ctrl_blk* }
%struct.initio_host = type { i32*, %struct.scsi_ctrl_blk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_ctrl_blk* @initio_find_done_scb(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %4 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %5 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %4, i32 0, i32 1
  %6 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %6, %struct.scsi_ctrl_blk** %3, align 8
  %7 = icmp ne %struct.scsi_ctrl_blk* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %9, i32 0, i32 0
  %11 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %10, align 8
  %12 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %13 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %12, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %11, %struct.scsi_ctrl_blk** %13, align 8
  %14 = icmp eq %struct.scsi_ctrl_blk* %11, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %17 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %19, i32 0, i32 0
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %20, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  ret %struct.scsi_ctrl_blk* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
