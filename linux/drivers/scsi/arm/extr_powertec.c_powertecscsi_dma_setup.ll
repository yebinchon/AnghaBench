; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_powertec.c_powertecscsi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_powertec.c_powertecscsi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_pointer = type { i32 }
%struct.powertec_info = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@FASCAP_DMA = common dso_local global i32 0, align 4
@fasdma_real_all = common dso_local global i64 0, align 8
@NR_SG = common dso_local global i32 0, align 4
@DMA_OUT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MODE_WRITE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@fasdma_pio = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Scsi_Host*, %struct.scsi_pointer*, i64, i64)* @powertecscsi_dma_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @powertecscsi_dma_setup(%struct.Scsi_Host* %0, %struct.scsi_pointer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.scsi_pointer*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.powertec_info*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %6, align 8
  store %struct.scsi_pointer* %1, %struct.scsi_pointer** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %17 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.powertec_info*
  store %struct.powertec_info* %19, %struct.powertec_info** %10, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = call %struct.device* @scsi_get_device(%struct.Scsi_Host* %20)
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load %struct.powertec_info*, %struct.powertec_info** %10, align 8
  %23 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.powertec_info*, %struct.powertec_info** %10, align 8
  %28 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FASCAP_DMA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @fasdma_real_all, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load %struct.powertec_info*, %struct.powertec_info** %10, align 8
  %41 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load %struct.scsi_pointer*, %struct.scsi_pointer** %7, align 8
  %45 = load i32, i32* @NR_SG, align 4
  %46 = call i32 @copy_SCp_to_sg(i32* %43, %struct.scsi_pointer* %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @DMA_OUT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* @DMA_MODE_WRITE, align 4
  store i32 %52, i32* %15, align 4
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* @DMA_MODE_READ, align 4
  store i32 %55, i32* %15, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.device*, %struct.device** %11, align 8
  %58 = load %struct.powertec_info*, %struct.powertec_info** %10, align 8
  %59 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @dma_map_sg(%struct.device* %57, i32* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @disable_dma(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.powertec_info*, %struct.powertec_info** %10, align 8
  %68 = getelementptr inbounds %struct.powertec_info, %struct.powertec_info* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @set_dma_sg(i32 %66, i32* %69, i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @set_dma_mode(i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @enable_dma(i32 %75)
  %77 = load i64, i64* @fasdma_real_all, align 8
  store i64 %77, i64* %5, align 8
  br label %80

78:                                               ; preds = %35, %4
  %79 = load i64, i64* @fasdma_pio, align 8
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %78, %56
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local %struct.device* @scsi_get_device(%struct.Scsi_Host*) #1

declare dso_local i32 @copy_SCp_to_sg(i32*, %struct.scsi_pointer*, i32) #1

declare dso_local i32 @dma_map_sg(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @set_dma_sg(i32, i32*, i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
