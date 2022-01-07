; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_good_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_good_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_ioim_s = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, %struct.bfad_itnim_data_s*, i32* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_STATUS_GOOD = common dso_local global i32 0, align 4
@bfa_lun_queue_depth = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_ioim_good_comp(i8* %0, %struct.bfad_ioim_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfad_ioim_s*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.bfad_itnim_data_s*, align 8
  %7 = alloca %struct.bfad_itnim_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %4, align 8
  %8 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %4, align 8
  %9 = bitcast %struct.bfad_ioim_s* %8 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %9, %struct.scsi_cmnd** %5, align 8
  %10 = load i32, i32* @DID_OK, align 4
  %11 = shl i32 %10, 16
  %12 = load i32, i32* @SCSI_STATUS_GOOD, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 3
  store i32* null, i32** %27, align 8
  %28 = load i64, i64* @bfa_lun_queue_depth, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %28, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %25
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %37 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %39, align 8
  store %struct.bfad_itnim_data_s* %40, %struct.bfad_itnim_data_s** %6, align 8
  %41 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %6, align 8
  %42 = icmp ne %struct.bfad_itnim_data_s* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %35
  %44 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %6, align 8
  %45 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %44, i32 0, i32 0
  %46 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %45, align 8
  store %struct.bfad_itnim_s* %46, %struct.bfad_itnim_s** %7, align 8
  %47 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %48 = icmp ne %struct.bfad_itnim_s* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %7, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s* %50, %struct.TYPE_2__* %53)
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %59, align 8
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %62 = call i32 %60(%struct.scsi_cmnd* %61)
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfad_ramp_up_qdepth(%struct.bfad_itnim_s*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
