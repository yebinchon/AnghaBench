; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_set_soc_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-baytrail.c_byt_set_soc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.byt_gpio = type { %struct.TYPE_2__*, %struct.intel_pinctrl_soc_data*, %struct.intel_community* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_community = type { i32 }
%struct.intel_pinctrl_soc_data = type { i32, %struct.intel_community* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.byt_gpio*, %struct.intel_pinctrl_soc_data*)* @byt_set_soc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byt_set_soc_data(%struct.byt_gpio* %0, %struct.intel_pinctrl_soc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.byt_gpio*, align 8
  %5 = alloca %struct.intel_pinctrl_soc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_community*, align 8
  store %struct.byt_gpio* %0, %struct.byt_gpio** %4, align 8
  store %struct.intel_pinctrl_soc_data* %1, %struct.intel_pinctrl_soc_data** %5, align 8
  %8 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %5, align 8
  %9 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %10 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %9, i32 0, i32 1
  store %struct.intel_pinctrl_soc_data* %8, %struct.intel_pinctrl_soc_data** %10, align 8
  %11 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %12 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %5, align 8
  %16 = getelementptr inbounds %struct.intel_pinctrl_soc_data, %struct.intel_pinctrl_soc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.intel_community* @devm_kcalloc(i32* %14, i32 %17, i32 4, i32 %18)
  %20 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %21 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %20, i32 0, i32 2
  store %struct.intel_community* %19, %struct.intel_community** %21, align 8
  %22 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %23 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %22, i32 0, i32 2
  %24 = load %struct.intel_community*, %struct.intel_community** %23, align 8
  %25 = icmp ne %struct.intel_community* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %71, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %5, align 8
  %33 = getelementptr inbounds %struct.intel_pinctrl_soc_data, %struct.intel_pinctrl_soc_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %74

36:                                               ; preds = %30
  %37 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %38 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %37, i32 0, i32 2
  %39 = load %struct.intel_community*, %struct.intel_community** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %39, i64 %41
  store %struct.intel_community* %42, %struct.intel_community** %7, align 8
  %43 = load %struct.intel_community*, %struct.intel_community** %7, align 8
  %44 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %45 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %44, i32 0, i32 1
  %46 = load %struct.intel_pinctrl_soc_data*, %struct.intel_pinctrl_soc_data** %45, align 8
  %47 = getelementptr inbounds %struct.intel_pinctrl_soc_data, %struct.intel_pinctrl_soc_data* %46, i32 0, i32 1
  %48 = load %struct.intel_community*, %struct.intel_community** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %48, i64 %50
  %52 = bitcast %struct.intel_community* %43 to i8*
  %53 = bitcast %struct.intel_community* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.byt_gpio*, %struct.byt_gpio** %4, align 8
  %55 = getelementptr inbounds %struct.byt_gpio, %struct.byt_gpio* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @devm_platform_ioremap_resource(%struct.TYPE_2__* %56, i32 0)
  %58 = load %struct.intel_community*, %struct.intel_community** %7, align 8
  %59 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.intel_community*, %struct.intel_community** %7, align 8
  %61 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @IS_ERR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %36
  %66 = load %struct.intel_community*, %struct.intel_community** %7, align 8
  %67 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %30

74:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %65, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.intel_community* @devm_kcalloc(i32*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @devm_platform_ioremap_resource(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
