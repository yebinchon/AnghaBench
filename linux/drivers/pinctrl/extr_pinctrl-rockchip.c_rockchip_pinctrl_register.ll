; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rockchip.c_rockchip_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rockchip_pinctrl = type { i32, %struct.TYPE_4__*, %struct.pinctrl_desc }
%struct.TYPE_4__ = type { i32, %struct.rockchip_pin_bank*, i32 }
%struct.rockchip_pin_bank = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pinctrl_desc = type { i8*, i32, %struct.pinctrl_pin_desc*, i32*, i32*, i32*, i32 }
%struct.pinctrl_pin_desc = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"rockchip-pinctrl\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@rockchip_pctrl_ops = common dso_local global i32 0, align 4
@rockchip_pmx_ops = common dso_local global i32 0, align 4
@rockchip_pinconf_ops = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not register pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.rockchip_pinctrl*)* @rockchip_pinctrl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pinctrl_register(%struct.platform_device* %0, %struct.rockchip_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.rockchip_pinctrl*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  %7 = alloca %struct.pinctrl_pin_desc*, align 8
  %8 = alloca %struct.pinctrl_pin_desc*, align 8
  %9 = alloca %struct.rockchip_pin_bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.rockchip_pinctrl* %1, %struct.rockchip_pinctrl** %5, align 8
  %14 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %14, i32 0, i32 2
  store %struct.pinctrl_desc* %15, %struct.pinctrl_desc** %6, align 8
  %16 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %17 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @THIS_MODULE, align 4
  %19 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %20 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %22 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %21, i32 0, i32 5
  store i32* @rockchip_pctrl_ops, i32** %22, align 8
  %23 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %24 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %23, i32 0, i32 4
  store i32* @rockchip_pmx_ops, i32** %24, align 8
  %25 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %26 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %25, i32 0, i32 3
  store i32* @rockchip_pinconf_ops, i32** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %30 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %28, i32 %33, i32 8, i32 %34)
  store %struct.pinctrl_pin_desc* %35, %struct.pinctrl_pin_desc** %7, align 8
  %36 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %37 = icmp ne %struct.pinctrl_pin_desc* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %2
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %191

41:                                               ; preds = %2
  %42 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  %43 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %44 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %43, i32 0, i32 2
  store %struct.pinctrl_pin_desc* %42, %struct.pinctrl_pin_desc** %44, align 8
  %45 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %46 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %51 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %7, align 8
  store %struct.pinctrl_pin_desc* %52, %struct.pinctrl_pin_desc** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %96, %41
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %56 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %53
  %62 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %63 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %66, i64 %68
  store %struct.rockchip_pin_bank* %69, %struct.rockchip_pin_bank** %9, align 8
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %90, %61
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %73 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %79 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %82 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @kasprintf(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %87 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %8, align 8
  %89 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %88, i32 1
  store %struct.pinctrl_pin_desc* %89, %struct.pinctrl_pin_desc** %8, align 8
  br label %90

90:                                               ; preds = %76
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %70

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %53

99:                                               ; preds = %53
  %100 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %101 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %102 = call i32 @rockchip_pinctrl_parse_dt(%struct.platform_device* %100, %struct.rockchip_pinctrl* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  br label %191

107:                                              ; preds = %99
  %108 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %111 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %112 = call i32 @devm_pinctrl_register(i32* %109, %struct.pinctrl_desc* %110, %struct.rockchip_pinctrl* %111)
  %113 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %114 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %116 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %107
  %121 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_err(i32* %122, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %124 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %125 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @PTR_ERR(i32 %126)
  store i32 %127, i32* %3, align 4
  br label %191

128:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %129

129:                                              ; preds = %187, %128
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %132 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %130, %135
  br i1 %136, label %137, label %190

137:                                              ; preds = %129
  %138 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %139 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %142, i64 %144
  store %struct.rockchip_pin_bank* %145, %struct.rockchip_pin_bank** %9, align 8
  %146 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %147 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %150 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 5
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %154 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %157 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %160 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  store i32 %158, i32* %161, align 8
  %162 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %163 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %167 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  store i32 %165, i32* %168, align 4
  %169 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %170 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %174 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %177 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %176, i32 0, i32 2
  %178 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %179 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store %struct.TYPE_5__* %177, %struct.TYPE_5__** %180, align 8
  %181 = load %struct.rockchip_pinctrl*, %struct.rockchip_pinctrl** %5, align 8
  %182 = getelementptr inbounds %struct.rockchip_pinctrl, %struct.rockchip_pinctrl* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.rockchip_pin_bank*, %struct.rockchip_pin_bank** %9, align 8
  %185 = getelementptr inbounds %struct.rockchip_pin_bank, %struct.rockchip_pin_bank* %184, i32 0, i32 1
  %186 = call i32 @pinctrl_add_gpio_range(i32 %183, %struct.TYPE_6__* %185)
  br label %187

187:                                              ; preds = %137
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %129

190:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %120, %105, %38
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @rockchip_pinctrl_parse_dt(%struct.platform_device*, %struct.rockchip_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.pinctrl_desc*, %struct.rockchip_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
