; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_enable_snoop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-snoop.c_aspeed_lpc_enable_snoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_lpc_snoop = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.device*, i32*, i32, i32 }
%struct.device = type { i32 }
%struct.aspeed_lpc_snoop_model_data = type { i64 }

@SNOOP_FIFO_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@DEVICE_NAME = common dso_local global i32 0, align 4
@snoop_fops = common dso_local global i32 0, align 4
@HICR5_EN_SNP0W = common dso_local global i32 0, align 4
@HICR5_ENINT_SNP0W = common dso_local global i32 0, align 4
@SNPWADR_CH0_MASK = common dso_local global i32 0, align 4
@SNPWADR_CH0_SHIFT = common dso_local global i32 0, align 4
@HICRB_ENSNP0D = common dso_local global i32 0, align 4
@HICR5_EN_SNP1W = common dso_local global i32 0, align 4
@HICR5_ENINT_SNP1W = common dso_local global i32 0, align 4
@SNPWADR_CH1_MASK = common dso_local global i32 0, align 4
@SNPWADR_CH1_SHIFT = common dso_local global i32 0, align 4
@HICRB_ENSNP1D = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HICR5 = common dso_local global i32 0, align 4
@SNPWADR = common dso_local global i32 0, align 4
@HICRB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_lpc_snoop*, %struct.device*, i32, i32)* @aspeed_lpc_enable_snoop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_enable_snoop(%struct.aspeed_lpc_snoop* %0, %struct.device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aspeed_lpc_snoop*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.aspeed_lpc_snoop_model_data*, align 8
  store %struct.aspeed_lpc_snoop* %0, %struct.aspeed_lpc_snoop** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = call %struct.aspeed_lpc_snoop_model_data* @of_device_get_match_data(%struct.device* %16)
  store %struct.aspeed_lpc_snoop_model_data* %17, %struct.aspeed_lpc_snoop_model_data** %15, align 8
  %18 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %19 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = call i32 @init_waitqueue_head(i32* %24)
  %26 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %27 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* @SNOOP_FIFO_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kfifo_alloc(i32* %32, i32 %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %142

40:                                               ; preds = %4
  %41 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %42 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %43 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 %41, i32* %49, align 4
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i32, i32* @DEVICE_NAME, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @devm_kasprintf(%struct.device* %50, i32 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %56 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i32 %54, i32* %62, align 8
  %63 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %64 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32* @snoop_fops, i32** %70, align 8
  %71 = load %struct.device*, %struct.device** %7, align 8
  %72 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %73 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store %struct.device* %71, %struct.device** %79, align 8
  %80 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %81 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @misc_register(%struct.TYPE_4__* %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %40
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %5, align 4
  br label %142

92:                                               ; preds = %40
  %93 = load i32, i32* %8, align 4
  switch i32 %93, label %108 [
    i32 0, label %94
    i32 1, label %101
  ]

94:                                               ; preds = %92
  %95 = load i32, i32* @HICR5_EN_SNP0W, align 4
  %96 = load i32, i32* @HICR5_ENINT_SNP0W, align 4
  %97 = or i32 %95, %96
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* @SNPWADR_CH0_MASK, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* @SNPWADR_CH0_SHIFT, align 4
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* @HICRB_ENSNP0D, align 4
  store i32 %100, i32* %14, align 4
  br label %111

101:                                              ; preds = %92
  %102 = load i32, i32* @HICR5_EN_SNP1W, align 4
  %103 = load i32, i32* @HICR5_ENINT_SNP1W, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* @SNPWADR_CH1_MASK, align 4
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @SNPWADR_CH1_SHIFT, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* @HICRB_ENSNP1D, align 4
  store i32 %107, i32* %14, align 4
  br label %111

108:                                              ; preds = %92
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %5, align 4
  br label %142

111:                                              ; preds = %101, %94
  %112 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %113 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @HICR5, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @regmap_update_bits(i32 %114, i32 %115, i32 %116, i32 %117)
  %119 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %120 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SNPWADR, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %124, %125
  %127 = call i32 @regmap_update_bits(i32 %121, i32 %122, i32 %123, i32 %126)
  %128 = load %struct.aspeed_lpc_snoop_model_data*, %struct.aspeed_lpc_snoop_model_data** %15, align 8
  %129 = getelementptr inbounds %struct.aspeed_lpc_snoop_model_data, %struct.aspeed_lpc_snoop_model_data* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %111
  %133 = load %struct.aspeed_lpc_snoop*, %struct.aspeed_lpc_snoop** %6, align 8
  %134 = getelementptr inbounds %struct.aspeed_lpc_snoop, %struct.aspeed_lpc_snoop* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HICRB, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @regmap_update_bits(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %111
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %108, %90, %38
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.aspeed_lpc_snoop_model_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
