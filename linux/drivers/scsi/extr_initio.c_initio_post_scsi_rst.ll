; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_post_scsi_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_initio.c_initio_post_scsi_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initio_host = type { i32, %struct.target_control*, i64*, i32, i64, i32*, i32* }
%struct.target_control = type { i32, i32, i64 }
%struct.scsi_ctrl_blk = type { i32 }

@HOST_BAD_PHAS = common dso_local global i32 0, align 4
@TCF_SYNC_DONE = common dso_local global i32 0, align 4
@TCF_WDTR_DONE = common dso_local global i32 0, align 4
@TCF_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.initio_host*)* @initio_post_scsi_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @initio_post_scsi_rst(%struct.initio_host* %0) #0 {
  %2 = alloca %struct.initio_host*, align 8
  %3 = alloca %struct.scsi_ctrl_blk*, align 8
  %4 = alloca %struct.target_control*, align 8
  %5 = alloca i32, align 4
  store %struct.initio_host* %0, %struct.initio_host** %2, align 8
  %6 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %7 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %6, i32 0, i32 6
  store i32* null, i32** %7, align 8
  %8 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %9 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %8, i32 0, i32 5
  store i32* null, i32** %9, align 8
  %10 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %11 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %16, %1
  %13 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %14 = call %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host* %13)
  store %struct.scsi_ctrl_blk* %14, %struct.scsi_ctrl_blk** %3, align 8
  %15 = icmp ne %struct.scsi_ctrl_blk* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* @HOST_BAD_PHAS, align 4
  %18 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_ctrl_blk, %struct.scsi_ctrl_blk* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %21 = load %struct.scsi_ctrl_blk*, %struct.scsi_ctrl_blk** %3, align 8
  %22 = call i32 @initio_append_done_scb(%struct.initio_host* %20, %struct.scsi_ctrl_blk* %21)
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %25 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %24, i32 0, i32 1
  %26 = load %struct.target_control*, %struct.target_control** %25, align 8
  %27 = getelementptr inbounds %struct.target_control, %struct.target_control* %26, i64 0
  store %struct.target_control* %27, %struct.target_control** %4, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %65, %23
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %31 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %28
  %35 = load i32, i32* @TCF_SYNC_DONE, align 4
  %36 = load i32, i32* @TCF_WDTR_DONE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.target_control*, %struct.target_control** %4, align 8
  %40 = getelementptr inbounds %struct.target_control, %struct.target_control* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.target_control*, %struct.target_control** %4, align 8
  %44 = getelementptr inbounds %struct.target_control, %struct.target_control* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %46 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.target_control*, %struct.target_control** %4, align 8
  %49 = getelementptr inbounds %struct.target_control, %struct.target_control* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %51 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = load i32, i32* @TCF_BUSY, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.initio_host*, %struct.initio_host** %2, align 8
  %57 = getelementptr inbounds %struct.initio_host, %struct.initio_host* %56, i32 0, i32 1
  %58 = load %struct.target_control*, %struct.target_control** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.target_control, %struct.target_control* %58, i64 %60
  %62 = getelementptr inbounds %struct.target_control, %struct.target_control* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %55
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %34
  %66 = load %struct.target_control*, %struct.target_control** %4, align 8
  %67 = getelementptr inbounds %struct.target_control, %struct.target_control* %66, i32 1
  store %struct.target_control* %67, %struct.target_control** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %28

70:                                               ; preds = %28
  ret i32 -1
}

declare dso_local %struct.scsi_ctrl_blk* @initio_pop_busy_scb(%struct.initio_host*) #1

declare dso_local i32 @initio_append_done_scb(%struct.initio_host*, %struct.scsi_ctrl_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
