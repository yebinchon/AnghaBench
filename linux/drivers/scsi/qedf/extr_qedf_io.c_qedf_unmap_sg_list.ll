; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_unmap_sg_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_unmap_sg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qedf_ioreq = type { %struct.TYPE_4__*, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i64 }
%struct.scsi_cmnd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedf_ctx*, %struct.qedf_ioreq*)* @qedf_unmap_sg_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedf_unmap_sg_list(%struct.qedf_ctx* %0, %struct.qedf_ioreq* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qedf_ioreq*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.qedf_ioreq* %1, %struct.qedf_ioreq** %4, align 8
  %6 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %7 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %6, i32 0, i32 1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %10 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = icmp ne %struct.scsi_cmnd* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %28 = call i32 @scsi_sglist(%struct.scsi_cmnd* %27)
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dma_unmap_sg(i32* %26, i32 %28, i64 %30, i32 %33)
  %35 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %4, align 8
  %36 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %18, %15, %2
  ret void
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
