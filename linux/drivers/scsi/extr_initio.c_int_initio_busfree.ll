; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_busfree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_busfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i64, i32*, %struct.scsi_ctrl_blk* }
%struct.scsi_ctrl_blk = type { i32, i32 }

@SCB_SELECT = common dso_local global i32 0, align 4
@HOST_SEL_TOUT = common dso_local global i32 0, align 4
@HOST_BUS_FREE = common dso_local global i32 0, align 4
@TSC_FLUSH_FIFO = common dso_local global i32 0, align 4
@TUL_SCtrl0 = common dso_local global i64 0, align 8
@TSC_INITDEFAULT = common dso_local global i32 0, align 4
@TUL_SConfig = common dso_local global i64 0, align 8
@TSC_HW_RESELECT = common dso_local global i32 0, align 4
@TUL_SCtrl1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @int_initio_busfree(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %4 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %5 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %4, i32 0, i32 2
  %6 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %5, align 8
  store %struct.scsi_ctrl_blk* %6, %struct.scsi_ctrl_blk** %3, align 8
  %7 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %8 = icmp ne %struct.scsi_ctrl_blk* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SCB_SELECT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %18 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %19 = call i32 @initio_unlink_pend_scb(%struct.initio_host* %17, %struct.scsi_ctrl_blk* %18)
  %20 = load i32, i32* @HOST_SEL_TOUT, align 4
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %24 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %25 = call i32 @initio_append_done_scb(%struct.initio_host* %23, %struct.scsi_ctrl_blk* %24)
  br label %36

26:                                               ; preds = %9
  %27 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %28 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %29 = call i32 @initio_unlink_busy_scb(%struct.initio_host* %27, %struct.scsi_ctrl_blk* %28)
  %30 = load i32, i32* @HOST_BUS_FREE, align 4
  %31 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %32 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %34 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %35 = call i32 @initio_append_done_scb(%struct.initio_host* %33, %struct.scsi_ctrl_blk* %34)
  br label %36

36:                                               ; preds = %26, %16
  %37 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %38 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %37, i32 0, i32 2
  store %struct.scsi_ctrl_blk* null, %struct.scsi_ctrl_blk** %38, align 8
  %39 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %40 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %1
  %42 = load i32, i32* @TSC_FLUSH_FIFO, align 4
  %43 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %44 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TUL_SCtrl0, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 %42, i64 %47)
  %49 = load i32, i32* @TSC_INITDEFAULT, align 4
  %50 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %51 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TUL_SConfig, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 %49, i64 %54)
  %56 = load i32, i32* @TSC_HW_RESELECT, align 4
  %57 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %58 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @TUL_SCtrl1, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %56, i64 %61)
  ret i32 -1
}

declare dso_local i32 @initio_unlink_pend_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @initio_unlink_busy_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
