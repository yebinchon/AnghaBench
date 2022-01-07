; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reinitialize_dataptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_reinitialize_dataptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32 }
%struct.ahd_dma64_seg = type { i32, i32 }
%struct.ahd_dma_seg = type { i32, i32 }

@AHD_MODE_DFF0_MSK = common dso_local global i32 0, align 4
@AHD_MODE_DFF1_MSK = common dso_local global i32 0, align 4
@DFFSXFRCTL = common dso_local global i64 0, align 8
@CLRCHN = common dso_local global i32 0, align 4
@MDFFSTAT = common dso_local global i64 0, align 8
@FIFOFREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ahd_reinitialize_dataptrs: Forcing FIFO free.\0A\00", align 1
@RSTCHN = common dso_local global i32 0, align 4
@CLRSHCNT = common dso_local global i32 0, align 4
@AHD_MODE_SCSI = common dso_local global i32 0, align 4
@DFFSTAT = common dso_local global i64 0, align 8
@CURRFIFO_1 = common dso_local global i32 0, align 4
@CURRFIFO_0 = common dso_local global i32 0, align 4
@SCB_RESIDUAL_SGPTR = common dso_local global i32 0, align 4
@SG_PTR_MASK = common dso_local global i32 0, align 4
@SCB_RESIDUAL_DATACNT = common dso_local global i64 0, align 8
@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_SG_LEN_MASK = common dso_local global i32 0, align 4
@HADDR = common dso_local global i64 0, align 8
@HCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*)* @ahd_reinitialize_dataptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_reinitialize_dataptrs(%struct.ahd_softc* %0) #0 {
  %2 = alloca %struct.ahd_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ahd_dma64_seg*, align 8
  %11 = alloca %struct.ahd_dma_seg*, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %2, align 8
  %12 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %13 = load i32, i32* @AHD_MODE_DFF0_MSK, align 4
  %14 = load i32, i32* @AHD_MODE_DFF1_MSK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @AHD_MODE_DFF0_MSK, align 4
  %17 = load i32, i32* @AHD_MODE_DFF1_MSK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @AHD_ASSERT_MODES(%struct.ahd_softc* %12, i32 %15, i32 %18)
  %20 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %21 = call i32 @ahd_get_scbptr(%struct.ahd_softc* %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %22, i32 %23)
  store %struct.scb* %24, %struct.scb** %3, align 8
  %25 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %26 = load i64, i64* @DFFSXFRCTL, align 8
  %27 = load i32, i32* @CLRCHN, align 4
  %28 = call i32 @ahd_outb(%struct.ahd_softc* %25, i64 %26, i32 %27)
  store i32 1000, i32* %6, align 4
  br label %29

29:                                               ; preds = %43, %1
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %35 = load i64, i64* @MDFFSTAT, align 8
  %36 = call i32 @ahd_inb(%struct.ahd_softc* %34, i64 %35)
  %37 = load i32, i32* @FIFOFREE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %29
  %42 = phi i1 [ false, %29 ], [ %40, %33 ]
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = call i32 @ahd_delay(i32 100)
  br label %29

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %50 = load %struct.scb*, %struct.scb** %3, align 8
  %51 = call i32 @ahd_print_path(%struct.ahd_softc* %49, %struct.scb* %50)
  %52 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %54 = load i64, i64* @DFFSXFRCTL, align 8
  %55 = load i32, i32* @RSTCHN, align 4
  %56 = load i32, i32* @CLRSHCNT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ahd_outb(%struct.ahd_softc* %53, i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %45
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %61 = call i32 @ahd_save_modes(%struct.ahd_softc* %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %63 = load i32, i32* @AHD_MODE_SCSI, align 4
  %64 = load i32, i32* @AHD_MODE_SCSI, align 4
  %65 = call i32 @ahd_set_modes(%struct.ahd_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %67 = load i64, i64* @DFFSTAT, align 8
  %68 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %69 = load i64, i64* @DFFSTAT, align 8
  %70 = call i32 @ahd_inb(%struct.ahd_softc* %68, i64 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 17
  br i1 %72, label %73, label %75

73:                                               ; preds = %59
  %74 = load i32, i32* @CURRFIFO_1, align 4
  br label %77

75:                                               ; preds = %59
  %76 = load i32, i32* @CURRFIFO_0, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = or i32 %70, %78
  %80 = call i32 @ahd_outb(%struct.ahd_softc* %66, i64 %67, i32 %79)
  %81 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %82 = load i32, i32* @SCB_RESIDUAL_SGPTR, align 4
  %83 = call i32 @ahd_inl_scbram(%struct.ahd_softc* %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* @SG_PTR_MASK, align 4
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %88 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %89 = add nsw i64 %88, 2
  %90 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %87, i64 %89)
  %91 = shl i32 %90, 16
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %93 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %92, i64 %94)
  %96 = shl i32 %95, 8
  %97 = or i32 %91, %96
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %99 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %100 = call i32 @ahd_inb_scbram(%struct.ahd_softc* %98, i64 %99)
  %101 = or i32 %97, %100
  store i32 %101, i32* %8, align 4
  %102 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %77
  %109 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %110 = load %struct.scb*, %struct.scb** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i8* @ahd_sg_bus_to_virt(%struct.ahd_softc* %109, %struct.scb* %110, i32 %111)
  %113 = bitcast i8* %112 to %struct.ahd_dma64_seg*
  store %struct.ahd_dma64_seg* %113, %struct.ahd_dma64_seg** %10, align 8
  %114 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %10, align 8
  %115 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %114, i32 -1
  store %struct.ahd_dma64_seg* %115, %struct.ahd_dma64_seg** %10, align 8
  %116 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %10, align 8
  %117 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ahd_le64toh(i32 %118)
  %120 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %10, align 8
  %121 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ahd_le32toh(i32 %122)
  %124 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %125 = and i32 %123, %124
  %126 = add nsw i32 %119, %125
  %127 = load i32, i32* %8, align 4
  %128 = sub nsw i32 %126, %127
  store i32 %128, i32* %9, align 4
  %129 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %130 = load i64, i64* @HADDR, align 8
  %131 = add nsw i64 %130, 4
  %132 = load i32, i32* %9, align 4
  %133 = ashr i32 %132, 32
  %134 = call i32 @ahd_outl(%struct.ahd_softc* %129, i64 %131, i32 %133)
  br label %168

135:                                              ; preds = %77
  %136 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %137 = load %struct.scb*, %struct.scb** %3, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i8* @ahd_sg_bus_to_virt(%struct.ahd_softc* %136, %struct.scb* %137, i32 %138)
  %140 = bitcast i8* %139 to %struct.ahd_dma_seg*
  store %struct.ahd_dma_seg* %140, %struct.ahd_dma_seg** %11, align 8
  %141 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %11, align 8
  %142 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %141, i32 -1
  store %struct.ahd_dma_seg* %142, %struct.ahd_dma_seg** %11, align 8
  %143 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %11, align 8
  %144 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ahd_le32toh(i32 %145)
  %147 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %11, align 8
  %148 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ahd_le32toh(i32 %149)
  %151 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %152 = and i32 %150, %151
  %153 = add nsw i32 %146, %152
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %9, align 4
  %156 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %157 = load i64, i64* @HADDR, align 8
  %158 = add nsw i64 %157, 4
  %159 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %11, align 8
  %160 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ahd_le32toh(i32 %161)
  %163 = load i32, i32* @AHD_SG_LEN_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = and i32 %162, %164
  %166 = ashr i32 %165, 24
  %167 = call i32 @ahd_outb(%struct.ahd_softc* %156, i64 %158, i32 %166)
  br label %168

168:                                              ; preds = %135, %108
  %169 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %170 = load i64, i64* @HADDR, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @ahd_outl(%struct.ahd_softc* %169, i64 %170, i32 %171)
  %173 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %174 = load i64, i64* @HCNT, align 8
  %175 = add nsw i64 %174, 2
  %176 = load i32, i32* %8, align 4
  %177 = ashr i32 %176, 16
  %178 = call i32 @ahd_outb(%struct.ahd_softc* %173, i64 %175, i32 %177)
  %179 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %180 = load i64, i64* @HCNT, align 8
  %181 = add nsw i64 %180, 1
  %182 = load i32, i32* %8, align 4
  %183 = ashr i32 %182, 8
  %184 = call i32 @ahd_outb(%struct.ahd_softc* %179, i64 %181, i32 %183)
  %185 = load %struct.ahd_softc*, %struct.ahd_softc** %2, align 8
  %186 = load i64, i64* @HCNT, align 8
  %187 = load i32, i32* %8, align 4
  %188 = call i32 @ahd_outb(%struct.ahd_softc* %185, i64 %186, i32 %187)
  ret void
}

declare dso_local i32 @AHD_ASSERT_MODES(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_outb(%struct.ahd_softc*, i64, i32) #1

declare dso_local i32 @ahd_inb(%struct.ahd_softc*, i64) #1

declare dso_local i32 @ahd_delay(i32) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @ahd_save_modes(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_modes(%struct.ahd_softc*, i32, i32) #1

declare dso_local i32 @ahd_inl_scbram(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_inb_scbram(%struct.ahd_softc*, i64) #1

declare dso_local i8* @ahd_sg_bus_to_virt(%struct.ahd_softc*, %struct.scb*, i32) #1

declare dso_local i32 @ahd_le64toh(i32) #1

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_outl(%struct.ahd_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
