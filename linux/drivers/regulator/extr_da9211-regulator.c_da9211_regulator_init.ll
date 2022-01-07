; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9211 = type { i32, i64, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32**, i32*, i32* }
%struct.regulator_config = type { i32*, i32, i32, %struct.da9211*, i32, i32 }

@DA9211_REG_CONFIG_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to read CONFIG_E reg: %d\0A\00", align 1
@DA9211_SLAVE_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Configuration is mismatched\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@da9211_regulators = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to register DA9211 regulator\0A\00", align 1
@DA9211_REG_MASK_B = common dso_local global i32 0, align 4
@DA9211_M_OV_CURR_A = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to update mask reg: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9211*)* @da9211_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_regulator_init(%struct.da9211* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9211*, align 8
  %4 = alloca %struct.regulator_config, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.da9211* %0, %struct.da9211** %3, align 8
  %8 = bitcast %struct.regulator_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.da9211*, %struct.da9211** %3, align 8
  %10 = getelementptr inbounds %struct.da9211, %struct.da9211* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DA9211_REG_CONFIG_E, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.da9211*, %struct.da9211** %3, align 8
  %18 = getelementptr inbounds %struct.da9211, %struct.da9211* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %198

23:                                               ; preds = %1
  %24 = load i32, i32* @DA9211_SLAVE_SEL, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.da9211*, %struct.da9211** %3, align 8
  %28 = getelementptr inbounds %struct.da9211, %struct.da9211* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.da9211*, %struct.da9211** %3, align 8
  %38 = getelementptr inbounds %struct.da9211, %struct.da9211* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %60

39:                                               ; preds = %33, %23
  %40 = load %struct.da9211*, %struct.da9211** %3, align 8
  %41 = getelementptr inbounds %struct.da9211, %struct.da9211* %40, i32 0, i32 5
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.da9211*, %struct.da9211** %3, align 8
  %51 = getelementptr inbounds %struct.da9211, %struct.da9211* %50, i32 0, i32 0
  store i32 2, i32* %51, align 8
  br label %59

52:                                               ; preds = %46, %39
  %53 = load %struct.da9211*, %struct.da9211** %3, align 8
  %54 = getelementptr inbounds %struct.da9211, %struct.da9211* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %198

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %36
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %194, %60
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.da9211*, %struct.da9211** %3, align 8
  %64 = getelementptr inbounds %struct.da9211, %struct.da9211* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %197

67:                                               ; preds = %61
  %68 = load %struct.da9211*, %struct.da9211** %3, align 8
  %69 = getelementptr inbounds %struct.da9211, %struct.da9211* %68, i32 0, i32 5
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 5
  store i32 %76, i32* %77, align 4
  %78 = load %struct.da9211*, %struct.da9211** %3, align 8
  %79 = getelementptr inbounds %struct.da9211, %struct.da9211* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 4
  store i32 %80, i32* %81, align 8
  %82 = load %struct.da9211*, %struct.da9211** %3, align 8
  %83 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 3
  store %struct.da9211* %82, %struct.da9211** %83, align 8
  %84 = load %struct.da9211*, %struct.da9211** %3, align 8
  %85 = getelementptr inbounds %struct.da9211, %struct.da9211* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 2
  store i32 %86, i32* %87, align 4
  %88 = load %struct.da9211*, %struct.da9211** %3, align 8
  %89 = getelementptr inbounds %struct.da9211, %struct.da9211* %88, i32 0, i32 5
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load %struct.da9211*, %struct.da9211** %3, align 8
  %99 = getelementptr inbounds %struct.da9211, %struct.da9211* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %119

108:                                              ; preds = %67
  %109 = load %struct.da9211*, %struct.da9211** %3, align 8
  %110 = getelementptr inbounds %struct.da9211, %struct.da9211* %109, i32 0, i32 5
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  store i32* %117, i32** %118, align 8
  br label %121

119:                                              ; preds = %67
  %120 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %119, %108
  %122 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load %struct.da9211*, %struct.da9211** %3, align 8
  %127 = getelementptr inbounds %struct.da9211, %struct.da9211* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %4, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @devm_gpiod_unhinge(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %125, %121
  %133 = load %struct.da9211*, %struct.da9211** %3, align 8
  %134 = getelementptr inbounds %struct.da9211, %struct.da9211* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32*, i32** @da9211_regulators, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @devm_regulator_register(i32 %135, i32* %139, %struct.regulator_config* %4)
  %141 = load %struct.da9211*, %struct.da9211** %3, align 8
  %142 = getelementptr inbounds %struct.da9211, %struct.da9211* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load %struct.da9211*, %struct.da9211** %3, align 8
  %148 = getelementptr inbounds %struct.da9211, %struct.da9211* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @IS_ERR(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %169

156:                                              ; preds = %132
  %157 = load %struct.da9211*, %struct.da9211** %3, align 8
  %158 = getelementptr inbounds %struct.da9211, %struct.da9211* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.da9211*, %struct.da9211** %3, align 8
  %162 = getelementptr inbounds %struct.da9211, %struct.da9211* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %198

169:                                              ; preds = %132
  %170 = load %struct.da9211*, %struct.da9211** %3, align 8
  %171 = getelementptr inbounds %struct.da9211, %struct.da9211* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %169
  %175 = load %struct.da9211*, %struct.da9211** %3, align 8
  %176 = getelementptr inbounds %struct.da9211, %struct.da9211* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @DA9211_REG_MASK_B, align 4
  %179 = load i32, i32* @DA9211_M_OV_CURR_A, align 4
  %180 = load i32, i32* %5, align 4
  %181 = shl i32 %179, %180
  %182 = call i32 @regmap_update_bits(i32 %177, i32 %178, i32 %181, i32 0)
  store i32 %182, i32* %6, align 4
  %183 = load i32, i32* %6, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %174
  %186 = load %struct.da9211*, %struct.da9211** %3, align 8
  %187 = getelementptr inbounds %struct.da9211, %struct.da9211* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %6, align 4
  %190 = call i32 (i32, i8*, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %2, align 4
  br label %198

192:                                              ; preds = %174
  br label %193

193:                                              ; preds = %192, %169
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %5, align 4
  br label %61

197:                                              ; preds = %61
  store i32 0, i32* %2, align 4
  br label %198

198:                                              ; preds = %197, %185, %156, %52, %16
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @devm_gpiod_unhinge(i32, i32*) #2

declare dso_local i32 @devm_regulator_register(i32, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
