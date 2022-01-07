; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_dirmap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-npcm-fiu.c_npcm_fiu_dirmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem_dirmap_desc = type { i32, %struct.TYPE_15__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }
%struct.npcm_fiu_spi = type { i32, %struct.TYPE_17__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.npcm_fiu_chip* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.npcm_fiu_chip = type { i64 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Reserved memory not defined, direct read disabled\0A\00", align 1
@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Error mapping memory region, direct read disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-fiu\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"nuvoton,npcm750-gcr\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Didn't find nuvoton,npcm750-gcr, direct read disabled\0A\00", align 1
@NPCM7XX_INTCR3_OFFSET = common dso_local global i32 0, align 4
@NPCM7XX_INTCR3_FIU_FIX = common dso_local global i32 0, align 4
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem_dirmap_desc*)* @npcm_fiu_dirmap_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcm_fiu_dirmap_create(%struct.spi_mem_dirmap_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_mem_dirmap_desc*, align 8
  %4 = alloca %struct.npcm_fiu_spi*, align 8
  %5 = alloca %struct.npcm_fiu_chip*, align 8
  %6 = alloca %struct.regmap*, align 8
  store %struct.spi_mem_dirmap_desc* %0, %struct.spi_mem_dirmap_desc** %3, align 8
  %7 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %8 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32 %13)
  store %struct.npcm_fiu_spi* %14, %struct.npcm_fiu_spi** %4, align 8
  %15 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %16 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %15, i32 0, i32 4
  %17 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %16, align 8
  %18 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %19 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %17, i64 %24
  store %struct.npcm_fiu_chip* %25, %struct.npcm_fiu_chip** %5, align 8
  %26 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %27 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %26, i32 0, i32 3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %1
  %31 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %32 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %31, i32 0, i32 1
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = call i32 @dev_warn(%struct.TYPE_17__* %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %36 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  store i32 0, i32* %2, align 4
  br label %157

37:                                               ; preds = %1
  %38 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %39 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %37
  %43 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %44 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %53 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %157

54:                                               ; preds = %42, %37
  %55 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %56 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %54
  %60 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %61 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %64 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %63, i32 0, i32 3
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %69 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %75 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %73, %80
  %82 = add i64 %67, %81
  %83 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %84 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i64 @devm_ioremap_nocache(%struct.TYPE_17__* %62, i64 %82, i32 %87)
  %89 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %90 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.npcm_fiu_chip*, %struct.npcm_fiu_chip** %5, align 8
  %92 = getelementptr inbounds %struct.npcm_fiu_chip, %struct.npcm_fiu_chip* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %59
  %96 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %97 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %96, i32 0, i32 1
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = call i32 @dev_warn(%struct.TYPE_17__* %98, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %101 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  store i32 0, i32* %2, align 4
  br label %157

102:                                              ; preds = %59
  br label %103

103:                                              ; preds = %102, %54
  %104 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %105 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %104, i32 0, i32 1
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @of_device_is_compatible(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %103
  %112 = call %struct.regmap* @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.regmap* %112, %struct.regmap** %6, align 8
  %113 = load %struct.regmap*, %struct.regmap** %6, align 8
  %114 = call i64 @IS_ERR(%struct.regmap* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %118 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %117, i32 0, i32 1
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %118, align 8
  %120 = call i32 @dev_warn(%struct.TYPE_17__* %119, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %122 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  store i32 0, i32* %2, align 4
  br label %157

123:                                              ; preds = %111
  %124 = load %struct.regmap*, %struct.regmap** %6, align 8
  %125 = load i32, i32* @NPCM7XX_INTCR3_OFFSET, align 4
  %126 = load i32, i32* @NPCM7XX_INTCR3_FIU_FIX, align 4
  %127 = load i32, i32* @NPCM7XX_INTCR3_FIU_FIX, align 4
  %128 = call i32 @regmap_update_bits(%struct.regmap* %124, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %103
  %130 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %131 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %129
  %139 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %140 = getelementptr inbounds %struct.npcm_fiu_spi, %struct.npcm_fiu_spi* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %138
  %144 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %145 = load %struct.spi_mem_dirmap_desc*, %struct.spi_mem_dirmap_desc** %3, align 8
  %146 = getelementptr inbounds %struct.spi_mem_dirmap_desc, %struct.spi_mem_dirmap_desc* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 0
  %148 = call i32 @npcm_fiu_set_drd(%struct.npcm_fiu_spi* %144, %struct.TYPE_16__* %147)
  br label %152

149:                                              ; preds = %138
  %150 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %151 = call i32 @npcm_fiux_set_direct_rd(%struct.npcm_fiu_spi* %150)
  br label %152

152:                                              ; preds = %149, %143
  br label %156

153:                                              ; preds = %129
  %154 = load %struct.npcm_fiu_spi*, %struct.npcm_fiu_spi** %4, align 8
  %155 = call i32 @npcm_fiux_set_direct_wr(%struct.npcm_fiu_spi* %154)
  br label %156

156:                                              ; preds = %153, %152
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %116, %95, %51, %30
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.npcm_fiu_spi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @devm_ioremap_nocache(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @npcm_fiu_set_drd(%struct.npcm_fiu_spi*, %struct.TYPE_16__*) #1

declare dso_local i32 @npcm_fiux_set_direct_rd(%struct.npcm_fiu_spi*) #1

declare dso_local i32 @npcm_fiux_set_direct_wr(%struct.npcm_fiu_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
