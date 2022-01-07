; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9055_regulator = type { i32, i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.regulator_config = type { i32, i32 }
%struct.da9055_pdata = type { i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"DA9055 GPI %d\00", align 1
@GPIOF_DIR_IN = common dso_local global i32 0, align 4
@DA9055_E_GPI_MASK = common dso_local global i32 0, align 4
@DA9055_E_GPI_SHIFT = common dso_local global i32 0, align 4
@DA9055_V_GPI_MASK = common dso_local global i32 0, align 4
@DA9055_V_GPI_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9055_regulator*, %struct.regulator_config*, %struct.da9055_pdata*, i32)* @da9055_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_gpio_init(%struct.da9055_regulator* %0, %struct.regulator_config* %1, %struct.da9055_pdata* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9055_regulator*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.da9055_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.da9055_regulator_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [18 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca [18 x i8], align 16
  %15 = alloca i32, align 4
  store %struct.da9055_regulator* %0, %struct.da9055_regulator** %6, align 8
  store %struct.regulator_config* %1, %struct.regulator_config** %7, align 8
  store %struct.da9055_pdata* %2, %struct.da9055_pdata** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %17 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %16, i32 0, i32 2
  %18 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %17, align 8
  store %struct.da9055_regulator_info* %18, %struct.da9055_regulator_info** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %20 = icmp ne %struct.da9055_pdata* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %155

22:                                               ; preds = %4
  %23 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %24 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %89

27:                                               ; preds = %22
  %28 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %29 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %89

36:                                               ; preds = %27
  %37 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %38 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %45 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @sprintf(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %57 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @GPIOF_DIR_IN, align 4
  %61 = getelementptr inbounds [18 x i8], [18 x i8]* %12, i64 0, i64 0
  %62 = call i32 @devm_gpio_request_one(i32 %58, i32 %59, i32 %60, i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %36
  br label %153

66:                                               ; preds = %36
  %67 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %68 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %10, align 8
  %71 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @DA9055_E_GPI_MASK, align 4
  %75 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %76 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @DA9055_E_GPI_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = call i32 @da9055_reg_update(i32 %69, i32 %73, i32 %74, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %66
  br label %153

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %27, %22
  %90 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %91 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %152

94:                                               ; preds = %89
  %95 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %96 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %152

103:                                              ; preds = %94
  %104 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %105 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %15, align 4
  %111 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %112 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %119 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @sprintf(i8* %120, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %124 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @GPIOF_DIR_IN, align 4
  %128 = getelementptr inbounds [18 x i8], [18 x i8]* %14, i64 0, i64 0
  %129 = call i32 @devm_gpio_request_one(i32 %125, i32 %126, i32 %127, i8* %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %103
  br label %153

133:                                              ; preds = %103
  %134 = load %struct.da9055_regulator*, %struct.da9055_regulator** %6, align 8
  %135 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %10, align 8
  %138 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DA9055_V_GPI_MASK, align 4
  %142 = load %struct.da9055_pdata*, %struct.da9055_pdata** %8, align 8
  %143 = getelementptr inbounds %struct.da9055_pdata, %struct.da9055_pdata* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @DA9055_V_GPI_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = call i32 @da9055_reg_update(i32 %136, i32 %140, i32 %141, i32 %150)
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %133, %94, %89
  br label %153

153:                                              ; preds = %152, %132, %87, %65
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %153, %21
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @devm_gpio_request_one(i32, i32, i32, i8*) #1

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
