; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_calc_residual.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_calc_residual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, %struct.hardware_scb* }
%struct.hardware_scb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.initiator_status }
%struct.initiator_status = type { i32, i32 }
%struct.ahd_dma_seg = type { i32 }

@SG_STATUS_VALID = common dso_local global i32 0, align 4
@SG_LIST_NULL = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@SG_OVERRUN_RESID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"data overrun detected Tag == 0x%x.\0A\00", align 1
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Bogus resid sgptr value 0x%x\0A\00", align 1
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@AHD_DMA_LAST_SEG = common dso_local global i32 0, align 4
@SCB_SENSE = common dso_local global i32 0, align 4
@AHD_SHOW_MISC = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_calc_residual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_calc_residual(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  %6 = alloca %struct.initiator_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahd_dma_seg*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %11 = load %struct.scb*, %struct.scb** %4, align 8
  %12 = getelementptr inbounds %struct.scb, %struct.scb* %11, i32 0, i32 1
  %13 = load %struct.hardware_scb*, %struct.hardware_scb** %12, align 8
  store %struct.hardware_scb* %13, %struct.hardware_scb** %5, align 8
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %15 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ahd_le32toh(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SG_STATUS_VALID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %138

23:                                               ; preds = %2
  %24 = load i32, i32* @SG_STATUS_VALID, align 4
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
  br label %138

33:                                               ; preds = %23
  %34 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %35 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.initiator_status* %36, %struct.initiator_status** %6, align 8
  %37 = load %struct.initiator_status*, %struct.initiator_status** %6, align 8
  %38 = getelementptr inbounds %struct.initiator_status, %struct.initiator_status* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ahd_le32toh(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @SG_FULL_RESID, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load %struct.scb*, %struct.scb** %4, align 8
  %47 = call i32 @ahd_get_transfer_length(%struct.scb* %46)
  store i32 %47, i32* %9, align 4
  br label %123

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SG_LIST_NULL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %138

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SG_OVERRUN_RESID, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %61 = load %struct.scb*, %struct.scb** %4, align 8
  %62 = call i32 @ahd_print_path(%struct.ahd_softc* %60, %struct.scb* %61)
  %63 = load %struct.scb*, %struct.scb** %4, align 8
  %64 = call i32 @SCB_GET_TAG(%struct.scb* %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 (i8*, i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %69 = load %struct.scb*, %struct.scb** %4, align 8
  %70 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %68, %struct.scb* %69)
  %71 = load %struct.scb*, %struct.scb** %4, align 8
  %72 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  %73 = call i32 @ahd_set_transaction_status(%struct.scb* %71, i32 %72)
  %74 = load %struct.scb*, %struct.scb** %4, align 8
  %75 = call i32 @ahd_freeze_scb(%struct.scb* %74)
  br label %138

76:                                               ; preds = %54
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SG_PTR_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %120

85:                                               ; preds = %76
  %86 = load %struct.initiator_status*, %struct.initiator_status** %6, align 8
  %87 = getelementptr inbounds %struct.initiator_status, %struct.initiator_status* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ahd_le32toh(i32 %88)
  %90 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %91 = and i32 %89, %90
  store i32 %91, i32* %9, align 4
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load %struct.scb*, %struct.scb** %4, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @SG_PTR_MASK, align 4
  %96 = and i32 %94, %95
  %97 = call %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc* %92, %struct.scb* %93, i32 %96)
  store %struct.ahd_dma_seg* %97, %struct.ahd_dma_seg** %10, align 8
  %98 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %99 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %98, i32 -1
  store %struct.ahd_dma_seg* %99, %struct.ahd_dma_seg** %10, align 8
  br label %100

100:                                              ; preds = %108, %85
  %101 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %102 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ahd_le32toh(i32 %103)
  %105 = load i32, i32* @AHD_DMA_LAST_SEG, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %100
  %109 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %110 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %109, i32 1
  store %struct.ahd_dma_seg* %110, %struct.ahd_dma_seg** %10, align 8
  %111 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %10, align 8
  %112 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ahd_le32toh(i32 %113)
  %115 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  br label %100

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %82
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %45
  %124 = load %struct.scb*, %struct.scb** %4, align 8
  %125 = getelementptr inbounds %struct.scb, %struct.scb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SCB_SENSE, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load %struct.scb*, %struct.scb** %4, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @ahd_set_residual(%struct.scb* %131, i32 %132)
  br label %138

134:                                              ; preds = %123
  %135 = load %struct.scb*, %struct.scb** %4, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @ahd_set_sense_residual(%struct.scb* %135, i32 %136)
  br label %138

138:                                              ; preds = %22, %32, %53, %59, %134, %130
  ret void
}

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_get_transfer_length(%struct.scb*) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @printk(i8*, i8*, ...) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local %struct.ahd_dma_seg* @ahd_sg_bus_to_virt(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_set_residual(%struct.scb*, i32) #1

declare dso_local i32 @ahd_set_sense_residual(%struct.scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
