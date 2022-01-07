; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_busy_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_find_busy_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_ctrl_blk = type { i32, i32, %struct.scsi_ctrl_blk* }
%struct.initio_host = type { %struct.scsi_ctrl_blk* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_ctrl_blk* @initio_find_busy_scb(%struct.initio_host* %0, i32 %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_ctrl_blk*, align 8
  %6 = alloca %struct.scsi_ctrl_blk*, align 8
  %7 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %9 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %8, i32 0, i32 0
  %10 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %9, align 8
  store %struct.scsi_ctrl_blk* %10, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %10, %struct.scsi_ctrl_blk** %6, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %13 = icmp ne %struct.scsi_ctrl_blk* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 8
  %19 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %32

27:                                               ; preds = %14
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %28, %struct.scsi_ctrl_blk** %6, align 8
  %29 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %29, i32 0, i32 2
  %31 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %30, align 8
  store %struct.scsi_ctrl_blk* %31, %struct.scsi_ctrl_blk** %5, align 8
  br label %11

32:                                               ; preds = %26, %11
  %33 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  ret %struct.scsi_ctrl_blk* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
