; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_spear_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear.c_spear_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spear_pinctrl_machdata = type { i32, i32, i64 }
%struct.resource = type { i32 }
%struct.spear_pmx = type { i32, %struct.spear_pinctrl_machdata*, %struct.TYPE_8__*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"st,pinmux-mode\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"OF: pinmux mode not passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"OF: Couldn't configure mode: %x\0A\00", align 1
@spear_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spear_pinctrl_probe(%struct.platform_device* %0, %struct.spear_pinctrl_machdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.spear_pinctrl_machdata*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.spear_pmx*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.spear_pinctrl_machdata* %1, %struct.spear_pinctrl_machdata** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %5, align 8
  %15 = icmp ne %struct.spear_pinctrl_machdata* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %114

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.spear_pmx* @devm_kzalloc(%struct.TYPE_8__* %21, i32 32, i32 %22)
  store %struct.spear_pmx* %23, %struct.spear_pmx** %8, align 8
  %24 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %25 = icmp ne %struct.spear_pmx* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32 @devm_ioremap_resource(%struct.TYPE_8__* %34, %struct.resource* %35)
  %37 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %38 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %40 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %46 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %114

49:                                               ; preds = %29
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %53 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %52, i32 0, i32 2
  store %struct.TYPE_8__* %51, %struct.TYPE_8__** %53, align 8
  %54 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %5, align 8
  %55 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %56 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %55, i32 0, i32 1
  store %struct.spear_pinctrl_machdata* %54, %struct.spear_pinctrl_machdata** %56, align 8
  %57 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %5, align 8
  %58 = getelementptr inbounds %struct.spear_pinctrl_machdata, %struct.spear_pinctrl_machdata* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  %62 = load %struct.device_node*, %struct.device_node** %6, align 8
  %63 = call i64 @of_property_read_u32(%struct.device_node* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %9)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %114

71:                                               ; preds = %61
  %72 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @set_mode(%struct.spear_pmx* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %49
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %87 = call i32 @platform_set_drvdata(%struct.platform_device* %85, %struct.spear_pmx* %86)
  %88 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %5, align 8
  %89 = getelementptr inbounds %struct.spear_pinctrl_machdata, %struct.spear_pinctrl_machdata* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spear_pinctrl_desc, i32 0, i32 1), align 4
  %91 = load %struct.spear_pinctrl_machdata*, %struct.spear_pinctrl_machdata** %5, align 8
  %92 = getelementptr inbounds %struct.spear_pinctrl_machdata, %struct.spear_pinctrl_machdata* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @spear_pinctrl_desc, i32 0, i32 0), align 4
  %94 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %97 = call i32 @devm_pinctrl_register(%struct.TYPE_8__* %95, %struct.TYPE_7__* @spear_pinctrl_desc, %struct.spear_pmx* %96)
  %98 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %99 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %101 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %84
  %106 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.spear_pmx*, %struct.spear_pmx** %8, align 8
  %110 = getelementptr inbounds %struct.spear_pmx, %struct.spear_pmx* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %105, %76, %65, %44, %26, %16
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.spear_pmx* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @set_mode(%struct.spear_pmx*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spear_pmx*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.spear_pmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
