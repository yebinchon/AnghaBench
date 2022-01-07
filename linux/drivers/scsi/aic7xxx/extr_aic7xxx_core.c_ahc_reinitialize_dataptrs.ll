; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_reinitialize_dataptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_reinitialize_dataptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32 }
%struct.scb = type { i32 }
%struct.ahc_dma_seg = type { i32, i32 }

@SCB_TAG = common dso_local global i64 0, align 8
@SCB_RESIDUAL_SGPTR = common dso_local global i64 0, align 8
@SG_PTR_MASK = common dso_local global i32 0, align 4
@SCB_RESIDUAL_DATACNT = common dso_local global i64 0, align 8
@AHC_SG_LEN_MASK = common dso_local global i32 0, align 4
@AHC_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@DSCOMMAND1 = common dso_local global i64 0, align 8
@HADDLDSEL0 = common dso_local global i32 0, align 4
@HADDR = common dso_local global i64 0, align 8
@SG_HIGH_ADDR_BITS = common dso_local global i32 0, align 4
@HCNT = common dso_local global i64 0, align 8
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@STCNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*)* @ahc_reinitialize_dataptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_reinitialize_dataptrs(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca %struct.scb*, align 8
  %4 = alloca %struct.ahc_dma_seg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = load i64, i64* @SCB_TAG, align 8
  %12 = call i32 @ahc_inb(%struct.ahc_softc* %10, i64 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.scb* @ahc_lookup_scb(%struct.ahc_softc* %13, i32 %14)
  store %struct.scb* %15, %struct.scb** %3, align 8
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %17 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %18 = add nsw i64 %17, 3
  %19 = call i32 @ahc_inb(%struct.ahc_softc* %16, i64 %18)
  %20 = shl i32 %19, 24
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @ahc_inb(%struct.ahc_softc* %21, i64 %23)
  %25 = shl i32 %24, 16
  %26 = or i32 %20, %25
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %29 = add nsw i64 %28, 1
  %30 = call i32 @ahc_inb(%struct.ahc_softc* %27, i64 %29)
  %31 = shl i32 %30, 8
  %32 = or i32 %26, %31
  %33 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %34 = load i64, i64* @SCB_RESIDUAL_SGPTR, align 8
  %35 = call i32 @ahc_inb(%struct.ahc_softc* %33, i64 %34)
  %36 = or i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @SG_PTR_MASK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  %40 = load %struct.scb*, %struct.scb** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb* %40, i32 %41)
  store %struct.ahc_dma_seg* %42, %struct.ahc_dma_seg** %4, align 8
  %43 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %4, align 8
  %44 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %43, i32 -1
  store %struct.ahc_dma_seg* %44, %struct.ahc_dma_seg** %4, align 8
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %46 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %47 = add nsw i64 %46, 2
  %48 = call i32 @ahc_inb(%struct.ahc_softc* %45, i64 %47)
  %49 = shl i32 %48, 16
  %50 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %51 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @ahc_inb(%struct.ahc_softc* %50, i64 %52)
  %54 = shl i32 %53, 8
  %55 = or i32 %49, %54
  %56 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %57 = load i64, i64* @SCB_RESIDUAL_DATACNT, align 8
  %58 = call i32 @ahc_inb(%struct.ahc_softc* %56, i64 %57)
  %59 = or i32 %55, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %4, align 8
  %61 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ahc_le32toh(i32 %62)
  %64 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %4, align 8
  %65 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ahc_le32toh(i32 %66)
  %68 = load i32, i32* @AHC_SG_LEN_MASK, align 4
  %69 = and i32 %67, %68
  %70 = add nsw i32 %63, %69
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AHC_39BIT_ADDRESSING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %1
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = load i64, i64* @DSCOMMAND1, align 8
  %82 = call i32 @ahc_inb(%struct.ahc_softc* %80, i64 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %84 = load i64, i64* @DSCOMMAND1, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @HADDLDSEL0, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @ahc_outb(%struct.ahc_softc* %83, i64 %84, i32 %87)
  %89 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %90 = load i64, i64* @HADDR, align 8
  %91 = load %struct.ahc_dma_seg*, %struct.ahc_dma_seg** %4, align 8
  %92 = getelementptr inbounds %struct.ahc_dma_seg, %struct.ahc_dma_seg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ahc_le32toh(i32 %93)
  %95 = ashr i32 %94, 24
  %96 = load i32, i32* @SG_HIGH_ADDR_BITS, align 4
  %97 = and i32 %95, %96
  %98 = call i32 @ahc_outb(%struct.ahc_softc* %89, i64 %90, i32 %97)
  %99 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %100 = load i64, i64* @DSCOMMAND1, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @ahc_outb(%struct.ahc_softc* %99, i64 %100, i32 %101)
  br label %103

103:                                              ; preds = %79, %1
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %105 = load i64, i64* @HADDR, align 8
  %106 = add nsw i64 %105, 3
  %107 = load i32, i32* %8, align 4
  %108 = ashr i32 %107, 24
  %109 = call i32 @ahc_outb(%struct.ahc_softc* %104, i64 %106, i32 %108)
  %110 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %111 = load i64, i64* @HADDR, align 8
  %112 = add nsw i64 %111, 2
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 16
  %115 = call i32 @ahc_outb(%struct.ahc_softc* %110, i64 %112, i32 %114)
  %116 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %117 = load i64, i64* @HADDR, align 8
  %118 = add nsw i64 %117, 1
  %119 = load i32, i32* %8, align 4
  %120 = ashr i32 %119, 8
  %121 = call i32 @ahc_outb(%struct.ahc_softc* %116, i64 %118, i32 %120)
  %122 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %123 = load i64, i64* @HADDR, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @ahc_outb(%struct.ahc_softc* %122, i64 %123, i32 %124)
  %126 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %127 = load i64, i64* @HCNT, align 8
  %128 = add nsw i64 %127, 2
  %129 = load i32, i32* %7, align 4
  %130 = ashr i32 %129, 16
  %131 = call i32 @ahc_outb(%struct.ahc_softc* %126, i64 %128, i32 %130)
  %132 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %133 = load i64, i64* @HCNT, align 8
  %134 = add nsw i64 %133, 1
  %135 = load i32, i32* %7, align 4
  %136 = ashr i32 %135, 8
  %137 = call i32 @ahc_outb(%struct.ahc_softc* %132, i64 %134, i32 %136)
  %138 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %139 = load i64, i64* @HCNT, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @ahc_outb(%struct.ahc_softc* %138, i64 %139, i32 %140)
  %142 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %143 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AHC_ULTRA2, align 4
  %146 = and i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %103
  %149 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %150 = load i64, i64* @STCNT, align 8
  %151 = add nsw i64 %150, 2
  %152 = load i32, i32* %7, align 4
  %153 = ashr i32 %152, 16
  %154 = call i32 @ahc_outb(%struct.ahc_softc* %149, i64 %151, i32 %153)
  %155 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %156 = load i64, i64* @STCNT, align 8
  %157 = add nsw i64 %156, 1
  %158 = load i32, i32* %7, align 4
  %159 = ashr i32 %158, 8
  %160 = call i32 @ahc_outb(%struct.ahc_softc* %155, i64 %157, i32 %159)
  %161 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %162 = load i64, i64* @STCNT, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @ahc_outb(%struct.ahc_softc* %161, i64 %162, i32 %163)
  br label %165

165:                                              ; preds = %148, %103
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i64) #1

declare dso_local %struct.scb* @ahc_lookup_scb(%struct.ahc_softc*, i32) #1

declare dso_local %struct.ahc_dma_seg* @ahc_sg_bus_to_virt(%struct.scb*, i32) #1

declare dso_local i32 @ahc_le32toh(i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
