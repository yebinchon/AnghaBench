; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_set_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ad5398.c_ad5398_set_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ad5398_chip_info = type { i32, i32, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"changing current %duA\0A\00", align 1
@AD5398_CURRENT_EN_MASK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32, i32)* @ad5398_set_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5398_set_current_limit(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ad5398_chip_info*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = call %struct.ad5398_chip_info* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.ad5398_chip_info* %15, %struct.ad5398_chip_info** %8, align 8
  %16 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %17 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %16, i32 0, i32 5
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  %19 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %20 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %23 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %28 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %33 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %38 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %43 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %48 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %54 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %117

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %63 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %61, %64
  %66 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %67 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul i32 %65, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @DIV_ROUND_UP(i32 %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @ad5398_calc_current(%struct.ad5398_chip_info* %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %117

80:                                               ; preds = %60
  %81 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @ad5398_calc_current(%struct.ad5398_chip_info* %83, i32 %84)
  %86 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %88 = call i32 @ad5398_read_reg(%struct.i2c_client* %87, i16* %12)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %4, align 4
  br label %117

93:                                               ; preds = %80
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %96 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %94, %97
  %99 = load %struct.ad5398_chip_info*, %struct.ad5398_chip_info** %8, align 8
  %100 = getelementptr inbounds %struct.ad5398_chip_info, %struct.ad5398_chip_info* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = and i32 %98, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = trunc i32 %103 to i16
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* %12, align 2
  %107 = zext i16 %106 to i32
  %108 = load i16, i16* @AD5398_CURRENT_EN_MASK, align 2
  %109 = zext i16 %108 to i32
  %110 = and i32 %107, %109
  %111 = or i32 %105, %110
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %12, align 2
  %113 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %114 = load i16, i16* %12, align 2
  %115 = call i32 @ad5398_write_reg(%struct.i2c_client* %113, i16 zeroext %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %93, %91, %77, %57
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.ad5398_chip_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @ad5398_calc_current(%struct.ad5398_chip_info*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ad5398_read_reg(%struct.i2c_client*, i16*) #1

declare dso_local i32 @ad5398_write_reg(%struct.i2c_client*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
