; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_manualwrite.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_manualwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.npcm_fiu_spi = type { i32 }

@CHUNK_SIZE = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_SW_CS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @npcm_fiu_manualwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_manualwrite(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.npcm_fiu_spi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %12 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %13 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32 %16)
  store %struct.npcm_fiu_spi* %17, %struct.npcm_fiu_spi** %6, align 8
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CHUNK_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %31 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CHUNK_SIZE, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %37 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %40 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM, align 4
  %41 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %42 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = call i32 @regmap_update_bits(i32 %38, i32 %39, i32 %40, i32 %47)
  %49 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %50 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %53 = load i32, i32* @NPCM_FIU_UMA_CTS_SW_CS, align 4
  %54 = call i32 @regmap_update_bits(i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %56 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %57 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %58 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %55, %struct.spi_mem_op* %56, i32 %60, i32 1, i32* null, i32 0)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %2
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %121

66:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %91, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* @CHUNK_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %72, %struct.spi_mem_op* %73, i32 %76, i32 0, i32* %78, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %121

86:                                               ; preds = %71
  %87 = load i32, i32* @CHUNK_SIZE, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  br label %67

94:                                               ; preds = %67
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %99 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %105, 1
  %107 = call i32 @npcm_fiu_uma_write(%struct.spi_mem* %98, %struct.spi_mem_op* %99, i32 %102, i32 0, i32* %104, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %3, align 4
  br label %121

112:                                              ; preds = %97
  br label %113

113:                                              ; preds = %112, %94
  %114 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %6, align 8
  %115 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %118 = load i32, i32* @NPCM_FIU_UMA_CTS_SW_CS, align 4
  %119 = load i32, i32* @NPCM_FIU_UMA_CTS_SW_CS, align 4
  %120 = call i32 @regmap_update_bits(i32 %116, i32 %117, i32 %118, i32 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %113, %110, %84, %64
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @npcm_fiu_uma_write(%struct.spi_mem*, %struct.spi_mem_op*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
