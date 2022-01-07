; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rzn1.c_rzn1_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.rzn1_pinctrl = type { i32*, i8*, i32, i32*, i8*, i8*, i8*, i8* }
%struct.resource = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@rzn1_pinctrl_desc = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@rzn1_pins = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fail to probe dt properties\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"could not register rzn1 pinctrl driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rzn1_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rzn1_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rzn1_pinctrl*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rzn1_pinctrl* @devm_kzalloc(i32* %8, i32 64, i32 %9)
  store %struct.rzn1_pinctrl* %10, %struct.rzn1_pinctrl** %4, align 8
  %11 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %12 = icmp ne %struct.rzn1_pinctrl* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %157

16:                                               ; preds = %1
  %17 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %18 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 -1, i32* %20, align 4
  %21 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %22 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 -1, i32* %24, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %5, align 8
  %28 = load %struct.resource*, %struct.resource** %5, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr i8, i8* %31, i64 1024
  %33 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %34 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %33, i32 0, i32 7
  store i8* %32, i8** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i8* @devm_ioremap_resource(i32* %36, %struct.resource* %37)
  %39 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %40 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %42 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @IS_ERR(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %16
  %47 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %48 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %47, i32 0, i32 6
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @PTR_ERR(i8* %49)
  store i32 %50, i32* %2, align 4
  br label %157

51:                                               ; preds = %16
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 1)
  store %struct.resource* %54, %struct.resource** %5, align 8
  %55 = load %struct.resource*, %struct.resource** %5, align 8
  %56 = getelementptr inbounds %struct.resource, %struct.resource* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr i8, i8* %58, i64 1024
  %60 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %61 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.resource*, %struct.resource** %5, align 8
  %65 = call i8* @devm_ioremap_resource(i32* %63, %struct.resource* %64)
  %66 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %67 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  %68 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %69 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %68, i32 0, i32 4
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %51
  %74 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %75 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %2, align 4
  br label %157

78:                                               ; preds = %51
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i8* @devm_clk_get(i32* %80, i32* null)
  %82 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %83 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %85 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %78
  %90 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %91 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @PTR_ERR(i8* %92)
  store i32 %93, i32* %2, align 4
  br label %157

94:                                               ; preds = %78
  %95 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @clk_prepare_enable(i8* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %157

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %107 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %106, i32 0, i32 3
  store i32* %105, i32** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @dev_name(i32* %109)
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rzn1_pinctrl_desc, i32 0, i32 2), align 4
  %111 = load i32, i32* @rzn1_pins, align 4
  store i32 %111, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rzn1_pinctrl_desc, i32 0, i32 1), align 4
  %112 = load i32, i32* @rzn1_pins, align 4
  %113 = call i32 @ARRAY_SIZE(i32 %112)
  store i32 %113, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rzn1_pinctrl_desc, i32 0, i32 0), align 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %116 = call i32 @rzn1_pinctrl_probe_dt(%struct.platform_device* %114, %struct.rzn1_pinctrl* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(i32* %121, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %151

123:                                              ; preds = %103
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %126 = call i32 @platform_set_drvdata(%struct.platform_device* %124, %struct.rzn1_pinctrl* %125)
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %130 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %131 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %130, i32 0, i32 2
  %132 = call i32 @devm_pinctrl_register_and_init(i32* %128, %struct.TYPE_3__* @rzn1_pinctrl_desc, %struct.rzn1_pinctrl* %129, i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %123
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %151

139:                                              ; preds = %123
  %140 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %141 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pinctrl_enable(i32 %142)
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %151

147:                                              ; preds = %139
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @dev_info(i32* %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %157

151:                                              ; preds = %146, %135, %119
  %152 = load %struct.rzn1_pinctrl*, %struct.rzn1_pinctrl** %4, align 8
  %153 = getelementptr inbounds %struct.rzn1_pinctrl, %struct.rzn1_pinctrl* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @clk_disable_unprepare(i8* %154)
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %151, %147, %101, %89, %73, %46, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.rzn1_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rzn1_pinctrl_probe_dt(%struct.platform_device*, %struct.rzn1_pinctrl*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rzn1_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register_and_init(i32*, %struct.TYPE_3__*, %struct.rzn1_pinctrl*, i32*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
