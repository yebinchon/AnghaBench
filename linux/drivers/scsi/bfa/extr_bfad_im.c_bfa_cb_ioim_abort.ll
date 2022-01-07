; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_im.c_bfa_cb_ioim_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_ioim_s = type { i32 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.bfad_s = type { i32 }

@DID_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cb_ioim_abort(i8* %0, %struct.bfad_ioim_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfad_ioim_s*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfad_ioim_s* %1, %struct.bfad_ioim_s** %4, align 8
  %7 = load %struct.bfad_ioim_s*, %struct.bfad_ioim_s** %4, align 8
  %8 = bitcast %struct.bfad_ioim_s* %7 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %8, %struct.scsi_cmnd** %5, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.bfad_s*
  store %struct.bfad_s* %10, %struct.bfad_s** %6, align 8
  %11 = load i32, i32* @DID_ERROR, align 4
  %12 = shl i32 %11, 16
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %23 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bfa_trc(%struct.bfad_s* %25, i32 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  ret void
}

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
