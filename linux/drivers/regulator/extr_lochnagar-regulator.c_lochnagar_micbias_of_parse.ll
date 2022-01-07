; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lochnagar-regulator.c_lochnagar_micbias_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lochnagar-regulator.c_lochnagar_micbias_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { %struct.lochnagar* }
%struct.lochnagar = type { i32, i32, i32 }

@LOCHNAGAR_MIC1VDD = common dso_local global i32 0, align 4
@LOCHNAGAR2_P2_MICBIAS_SRC_SHIFT = common dso_local global i32 0, align 4
@LOCHNAGAR2_P1_MICBIAS_SRC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cirrus,micbias-input\00", align 1
@LOCHNAGAR2_ANALOGUE_PATH_CTRL2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to update micbias source: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @lochnagar_micbias_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_micbias_of_parse(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.lochnagar*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %13 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %14 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 0
  %15 = load %struct.lochnagar*, %struct.lochnagar** %14, align 8
  store %struct.lochnagar* %15, %struct.lochnagar** %8, align 8
  %16 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LOCHNAGAR_MIC1VDD, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @LOCHNAGAR2_P2_MICBIAS_SRC_SHIFT, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @LOCHNAGAR2_P1_MICBIAS_SRC_MASK, align 4
  %24 = load i32, i32* %9, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %56

30:                                               ; preds = %3
  %31 = load %struct.lochnagar*, %struct.lochnagar** %8, align 8
  %32 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.lochnagar*, %struct.lochnagar** %8, align 8
  %35 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LOCHNAGAR2_ANALOGUE_PATH_CTRL2, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @regmap_update_bits(i32 %36, i32 %37, i32 %38, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load %struct.lochnagar*, %struct.lochnagar** %8, align 8
  %44 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load %struct.lochnagar*, %struct.lochnagar** %8, align 8
  %50 = getelementptr inbounds %struct.lochnagar, %struct.lochnagar* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55, %3
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
