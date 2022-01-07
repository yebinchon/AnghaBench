; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.armada_37xx_pinctrl = type { i32, i8*, i32, i32, %struct.pinctrl_desc, %struct.armada_37xx_pin_data* }
%struct.pinctrl_desc = type { i8*, i32, %struct.pinctrl_pin_desc*, i32*, i32*, i32*, i32 }
%struct.pinctrl_pin_desc = type { i32, i32 }
%struct.armada_37xx_pin_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"armada_37xx-pinctrl\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@armada_37xx_pctrl_ops = common dso_local global i32 0, align 4
@armada_37xx_pmx_ops = common dso_local global i32 0, align 4
@armada_37xx_pinconf_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.armada_37xx_pinctrl*)* @armada_37xx_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_pinctrl_register(%struct.platform_device* %0, %struct.armada_37xx_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.armada_37xx_pinctrl*, align 8
  %6 = alloca %struct.armada_37xx_pin_data*, align 8
  %7 = alloca %struct.pinctrl_desc*, align 8
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca %struct.pinctrl_pin_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.armada_37xx_pinctrl* %1, %struct.armada_37xx_pinctrl** %5, align 8
  %12 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %13 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %12, i32 0, i32 5
  %14 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %13, align 8
  store %struct.armada_37xx_pin_data* %14, %struct.armada_37xx_pin_data** %6, align 8
  %15 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %16 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %15, i32 0, i32 4
  store %struct.pinctrl_desc* %16, %struct.pinctrl_desc** %7, align 8
  %17 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %18 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %21 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %23 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %26 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %28 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %28, align 8
  %29 = load i32, i32* @THIS_MODULE, align 4
  %30 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %31 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %33 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %32, i32 0, i32 5
  store i32* @armada_37xx_pctrl_ops, i32** %33, align 8
  %34 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %35 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %34, i32 0, i32 4
  store i32* @armada_37xx_pmx_ops, i32** %35, align 8
  %36 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %37 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %36, i32 0, i32 3
  store i32* @armada_37xx_pinconf_ops, i32** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %41 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @devm_kcalloc(i32* %39, i32 %42, i32 8, i32 %43)
  %45 = bitcast i8* %44 to %struct.pinctrl_pin_desc*
  store %struct.pinctrl_pin_desc* %45, %struct.pinctrl_pin_desc** %8, align 8
  %46 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %47 = icmp ne %struct.pinctrl_pin_desc* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %137

51:                                               ; preds = %2
  %52 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %53 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %54 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %53, i32 0, i32 2
  store %struct.pinctrl_pin_desc* %52, %struct.pinctrl_pin_desc** %54, align 8
  %55 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %56 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %59 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  store %struct.pinctrl_pin_desc* %60, %struct.pinctrl_pin_desc** %9, align 8
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %81, %51
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %64 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %70 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %73 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @kasprintf(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %78 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %9, align 8
  %80 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %79, i32 1
  store %struct.pinctrl_pin_desc* %80, %struct.pinctrl_pin_desc** %9, align 8
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %61

84:                                               ; preds = %61
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.armada_37xx_pin_data*, %struct.armada_37xx_pin_data** %6, align 8
  %88 = getelementptr inbounds %struct.armada_37xx_pin_data, %struct.armada_37xx_pin_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i8* @devm_kcalloc(i32* %86, i32 %89, i32 4, i32 %90)
  %92 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %93 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %95 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %137

101:                                              ; preds = %84
  %102 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %103 = call i32 @armada_37xx_fill_group(%struct.armada_37xx_pinctrl* %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %137

108:                                              ; preds = %101
  %109 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %110 = call i32 @armada_37xx_fill_func(%struct.armada_37xx_pinctrl* %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %3, align 4
  br label %137

115:                                              ; preds = %108
  %116 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %7, align 8
  %119 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %120 = call i32 @devm_pinctrl_register(i32* %117, %struct.pinctrl_desc* %118, %struct.armada_37xx_pinctrl* %119)
  %121 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %122 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %124 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %115
  %129 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %132 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %133 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @PTR_ERR(i32 %134)
  store i32 %135, i32* %3, align 4
  br label %137

136:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %128, %113, %106, %98, %48
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @armada_37xx_fill_group(%struct.armada_37xx_pinctrl*) #1

declare dso_local i32 @armada_37xx_fill_func(%struct.armada_37xx_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.pinctrl_desc*, %struct.armada_37xx_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
