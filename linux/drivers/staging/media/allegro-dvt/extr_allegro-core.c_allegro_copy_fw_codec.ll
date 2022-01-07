; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_copy_fw_codec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_copy_fw_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"failed to allocate %zu bytes for firmware\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"copy codec firmware (%zd B) to phys %pad\0A\00", align 1
@AXI_ADDR_OFFSET_IP = common dso_local global i32 0, align 4
@MCU_CACHE_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"icache_offset: msb = 0x%x, lsb = 0x%x\0A\00", align 1
@AL5_ICACHE_ADDR_OFFSET_MSB = common dso_local global i32 0, align 4
@AL5_ICACHE_ADDR_OFFSET_LSB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"dcache_offset: msb = 0x%x, lsb = 0x%x\0A\00", align 1
@AL5_DCACHE_ADDR_OFFSET_MSB = common dso_local global i32 0, align 4
@AL5_DCACHE_ADDR_OFFSET_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_dev*, i32*, i64)* @allegro_copy_fw_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_copy_fw_codec(%struct.allegro_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.allegro_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.allegro_dev* %0, %struct.allegro_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %11 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %12 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %11, i32 0, i32 2
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @allegro_alloc_buffer(%struct.allegro_dev* %10, %struct.TYPE_2__* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %19 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @v4l2_err(i32* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %20)
  br label %114

22:                                               ; preds = %3
  %23 = load i32, i32* @debug, align 4
  %24 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %25 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %28 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @v4l2_dbg(i32 1, i32 %23, i32* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %26, i32* %29)
  %31 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %32 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @memcpy(i32 %34, i32* %35, i64 %36)
  %38 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %39 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AXI_ADDR_OFFSET_IP, align 4
  %42 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %43 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = call i32 @regmap_write(i32 %40, i32 %41, i32 %46)
  %48 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %49 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MCU_CACHE_OFFSET, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @debug, align 4
  %55 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %56 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %55, i32 0, i32 1
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @upper_32_bits(i32 %57)
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @lower_32_bits(i32 %60)
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i32*
  %64 = call i32 @v4l2_dbg(i32 2, i32 %54, i32* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %59, i32* %63)
  %65 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %66 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AL5_ICACHE_ADDR_OFFSET_MSB, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @upper_32_bits(i32 %69)
  %71 = call i32 @regmap_write(i32 %67, i32 %68, i32 %70)
  %72 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %73 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AL5_ICACHE_ADDR_OFFSET_LSB, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @lower_32_bits(i32 %76)
  %78 = call i32 @regmap_write(i32 %74, i32 %75, i32 %77)
  %79 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %80 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = and i64 %83, -4294967296
  %85 = load i32, i32* @MCU_CACHE_OFFSET, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* @debug, align 4
  %90 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %91 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %90, i32 0, i32 1
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @upper_32_bits(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @lower_32_bits(i32 %95)
  %97 = sext i32 %96 to i64
  %98 = inttoptr i64 %97 to i32*
  %99 = call i32 @v4l2_dbg(i32 2, i32 %89, i32* %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %94, i32* %98)
  %100 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %101 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AL5_DCACHE_ADDR_OFFSET_MSB, align 4
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @upper_32_bits(i32 %104)
  %106 = call i32 @regmap_write(i32 %102, i32 %103, i32 %105)
  %107 = load %struct.allegro_dev*, %struct.allegro_dev** %4, align 8
  %108 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AL5_DCACHE_ADDR_OFFSET_LSB, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @lower_32_bits(i32 %111)
  %113 = call i32 @regmap_write(i32 %109, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %22, %17
  ret void
}

declare dso_local i32 @allegro_alloc_buffer(%struct.allegro_dev*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i64, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
