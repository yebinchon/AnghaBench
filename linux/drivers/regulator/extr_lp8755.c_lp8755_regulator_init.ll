; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8755.c_lp8755_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8755.c_lp8755_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.lp8755_chip = type { i64, %struct.TYPE_5__*, i32**, i32, %struct.lp8755_platform_data* }
%struct.TYPE_5__ = type { i32 }
%struct.lp8755_platform_data = type { i32* }
%struct.regulator_config = type { i32, i32, %struct.lp8755_chip*, %struct.TYPE_5__*, i32 }

@mphase_buck = common dso_local global %struct.TYPE_4__* null, align 8
@lp8755_regulators = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"regulator init failed: buck %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8755_chip*)* @lp8755_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8755_regulator_init(%struct.lp8755_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp8755_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lp8755_platform_data*, align 8
  %8 = alloca %struct.regulator_config, align 8
  store %struct.lp8755_chip* %0, %struct.lp8755_chip** %3, align 8
  %9 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %10 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %9, i32 0, i32 4
  %11 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %10, align 8
  store %struct.lp8755_platform_data* %11, %struct.lp8755_platform_data** %7, align 8
  %12 = bitcast %struct.regulator_config* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %14 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %18 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 3
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %20, align 8
  %21 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %22 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 2
  store %struct.lp8755_chip* %21, %struct.lp8755_chip** %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %104, %1
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mphase_buck, align 8
  %26 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %27 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %24, %31
  br i1 %32, label %33, label %107

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mphase_buck, align 8
  %35 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %36 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.lp8755_platform_data*, %struct.lp8755_platform_data** %7, align 8
  %46 = getelementptr inbounds %struct.lp8755_platform_data, %struct.lp8755_platform_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %54 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %60 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32*, i32** @lp8755_regulators, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32* @devm_regulator_register(%struct.TYPE_5__* %61, i32* %65, %struct.regulator_config* %8)
  %67 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %68 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  store i32* %66, i32** %72, align 8
  %73 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %74 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %73, i32 0, i32 2
  %75 = load i32**, i32*** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @IS_ERR(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %103

82:                                               ; preds = %33
  %83 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %84 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @PTR_ERR(i32* %89)
  store i32 %90, i32* %4, align 4
  %91 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %92 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  store i32* null, i32** %96, align 8
  %97 = load %struct.lp8755_chip*, %struct.lp8755_chip** %3, align 8
  %98 = getelementptr inbounds %struct.lp8755_chip, %struct.lp8755_chip* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @dev_err(%struct.TYPE_5__* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %108

103:                                              ; preds = %33
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %23

107:                                              ; preds = %23
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %82
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @devm_regulator_register(%struct.TYPE_5__*, i32*, %struct.regulator_config*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
