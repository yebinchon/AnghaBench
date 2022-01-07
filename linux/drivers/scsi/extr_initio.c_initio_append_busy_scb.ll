; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_append_busy_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_append_busy_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_ctrl_blk = type { i64, %struct.scsi_ctrl_blk*, i32, i64 }

@TCF_BUSY = common dso_local global i32 0, align 4
@SCB_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.initio_host*, %struct.scsi_ctrl_blk*)* @initio_append_busy_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initio_append_busy_scb(%struct.initio_host* %0, %struct.scsi_ctrl_blk* %1) #0 {
  %3 = alloca %struct.initio_host*, align 8
  %4 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %3, align 8
  store %struct.scsi_ctrl_blk* %1, %struct.scsi_ctrl_blk** %4, align 8
  %5 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %6 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %11 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  br label %31

19:                                               ; preds = %2
  %20 = load i32, i32* @TCF_BUSY, align 4
  %21 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %25 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %20
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %19, %9
  %32 = load i32, i32* @SCB_BUSY, align 4
  %33 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %36 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %35, i32 0, i32 1
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %36, align 8
  %37 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %38 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %37, i32 0, i32 0
  %39 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %38, align 8
  %40 = icmp ne %struct.scsi_ctrl_blk* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %31
  %42 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %43 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %44 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %43, i32 0, i32 0
  %45 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %44, align 8
  %46 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %45, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %42, %struct.scsi_ctrl_blk** %46, align 8
  %47 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %48 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %49 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %48, i32 0, i32 0
  store %struct.scsi_ctrl_blk* %47, %struct.scsi_ctrl_blk** %49, align 8
  br label %57

50:                                               ; preds = %31
  %51 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %52 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %53 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %52, i32 0, i32 1
  store %struct.scsi_ctrl_blk* %51, %struct.scsi_ctrl_blk** %53, align 8
  %54 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %4, align 8
  %55 = load %struct.initio_host*, %struct.initio_host** %3, align 8
  %56 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %55, i32 0, i32 0
  store %struct.scsi_ctrl_blk* %54, %struct.scsi_ctrl_blk** %56, align 8
  br label %57

57:                                               ; preds = %50, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
