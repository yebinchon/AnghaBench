; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_uma_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_uma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.npcm_fiu_spi = type { i32 }

@NPCM_FIU_UMA_CTS = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CMD = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CMD_CMD = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_DW0 = common dso_local global i64 0, align 8
@NPCM_FIU_UMA_CFG_ADBPCK_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_WDBPCK_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_ADDR = common dso_local global i64 0, align 8
@NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG = common dso_local global i64 0, align 8
@NPCM_FIU_UMA_CTS_EXEC_DONE = common dso_local global i32 0, align 4
@UMA_MICRO_SEC_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*, i32, i32, i32*, i32)* @npcm_fiu_uma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_uma_write(%struct.spi_mem* %0, %struct.spi_mem_op* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.spi_mem*, align 8
  %8 = alloca %struct.spi_mem_op*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.npcm_fiu_spi*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %7, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.spi_mem*, %struct.spi_mem** %7, align 8
  %19 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32 %22)
  store %struct.npcm_fiu_spi* %23, %struct.npcm_fiu_spi** %13, align 8
  %24 = call i32 @BIT(i32 10)
  store i32 %24, i32* %14, align 4
  %25 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 16, i1 false)
  %26 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %27 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %30 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM, align 4
  %31 = load %struct.spi_mem*, %struct.spi_mem** %7, align 8
  %32 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %37)
  %39 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %40 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NPCM_FIU_UMA_CMD, align 4
  %43 = load i32, i32* @NPCM_FIU_UMA_CMD_CMD, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %6
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @memcpy(i32* %49, i32* %50, i32 %51)
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %72, %48
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @DIV_ROUND_UP(i32 %55, i32 4)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %60 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* @NPCM_FIU_UMA_DW0, align 8
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regmap_write(i32 %61, i64 %66, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %53

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75, %6
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %122

79:                                               ; preds = %76
  %80 = load %struct.spi_mem_op*, %struct.spi_mem_op** %8, align 8
  %81 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ilog2(i32 %83)
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load %struct.spi_mem_op*, %struct.spi_mem_op** %8, align 8
  %88 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ilog2(i32 %90)
  %92 = load i32, i32* @NPCM_FIU_UMA_CFG_ADBPCK_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load %struct.spi_mem_op*, %struct.spi_mem_op** %8, align 8
  %97 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ilog2(i32 %99)
  %101 = load i32, i32* @NPCM_FIU_UMA_CFG_WDBPCK_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %14, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %14, align 4
  %105 = load %struct.spi_mem_op*, %struct.spi_mem_op** %8, align 8
  %106 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %14, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %14, align 4
  %113 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %114 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64, i64* @NPCM_FIU_UMA_ADDR, align 8
  %117 = load %struct.spi_mem_op*, %struct.spi_mem_op** %8, align 8
  %118 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @regmap_write(i32 %115, i64 %116, i32 %120)
  br label %128

122:                                              ; preds = %76
  %123 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %124 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @NPCM_FIU_UMA_ADDR, align 8
  %127 = call i32 @regmap_write(i32 %125, i64 %126, i32 0)
  br label %128

128:                                              ; preds = %122, %79
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* @NPCM_FIU_UMA_CFG_WDATSIZ_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %135 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @NPCM_FIU_UMA_CFG, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @regmap_write(i32 %136, i64 %137, i32 %138)
  %140 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %141 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %144 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %145 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %146 = call i32 @regmap_write_bits(i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %13, align 8
  %148 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* @UMA_MICRO_SEC_TIMEOUT, align 4
  %159 = call i32 @regmap_read_poll_timeout(i32 %149, i32 %150, i32 %151, i32 %157, i32 0, i32 %158)
  ret i32 %159
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @BIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
