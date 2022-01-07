; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_core_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_pinctrl_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { %struct.sprd_pinctrl_soc_info*, i32, i32 }
%struct.sprd_pinctrl_soc_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.sprd_pins_info = type { i32 }
%struct.sprd_pinctrl = type { i32, i32*, %struct.sprd_pinctrl_soc_info*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"fail to add pins information\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"fail to parse dt properties\0A\00", align 1
@sprd_pinctrl_desc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sprd_pinctrl_core_probe(%struct.platform_device* %0, %struct.sprd_pins_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sprd_pins_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sprd_pinctrl*, align 8
  %9 = alloca %struct.sprd_pinctrl_soc_info*, align 8
  %10 = alloca %struct.pinctrl_pin_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.sprd_pins_info* %1, %struct.sprd_pins_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(i32* %14, i32 32, i32 %15)
  %17 = bitcast i8* %16 to %struct.sprd_pinctrl*
  store %struct.sprd_pinctrl* %17, %struct.sprd_pinctrl** %8, align 8
  %18 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %19 = icmp ne %struct.sprd_pinctrl* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %166

23:                                               ; preds = %3
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %24, i32 0)
  %26 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %27 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %29 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %35 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %166

38:                                               ; preds = %23
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kzalloc(i32* %40, i32 16, i32 %41)
  %43 = bitcast i8* %42 to %struct.sprd_pinctrl_soc_info*
  store %struct.sprd_pinctrl_soc_info* %43, %struct.sprd_pinctrl_soc_info** %9, align 8
  %44 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %45 = icmp ne %struct.sprd_pinctrl_soc_info* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %166

49:                                               ; preds = %38
  %50 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %51 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %52 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %51, i32 0, i32 2
  store %struct.sprd_pinctrl_soc_info* %50, %struct.sprd_pinctrl_soc_info** %52, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %56 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %58 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %59 = call i32 @platform_set_drvdata(%struct.platform_device* %57, %struct.sprd_pinctrl* %58)
  %60 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %61 = load %struct.sprd_pins_info*, %struct.sprd_pins_info** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @sprd_pinctrl_add_pins(%struct.sprd_pinctrl* %60, %struct.sprd_pins_info* %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_err(i32* %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %166

71:                                               ; preds = %49
  %72 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %73 = call i32 @sprd_pinctrl_parse_dt(%struct.sprd_pinctrl* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* %11, align 4
  store i32 %80, i32* %4, align 4
  br label %166

81:                                               ; preds = %71
  %82 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %85 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %83, i32 %86, i32 16, i32 %87)
  store %struct.pinctrl_pin_desc* %88, %struct.pinctrl_pin_desc** %10, align 8
  %89 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %90 = icmp ne %struct.pinctrl_pin_desc* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %4, align 4
  br label %166

94:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %134, %94
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %98 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %103 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %110, i64 %112
  %114 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %113, i32 0, i32 2
  store i32 %109, i32* %114, align 4
  %115 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %116 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %123, i64 %125
  %127 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %126, i32 0, i32 1
  store i32 %122, i32* %127, align 8
  %128 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %129 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %129, i64 %131
  %133 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %132, i32 0, i32 0
  store %struct.sprd_pinctrl_soc_info* %128, %struct.sprd_pinctrl_soc_info** %133, align 8
  br label %134

134:                                              ; preds = %101
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %95

137:                                              ; preds = %95
  %138 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %10, align 8
  store %struct.pinctrl_pin_desc* %138, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sprd_pinctrl_desc, i32 0, i32 2), align 8
  %139 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = call i32 @dev_name(i32* %140)
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sprd_pinctrl_desc, i32 0, i32 1), align 4
  %142 = load %struct.sprd_pinctrl_soc_info*, %struct.sprd_pinctrl_soc_info** %9, align 8
  %143 = getelementptr inbounds %struct.sprd_pinctrl_soc_info, %struct.sprd_pinctrl_soc_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sprd_pinctrl_desc, i32 0, i32 0), align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %148 = bitcast %struct.sprd_pinctrl* %147 to i8*
  %149 = call i32 @pinctrl_register(%struct.TYPE_5__* @sprd_pinctrl_desc, i32* %146, i8* %148)
  %150 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %151 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %153 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %137
  %158 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %161 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %8, align 8
  %162 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @PTR_ERR(i32 %163)
  store i32 %164, i32* %4, align 4
  br label %166

165:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %166

166:                                              ; preds = %165, %157, %91, %76, %66, %46, %33, %20
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sprd_pinctrl*) #1

declare dso_local i32 @sprd_pinctrl_add_pins(%struct.sprd_pinctrl*, %struct.sprd_pins_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sprd_pinctrl_parse_dt(%struct.sprd_pinctrl*) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pinctrl_register(%struct.TYPE_5__*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
