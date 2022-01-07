; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_jz4740.c_jz4740_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_hdrc_platform_data = type { i32* }
%struct.platform_device = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.jz4740_glue = type { %struct.clk*, %struct.platform_device*, %struct.TYPE_4__* }
%struct.clk = type { i32 }

@jz4740_musb_platform_data = common dso_local global %struct.musb_hdrc_platform_data zeroinitializer, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"udc\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@jz4740_musb_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jz4740_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.musb_hdrc_platform_data*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.jz4740_glue*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.musb_hdrc_platform_data* @jz4740_musb_platform_data, %struct.musb_hdrc_platform_data** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.jz4740_glue* @devm_kzalloc(%struct.TYPE_4__* %10, i32 24, i32 %11)
  store %struct.jz4740_glue* %12, %struct.jz4740_glue** %6, align 8
  %13 = load %struct.jz4740_glue*, %struct.jz4740_glue** %6, align 8
  %14 = icmp ne %struct.jz4740_glue* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %113

18:                                               ; preds = %1
  %19 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %20 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %5, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = icmp ne %struct.platform_device* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %113

29:                                               ; preds = %18
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.clk* @devm_clk_get(%struct.TYPE_4__* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %32, %struct.clk** %7, align 8
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  %34 = call i64 @IS_ERR(%struct.clk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.clk*, %struct.clk** %7, align 8
  %41 = call i32 @PTR_ERR(%struct.clk* %40)
  store i32 %41, i32* %8, align 4
  br label %109

42:                                               ; preds = %29
  %43 = load %struct.clk*, %struct.clk** %7, align 8
  %44 = call i32 @clk_prepare_enable(%struct.clk* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 @dev_err(%struct.TYPE_4__* %49, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %109

51:                                               ; preds = %42
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.jz4740_glue*, %struct.jz4740_glue** %6, align 8
  %60 = getelementptr inbounds %struct.jz4740_glue, %struct.jz4740_glue* %59, i32 0, i32 2
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %62 = load %struct.jz4740_glue*, %struct.jz4740_glue** %6, align 8
  %63 = getelementptr inbounds %struct.jz4740_glue, %struct.jz4740_glue* %62, i32 0, i32 1
  store %struct.platform_device* %61, %struct.platform_device** %63, align 8
  %64 = load %struct.clk*, %struct.clk** %7, align 8
  %65 = load %struct.jz4740_glue*, %struct.jz4740_glue** %6, align 8
  %66 = getelementptr inbounds %struct.jz4740_glue, %struct.jz4740_glue* %65, i32 0, i32 0
  store %struct.clk* %64, %struct.clk** %66, align 8
  %67 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %4, align 8
  %68 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %67, i32 0, i32 0
  store i32* @jz4740_musb_ops, i32** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.jz4740_glue*, %struct.jz4740_glue** %6, align 8
  %71 = call i32 @platform_set_drvdata(%struct.platform_device* %69, %struct.jz4740_glue* %70)
  %72 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @platform_device_add_resources(%struct.platform_device* %72, i32 %75, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %51
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_4__* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %106

86:                                               ; preds = %51
  %87 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %88 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %4, align 8
  %89 = call i32 @platform_device_add_data(%struct.platform_device* %87, %struct.musb_hdrc_platform_data* %88, i32 8)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_4__* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %106

96:                                               ; preds = %86
  %97 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %98 = call i32 @platform_device_add(%struct.platform_device* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_4__* %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %106

105:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %113

106:                                              ; preds = %101, %92, %82
  %107 = load %struct.clk*, %struct.clk** %7, align 8
  %108 = call i32 @clk_disable_unprepare(%struct.clk* %107)
  br label %109

109:                                              ; preds = %106, %47, %36
  %110 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %111 = call i32 @platform_device_put(%struct.platform_device* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %105, %23, %15
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local %struct.jz4740_glue* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.jz4740_glue*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.musb_hdrc_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
