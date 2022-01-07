; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_calc_residual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_calc_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.scb = type { i32, %struct.hardware_scb* }
%struct.hardware_scb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.status_pkt }
%struct.status_pkt = type { i32, i32 }
%struct.ahc_dma_seg = type { i32 }

@SG_RESID_VALID = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Bogus resid sgptr value 0x%x\0A\00", align 1
@AHC_SG_LEN_MASK = common dso_local global i32 0, align 4
@AHC_DMA_LAST_SEG = common dso_local global i32 0, align 4
@SCB_SENSE = common dso_local global i32 0, align 4
@AHC_SHOW_MISC = common dso_local global i32 0, align 4
@ahc_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.scb*)* @ahc_calc_residual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_calc_residual(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.status_pkt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahc_dma_seg*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %11 = load %struct.scb*, %struct.scb** %4, align 8
  %12 = getelementptr inbounds %struct.scb, %struct.scb* %11, i32 0, i32 1
  %13 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  store %struct.hardware_scb* %13, %struct.hardware_scb** %5, align 8
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %15 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ahc_le32toh(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SG_RESID_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %114

23:                                               ; preds = %2
  %24 = load i32, i32* @SG_RESID_VALID, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SG_LIST_NULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %114

33:                                               ; preds = %23
  %34 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %35 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.status_pkt* %36, %struct.status_pkt** %6, align 8
  %37 = load %struct.status_pkt*, %struct.status_pkt** %6, align 8
  %38 = getelementptr inbounds %struct.status_pkt, %struct.status_pkt* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ahc_le32toh(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SG_FULL_RESID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = call i32 @ahc_get_transfer_length(%struct.scb* %46)
  store i32 %47, i32* %9, align 4
  br label %99

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SG_LIST_NULL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %114

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SG_PTR_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %97

63:                                               ; preds = %54
  %64 = load %struct.status_pkt*, %struct.status_pkt** %6, align 8
  %65 = getelementptr inbounds %struct.status_pkt, %struct.status_pkt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ahc_le32toh(i32 %66)
  %68 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load %struct.scb*, %struct.scb** %4, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SG_PTR_MASK, align 4
  %73 = and i32 %71, %72
  %74 = call %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb* %70, i32 %73)
  store %struct.ahc_dma_seg* %74, %struct.ahc_dma_seg** %10, align 8
  %75 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %10, align 8
  %76 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %75, i32 -1
  store %struct.ahc_dma_seg* %76, %struct.ahc_dma_seg** %10, align 8
  br label %77

77:                                               ; preds = %85, %63
  %78 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %10, align 8
  %79 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ahc_le32toh(i32 %80)
  %82 = load i32, i32* @AHC_DMA_LAST_SEG, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %10, align 8
  %87 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %86, i32 1
  store %struct.ahc_dma_seg* %87, %struct.ahc_dma_seg** %10, align 8
  %88 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %10, align 8
  %89 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ahc_le32toh(i32 %90)
  %92 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %77

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %60
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %45
  %100 = load %struct.scb*, %struct.scb** %4, align 8
  %101 = getelementptr inbounds %struct.scb, %struct.scb* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SCB_SENSE, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load %struct.scb*, %struct.scb** %4, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ahc_set_residual(%struct.scb* %107, i32 %108)
  br label %114

110:                                              ; preds = %99
  %111 = load %struct.scb*, %struct.scb** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @ahc_set_sense_residual(%struct.scb* %111, i32 %112)
  br label %114

114:                                              ; preds = %22, %32, %53, %110, %106
  ret void
}

declare dso_local i32 @ahc_le32toh(i32) #1

declare dso_local i32 @ahc_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb*, i32) #1

declare dso_local i32 @ahc_set_residual(%struct.scb*, i32) #1

declare dso_local i32 @ahc_set_sense_residual(%struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
