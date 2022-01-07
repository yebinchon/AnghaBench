; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinctrl_parse_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx1-core.c_imx1_pinctrl_parse_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imx1_pin_group = type { i32, %struct.TYPE_2__*, i8**, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8* }
%struct.imx1_pinctrl_soc_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"group(%d): %pOFn\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"fsl,pins\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Not a valid fsl,pins property (%pOFn)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.imx1_pin_group*, %struct.imx1_pinctrl_soc_info*, i32)* @imx1_pinctrl_parse_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx1_pinctrl_parse_groups(%struct.device_node* %0, %struct.imx1_pin_group* %1, %struct.imx1_pinctrl_soc_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.imx1_pin_group*, align 8
  %8 = alloca %struct.imx1_pinctrl_soc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.imx1_pin_group* %1, %struct.imx1_pin_group** %7, align 8
  store %struct.imx1_pinctrl_soc_info* %2, %struct.imx1_pinctrl_soc_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %14 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.device_node* %17)
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = getelementptr inbounds %struct.device_node, %struct.device_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %23 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32* @of_get_property(%struct.device_node* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  store i32* %25, i32** %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = srem i32 %29, 12
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28, %4
  %33 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %34 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @dev_notice(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %138

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = sdiv i32 %41, 12
  %43 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %44 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %46 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %49 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kcalloc(i32 %47, i32 %50, i32 4, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_2__*
  %54 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %55 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %54, i32 0, i32 1
  store %struct.TYPE_2__* %53, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.imx1_pinctrl_soc_info*, %struct.imx1_pinctrl_soc_info** %8, align 8
  %57 = getelementptr inbounds %struct.imx1_pinctrl_soc_info, %struct.imx1_pinctrl_soc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %60 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @devm_kcalloc(i32 %58, i32 %61, i32 4, i32 %62)
  %64 = bitcast i8* %63 to i8**
  %65 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %66 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %65, i32 0, i32 2
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %68 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %40
  %72 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %73 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %72, i32 0, i32 2
  %74 = load i8**, i8*** %73, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %40
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %138

79:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %134, %79
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %83 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %80
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  %89 = load i32, i32* %87, align 4
  %90 = call i8* @be32_to_cpu(i32 %89)
  %91 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %92 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %91, i32 0, i32 1
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i8* %90, i8** %97, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %11, align 8
  %100 = load i32, i32* %98, align 4
  %101 = call i8* @be32_to_cpu(i32 %100)
  %102 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %103 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i8* %101, i8** %108, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %11, align 8
  %111 = load i32, i32* %109, align 4
  %112 = call i8* @be32_to_cpu(i32 %111)
  %113 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %114 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i8* %112, i8** %119, align 8
  %120 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %121 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %120, i32 0, i32 1
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.imx1_pin_group*, %struct.imx1_pin_group** %7, align 8
  %129 = getelementptr inbounds %struct.imx1_pin_group, %struct.imx1_pin_group* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  store i8* %127, i8** %133, align 8
  br label %134

134:                                              ; preds = %86
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %80

137:                                              ; preds = %80
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %76, %32
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_notice(i32, i8*, %struct.device_node*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
