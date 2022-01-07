; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.byt_gpio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intel_pingroup*, %struct.intel_function* }
%struct.intel_pingroup = type { i32, i64 }
%struct.intel_function = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@BYT_DEFAULT_GPIO_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @byt_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_set_mux(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.byt_gpio*, align 8
  %8 = alloca %struct.intel_function, align 4
  %9 = alloca %struct.intel_pingroup, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.byt_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.byt_gpio* %11, %struct.byt_gpio** %7, align 8
  %12 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.intel_function*, %struct.intel_function** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.intel_function, %struct.intel_function* %16, i64 %18
  %20 = bitcast %struct.intel_function* %8 to i8*
  %21 = bitcast %struct.intel_function* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %23 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.intel_pingroup*, %struct.intel_pingroup** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.intel_pingroup, %struct.intel_pingroup* %26, i64 %28
  %30 = bitcast %struct.intel_pingroup* %9 to i8*
  %31 = bitcast %struct.intel_pingroup* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = getelementptr inbounds %struct.intel_pingroup, %struct.intel_pingroup* %9, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %3
  %36 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %37 = getelementptr inbounds %struct.intel_pingroup, %struct.intel_pingroup* %9, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.intel_pingroup* %9 to { i32, i64 }*
  %40 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %39, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @byt_set_group_mixed_mux(%struct.byt_gpio* %36, i32 %41, i64 %43, i64 %38)
  br label %70

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.intel_function, %struct.intel_function* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strcmp(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %45
  %51 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %52 = load i32, i32* @BYT_DEFAULT_GPIO_MUX, align 4
  %53 = bitcast %struct.intel_pingroup* %9 to { i32, i64 }*
  %54 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %53, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @byt_set_group_simple_mux(%struct.byt_gpio* %51, i32 %55, i64 %57, i32 %52)
  br label %69

59:                                               ; preds = %45
  %60 = load %struct.byt_gpio*, %struct.byt_gpio** %7, align 8
  %61 = getelementptr inbounds %struct.intel_pingroup, %struct.intel_pingroup* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %struct.intel_pingroup* %9 to { i32, i64 }*
  %64 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %63, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @byt_set_group_simple_mux(%struct.byt_gpio* %60, i32 %65, i64 %67, i32 %62)
  br label %69

69:                                               ; preds = %59, %50
  br label %70

70:                                               ; preds = %69, %35
  ret i32 0
}

declare dso_local %struct.byt_gpio* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @byt_set_group_mixed_mux(%struct.byt_gpio*, i32, i64, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @byt_set_group_simple_mux(%struct.byt_gpio*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
