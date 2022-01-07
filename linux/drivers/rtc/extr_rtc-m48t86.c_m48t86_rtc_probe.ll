; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t86.c_m48t86_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.m48t86_rtc_info = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.resource = type { i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"m48t86_nvram\00", align 1
@m48t86_nvram_write = common dso_local global i32 0, align 4
@m48t86_nvram_read = common dso_local global i32 0, align 4
@M48T86_NVRAM_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"RTC not present\0A\00", align 1
@m48t86_rtc_ops = common dso_local global i32 0, align 4
@M48T86_D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"battery %s\0A\00", align 1
@M48T86_D_VRT = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"exhausted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @m48t86_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t86_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.m48t86_rtc_info*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvmem_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 1
  store i32 1, i32* %10, align 8
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 2
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 3
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store i32* %14, i32** %12, align 8
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 4
  %16 = load i32, i32* @m48t86_nvram_write, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 5
  %18 = load i32, i32* @m48t86_nvram_read, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %8, i32 0, i32 6
  %20 = load i32, i32* @M48T86_NVRAM_LEN, align 4
  store i32 %20, i32* %19, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.m48t86_rtc_info* @devm_kzalloc(i32* %22, i32 24, i32 %23)
  store %struct.m48t86_rtc_info* %24, %struct.m48t86_rtc_info** %4, align 8
  %25 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %26 = icmp ne %struct.m48t86_rtc_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %151

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %151

39:                                               ; preds = %30
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %5, align 8
  %43 = call i8* @devm_ioremap_resource(i32* %41, %struct.resource* %42)
  %44 = bitcast i8* %43 to %struct.TYPE_6__*
  %45 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %46 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %45, i32 0, i32 2
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %46, align 8
  %47 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %48 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call i64 @IS_ERR(%struct.TYPE_6__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %39
  %53 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %54 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.TYPE_6__* %55)
  store i32 %56, i32* %2, align 4
  br label %151

57:                                               ; preds = %39
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = load i32, i32* @IORESOURCE_MEM, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %58, i32 %59, i32 1)
  store %struct.resource* %60, %struct.resource** %5, align 8
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %151

66:                                               ; preds = %57
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = call i8* @devm_ioremap_resource(i32* %68, %struct.resource* %69)
  %71 = bitcast i8* %70 to %struct.TYPE_6__*
  %72 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %73 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %72, i32 0, i32 1
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %73, align 8
  %74 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %75 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i64 @IS_ERR(%struct.TYPE_6__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %66
  %80 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %81 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = call i32 @PTR_ERR(%struct.TYPE_6__* %82)
  store i32 %83, i32* %2, align 4
  br label %151

84:                                               ; preds = %66
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %88 = call i32 @dev_set_drvdata(i32* %86, %struct.m48t86_rtc_info* %87)
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = call i32 @m48t86_verify_chip(%struct.platform_device* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %84
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 (i32*, i8*, ...) @dev_info(i32* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %151

98:                                               ; preds = %84
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %100)
  %102 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %103 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %102, i32 0, i32 0
  store %struct.TYPE_6__* %101, %struct.TYPE_6__** %103, align 8
  %104 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %105 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = call i64 @IS_ERR(%struct.TYPE_6__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %111 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = call i32 @PTR_ERR(%struct.TYPE_6__* %112)
  store i32 %113, i32* %2, align 4
  br label %151

114:                                              ; preds = %98
  %115 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %116 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  store i32* @m48t86_rtc_ops, i32** %118, align 8
  %119 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %120 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %124 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @rtc_register_device(%struct.TYPE_6__* %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %114
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %151

131:                                              ; preds = %114
  %132 = load %struct.m48t86_rtc_info*, %struct.m48t86_rtc_info** %4, align 8
  %133 = getelementptr inbounds %struct.m48t86_rtc_info, %struct.m48t86_rtc_info* %132, i32 0, i32 0
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = call i32 @rtc_nvmem_register(%struct.TYPE_6__* %134, %struct.nvmem_config* %8)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load i32, i32* @M48T86_D, align 4
  %139 = call zeroext i8 @m48t86_readb(i32* %137, i32 %138)
  store i8 %139, i8* %6, align 1
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load i8, i8* %6, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @M48T86_D_VRT, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %143, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %150 = call i32 (i32*, i8*, ...) @dev_info(i32* %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %131, %129, %109, %92, %79, %63, %52, %36, %27
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.m48t86_rtc_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.m48t86_rtc_info*) #1

declare dso_local i32 @m48t86_verify_chip(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_6__*, %struct.nvmem_config*) #1

declare dso_local zeroext i8 @m48t86_readb(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
