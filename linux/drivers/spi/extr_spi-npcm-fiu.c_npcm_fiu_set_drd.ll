; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_set_drd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_set_drd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.npcm_fiu_spi = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@NPCM_FIU_DRD_CFG = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_ACCTYPE = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_ACCTYPE_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_DBW = common dso_local global i32 0, align 4
@NUM_BITS_IN_BYTE = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_DBW_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_RDCMD = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_CFG_ADDSIZ = common dso_local global i32 0, align 4
@NPCM_FIU_DRD_ADDSIZ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.npcm_fiu_spi*, %struct.spi_mem_op*)* @npcm_fiu_set_drd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npcm_fiu_set_drd(%struct.npcm_fiu_spi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.npcm_fiu_spi*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  store %struct.npcm_fiu_spi* %0, %struct.npcm_fiu_spi** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %5 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %6 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %9 = load i32, i32* @NPCM_FIU_DRD_CFG_ACCTYPE, align 4
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ilog2(i32 %13)
  %15 = load i32, i32* @NPCM_FIU_DRD_ACCTYPE_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %16)
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %23 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %27 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %30 = load i32, i32* @NPCM_FIU_DRD_CFG_DBW, align 4
  %31 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %32 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ilog2(i32 %38)
  %40 = mul nsw i32 %34, %39
  %41 = load i32, i32* @NUM_BITS_IN_BYTE, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* @NPCM_FIU_DRD_DBW_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %44)
  %46 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %47 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %51 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %55 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %58 = load i32, i32* @NPCM_FIU_DRD_CFG_RDCMD, align 4
  %59 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %60 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %62)
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %69 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  %72 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %73 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @NPCM_FIU_DRD_CFG, align 4
  %76 = load i32, i32* @NPCM_FIU_DRD_CFG_ADDSIZ, align 4
  %77 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %78 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 3
  %82 = load i32, i32* @NPCM_FIU_DRD_ADDSIZ_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 %83)
  %85 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %86 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %3, align 8
  %90 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
