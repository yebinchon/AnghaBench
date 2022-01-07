; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_data_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_setup_data_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.scb = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ahd_dma64_seg = type { i32, i32 }
%struct.ahd_dma_seg = type { i32, i64 }

@AHD_64BIT_ADDRESSING = common dso_local global i32 0, align 4
@AHD_39BIT_ADDRESSING = common dso_local global i32 0, align 4
@SG_FULL_RESID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.scb*)* @ahd_setup_data_scb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_data_scb(%struct.ahd_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.ahd_dma64_seg*, align 8
  %6 = alloca %struct.ahd_dma_seg*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %9 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AHD_64BIT_ADDRESSING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %2
  %16 = load %struct.scb*, %struct.scb** %4, align 8
  %17 = getelementptr inbounds %struct.scb, %struct.scb* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ahd_dma64_seg*
  store %struct.ahd_dma64_seg* %19, %struct.ahd_dma64_seg** %5, align 8
  %20 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %5, align 8
  %21 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scb*, %struct.scb** %4, align 8
  %24 = getelementptr inbounds %struct.scb, %struct.scb* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ahd_dma64_seg*, %struct.ahd_dma64_seg** %5, align 8
  %28 = getelementptr inbounds %struct.ahd_dma64_seg, %struct.ahd_dma64_seg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scb*, %struct.scb** %4, align 8
  %31 = getelementptr inbounds %struct.scb, %struct.scb* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  br label %80

34:                                               ; preds = %2
  %35 = load %struct.scb*, %struct.scb** %4, align 8
  %36 = getelementptr inbounds %struct.scb, %struct.scb* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ahd_dma_seg*
  store %struct.ahd_dma_seg* %38, %struct.ahd_dma_seg** %6, align 8
  %39 = load %struct.scb*, %struct.scb** %4, align 8
  %40 = getelementptr inbounds %struct.scb, %struct.scb* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = bitcast i32* %42 to i64*
  store i64* %43, i64** %7, align 8
  %44 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %6, align 8
  %45 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 %46, i64* %48, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AHD_39BIT_ADDRESSING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %34
  %58 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %6, align 8
  %59 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ahd_le32toh(i32 %60)
  %62 = and i32 %61, 2130706432
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %63, 8
  %65 = call i32 @ahd_htole64(i32 %64)
  %66 = load %struct.scb*, %struct.scb** %4, align 8
  %67 = getelementptr inbounds %struct.scb, %struct.scb* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %57, %34
  %73 = load %struct.ahd_dma_seg*, %struct.ahd_dma_seg** %6, align 8
  %74 = getelementptr inbounds %struct.ahd_dma_seg, %struct.ahd_dma_seg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.scb*, %struct.scb** %4, align 8
  %77 = getelementptr inbounds %struct.scb, %struct.scb* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %15
  %81 = load %struct.scb*, %struct.scb** %4, align 8
  %82 = getelementptr inbounds %struct.scb, %struct.scb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SG_FULL_RESID, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @ahd_htole32(i32 %85)
  %87 = load %struct.scb*, %struct.scb** %4, align 8
  %88 = getelementptr inbounds %struct.scb, %struct.scb* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 4
  ret void
}

declare dso_local i32 @ahd_le32toh(i32) #1

declare dso_local i32 @ahd_htole64(i32) #1

declare dso_local i32 @ahd_htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
