; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_sc27xx-efuse.c_sc27xx_efuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_efuse = type { i32, i64 }

@SC27XX_EFUSE_BLOCK_WIDTH = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i64 0, align 8
@SC27XX_EFUSE_BLOCK_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SC27XX_MODULE_EN = common dso_local global i64 0, align 8
@SC27XX_EFUSE_EN = common dso_local global i32 0, align 4
@SC27XX_EFUSE_STANDBY = common dso_local global i32 0, align 4
@SC27XX_EFUSE_BLOCK_INDEX = common dso_local global i64 0, align 8
@SC27XX_EFUSE_BLOCK_MASK = common dso_local global i64 0, align 8
@SC27XX_EFUSE_MODE_CTRL = common dso_local global i64 0, align 8
@SC27XX_EFUSE_RD_START = common dso_local global i32 0, align 4
@SC27XX_EFUSE_RD_DONE = common dso_local global i32 0, align 4
@SC27XX_EFUSE_DATA_RD = common dso_local global i64 0, align 8
@SC27XX_EFUSE_CLR_RDDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i64)* @sc27xx_efuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_efuse_read(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sc27xx_efuse*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.sc27xx_efuse*
  store %struct.sc27xx_efuse* %16, %struct.sc27xx_efuse** %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @SC27XX_EFUSE_BLOCK_WIDTH, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @SC27XX_EFUSE_BLOCK_WIDTH, align 8
  %22 = urem i64 %20, %21
  %23 = load i64, i64* @BITS_PER_BYTE, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @SC27XX_EFUSE_BLOCK_MAX, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @SC27XX_EFUSE_BLOCK_WIDTH, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %144

35:                                               ; preds = %28
  %36 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %37 = call i32 @sc27xx_efuse_lock(%struct.sc27xx_efuse* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %5, align 4
  br label %144

42:                                               ; preds = %35
  %43 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %44 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* @SC27XX_MODULE_EN, align 8
  %47 = load i32, i32* @SC27XX_EFUSE_EN, align 4
  %48 = load i32, i32* @SC27XX_EFUSE_EN, align 4
  %49 = call i32 @regmap_update_bits(i32 %45, i64 %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %130

53:                                               ; preds = %42
  %54 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %55 = load i32, i32* @SC27XX_EFUSE_STANDBY, align 4
  %56 = call i32 @sc27xx_efuse_poll_status(%struct.sc27xx_efuse* %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %123

60:                                               ; preds = %53
  %61 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %62 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %65 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SC27XX_EFUSE_BLOCK_INDEX, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @SC27XX_EFUSE_BLOCK_MASK, align 8
  %71 = and i64 %69, %70
  %72 = call i32 @regmap_write(i32 %63, i64 %68, i64 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %60
  br label %123

76:                                               ; preds = %60
  %77 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %78 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %81 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SC27XX_EFUSE_MODE_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* @SC27XX_EFUSE_RD_START, align 4
  %86 = load i32, i32* @SC27XX_EFUSE_RD_START, align 4
  %87 = call i32 @regmap_update_bits(i32 %79, i64 %84, i32 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %123

91:                                               ; preds = %76
  %92 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %93 = load i32, i32* @SC27XX_EFUSE_RD_DONE, align 4
  %94 = call i32 @sc27xx_efuse_poll_status(%struct.sc27xx_efuse* %92, i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %123

98:                                               ; preds = %91
  %99 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %100 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %103 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @SC27XX_EFUSE_DATA_RD, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @regmap_read(i32 %101, i64 %106, i64* %11)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %123

111:                                              ; preds = %98
  %112 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %113 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %116 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SC27XX_EFUSE_MODE_CTRL, align 8
  %119 = add nsw i64 %117, %118
  %120 = load i32, i32* @SC27XX_EFUSE_CLR_RDDONE, align 4
  %121 = load i32, i32* @SC27XX_EFUSE_CLR_RDDONE, align 4
  %122 = call i32 @regmap_update_bits(i32 %114, i64 %119, i32 %120, i32 %121)
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %111, %110, %97, %90, %75, %59
  %124 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %125 = getelementptr inbounds %struct.sc27xx_efuse, %struct.sc27xx_efuse* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i64, i64* @SC27XX_MODULE_EN, align 8
  %128 = load i32, i32* @SC27XX_EFUSE_EN, align 4
  %129 = call i32 @regmap_update_bits(i32 %126, i64 %127, i32 %128, i32 0)
  br label %130

130:                                              ; preds = %123, %52
  %131 = load %struct.sc27xx_efuse*, %struct.sc27xx_efuse** %10, align 8
  %132 = call i32 @sc27xx_efuse_unlock(%struct.sc27xx_efuse* %131)
  %133 = load i32, i32* %14, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %11, align 8
  %138 = lshr i64 %137, %136
  store i64 %138, i64* %11, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @memcpy(i8* %139, i64* %11, i64 %140)
  br label %142

142:                                              ; preds = %135, %130
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %40, %32
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @sc27xx_efuse_lock(%struct.sc27xx_efuse*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @sc27xx_efuse_poll_status(%struct.sc27xx_efuse*, i32) #1

declare dso_local i32 @regmap_write(i32, i64, i64) #1

declare dso_local i32 @regmap_read(i32, i64, i64*) #1

declare dso_local i32 @sc27xx_efuse_unlock(%struct.sc27xx_efuse*) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
