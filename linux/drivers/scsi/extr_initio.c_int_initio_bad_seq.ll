; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_bad_seq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_int_initio_bad_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_ctrl_blk = type { i32 }

@HOST_BAD_PHAS = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @int_initio_bad_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_initio_bad_seq(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  %4 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %5 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %6 = call i32 @initio_reset_scsi(%struct.initio_host* %5, i32 10)
  br label %7

7:                                                ; preds = %11, %1
  %8 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %9 = call %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host* %8)
  store %struct.scsi_ctrl_blk* %9, %struct.scsi_ctrl_blk** %3, align 8
  %10 = icmp ne %struct.scsi_ctrl_blk* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i32, i32* @HOST_BAD_PHAS, align 4
  %13 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %16 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %17 = call i32 @initio_append_done_scb(%struct.initio_host* %15, %struct.scsi_ctrl_blk* %16)
  br label %7

18:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %22 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i32, i32* @TCF_SYNC_DONE, align 4
  %27 = load i32, i32* @TCF_WDTR_DONE, align 4
  %28 = or i32 %26, %27
  %29 = xor i32 %28, -1
  %30 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %29
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %19

42:                                               ; preds = %19
  ret i32 -1
}

declare dso_local i32 @initio_reset_scsi(%struct.initio_host*, i32) #1

declare dso_local %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
