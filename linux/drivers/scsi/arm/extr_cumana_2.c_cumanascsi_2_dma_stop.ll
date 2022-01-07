; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_cumana_2.c_cumanascsi_2_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_pointer = type { i32 }
%struct.cumanascsi2_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NO_DMA = common dso_local global i64 0, align 8
@ALATCH_DIS_DMA = common dso_local global i32 0, align 4
@CUMANASCSI2_ALATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*, %struct.scsi_pointer*)* @cumanascsi_2_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cumanascsi_2_dma_stop(%struct.Scsi_Host* %0, %struct.scsi_pointer* %1) #0 {
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.scsi_pointer*, align 8
  %5 = alloca %struct.cumanascsi2_info*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %3, align 8
  store %struct.scsi_pointer* %1, %struct.scsi_pointer** %4, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %7 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.cumanascsi2_info*
  store %struct.cumanascsi2_info* %9, %struct.cumanascsi2_info** %5, align 8
  %10 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %11 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NO_DMA, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @ALATCH_DIS_DMA, align 4
  %19 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %20 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CUMANASCSI2_ALATCH, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 %18, i64 %23)
  %25 = load %struct.cumanascsi2_info*, %struct.cumanascsi2_info** %5, align 8
  %26 = getelementptr inbounds %struct.cumanascsi2_info, %struct.cumanascsi2_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @disable_dma(i64 %29)
  br label %31

31:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @disable_dma(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
