; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_pinmux_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sirf/extr_pinctrl-sirf.c_sirfsoc_pinmux_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sirfsoc_pmx = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.sirfsoc_pinctrl_data = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.sirfsoc_pinctrl_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't map gpio registers\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't map rsc registers\0A\00", align 1
@pinmux_ids = common dso_local global i32 0, align 4
@sirfsoc_pin_groups = common dso_local global i32 0, align 4
@sirfsoc_pingrp_cnt = common dso_local global i32 0, align 4
@sirfsoc_pmx_functions = common dso_local global i32 0, align 4
@sirfsoc_pmxfunc_cnt = common dso_local global i32 0, align 4
@sirfsoc_pinmux_desc = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"could not register SIRFSOC pinmux driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"initialized SIRFSOC pinmux driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sirfsoc_pinmux_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_pinmux_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_pmx*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.sirfsoc_pinctrl_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sirfsoc_pmx* @devm_kzalloc(%struct.TYPE_9__* %13, i32 24, i32 %14)
  store %struct.sirfsoc_pmx* %15, %struct.sirfsoc_pmx** %5, align 8
  %16 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %17 = icmp ne %struct.sirfsoc_pmx* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %115

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %24, i32 0, i32 3
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.sirfsoc_pmx* %27)
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call i32 @of_iomap(%struct.device_node* %29, i32 0)
  %31 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %21
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(%struct.TYPE_9__* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %115

43:                                               ; preds = %21
  %44 = call i32 (...) @sirfsoc_rsc_of_iomap()
  %45 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %46 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %48 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %109

57:                                               ; preds = %43
  %58 = load i32, i32* @pinmux_ids, align 4
  %59 = load %struct.device_node*, %struct.device_node** %6, align 8
  %60 = call %struct.TYPE_10__* @of_match_node(i32 %58, %struct.device_node* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %61, align 8
  store %struct.sirfsoc_pinctrl_data* %62, %struct.sirfsoc_pinctrl_data** %7, align 8
  %63 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %64 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* @sirfsoc_pin_groups, align 4
  %66 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* @sirfsoc_pingrp_cnt, align 4
  %69 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %70 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* @sirfsoc_pmx_functions, align 4
  %72 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* @sirfsoc_pmxfunc_cnt, align 4
  %75 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %76 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sirfsoc_pinmux_desc, i32 0, i32 1), align 4
  %78 = load %struct.sirfsoc_pinctrl_data*, %struct.sirfsoc_pinctrl_data** %7, align 8
  %79 = getelementptr inbounds %struct.sirfsoc_pinctrl_data, %struct.sirfsoc_pinctrl_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sirfsoc_pinmux_desc, i32 0, i32 0), align 4
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %84 = call i32 @pinctrl_register(%struct.TYPE_8__* @sirfsoc_pinmux_desc, %struct.TYPE_9__* %82, %struct.sirfsoc_pmx* %83)
  %85 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %86 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %88 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %57
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_9__* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %96 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %97 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %4, align 4
  br label %104

100:                                              ; preds = %57
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_info(%struct.TYPE_9__* %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %115

104:                                              ; preds = %92
  %105 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %106 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @iounmap(i32 %107)
  br label %109

109:                                              ; preds = %104, %51
  %110 = load %struct.sirfsoc_pmx*, %struct.sirfsoc_pmx** %5, align 8
  %111 = getelementptr inbounds %struct.sirfsoc_pmx, %struct.sirfsoc_pmx* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @iounmap(i32 %112)
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %100, %37, %18
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.sirfsoc_pmx* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sirfsoc_pmx*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @sirfsoc_rsc_of_iomap(...) #1

declare dso_local %struct.TYPE_10__* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @pinctrl_register(%struct.TYPE_8__*, %struct.TYPE_9__*, %struct.sirfsoc_pmx*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
