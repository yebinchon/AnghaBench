; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_uma_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_uma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.spi_mem_op = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.npcm_fiu_spi = type { i32 }

@NPCM_FIU_UMA_CTS = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CMD = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CMD_CMD = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_ADBPCK_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_DBPCK_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_RDBPCK_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_DBSIZ_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_ADDR = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG_RDATSIZ_SHIFT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CFG = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_CTS_EXEC_DONE = common dso_local global i32 0, align 4
@UMA_MICRO_SEC_TIMEOUT = common dso_local global i32 0, align 4
@NPCM_FIU_UMA_DR0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*, i32, i32, i32*, i32)* @npcm_fiu_uma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_uma_read(%struct.spi_mem* %0, %struct.spi_mem_op* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_mem*, align 8
  %9 = alloca %struct.spi_mem_op*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.npcm_fiu_spi*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %8, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.spi_mem*, %struct.spi_mem** %8, align 8
  %21 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32 %24)
  store %struct.npcm_fiu_spi* %25, %struct.npcm_fiu_spi** %14, align 8
  %26 = call i32 @BIT(i32 10)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %28 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %31 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM, align 4
  %32 = load %struct.spi_mem*, %struct.spi_mem** %8, align 8
  %33 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NPCM_FIU_UMA_CTS_DEV_NUM_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = call i32 @regmap_update_bits(i32 %29, i32 %30, i32 %31, i32 %38)
  %40 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %41 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NPCM_FIU_UMA_CMD, align 4
  %44 = load i32, i32* @NPCM_FIU_UMA_CMD_CMD, align 4
  %45 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %46 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regmap_update_bits(i32 %42, i32 %43, i32 %44, i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %6
  %53 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ilog2(i32 %56)
  %58 = load i32, i32* %15, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %61 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ilog2(i32 %63)
  %65 = load i32, i32* @NPCM_FIU_UMA_CFG_ADBPCK_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %70 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ilog2(i32 %72)
  %74 = load i32, i32* @NPCM_FIU_UMA_CFG_DBPCK_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %15, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %15, align 4
  %78 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %79 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ilog2(i32 %81)
  %83 = load i32, i32* @NPCM_FIU_UMA_CFG_RDBPCK_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %15, align 4
  %87 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %88 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NPCM_FIU_UMA_CFG_DBSIZ_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %15, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %15, align 4
  %95 = load %struct.spi_mem_op*, %struct.spi_mem_op** %9, align 8
  %96 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NPCM_FIU_UMA_CFG_ADDSIZ_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %15, align 4
  %103 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %104 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NPCM_FIU_UMA_ADDR, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @regmap_write(i32 %105, i32 %106, i32 %107)
  br label %115

109:                                              ; preds = %6
  %110 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %111 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NPCM_FIU_UMA_ADDR, align 4
  %114 = call i32 @regmap_write(i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %109, %52
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @NPCM_FIU_UMA_CFG_RDATSIZ_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %15, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %15, align 4
  %121 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %122 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NPCM_FIU_UMA_CFG, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @regmap_write(i32 %123, i32 %124, i32 %125)
  %127 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %128 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %131 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %132 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %133 = call i32 @regmap_write_bits(i32 %129, i32 %130, i32 %131, i32 %132)
  %134 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %135 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NPCM_FIU_UMA_CTS, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* @NPCM_FIU_UMA_CTS_EXEC_DONE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* @UMA_MICRO_SEC_TIMEOUT, align 4
  %146 = call i32 @regmap_read_poll_timeout(i32 %136, i32 %137, i32 %138, i32 %144, i32 0, i32 %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %115
  %150 = load i32, i32* %17, align 4
  store i32 %150, i32* %7, align 4
  br label %182

151:                                              ; preds = %115
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %151
  store i32 0, i32* %19, align 4
  br label %155

155:                                              ; preds = %173, %154
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @DIV_ROUND_UP(i32 %157, i32 4)
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %14, align 8
  %162 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* @NPCM_FIU_UMA_DR0, align 8
  %165 = load i32, i32* %19, align 4
  %166 = mul nsw i32 %165, 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %164, %167
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %170
  %172 = call i32 @regmap_read(i32 %163, i64 %168, i32* %171)
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %19, align 4
  br label %155

176:                                              ; preds = %155
  %177 = load i32*, i32** %12, align 8
  %178 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @memcpy(i32* %177, i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %176, %151
  store i32 0, i32* %7, align 4
  br label %182

182:                                              ; preds = %181, %149
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
