; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/actions/extr_pinctrl-owl.c_owl_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.owl_pinctrl_soc_data = type { i32, i32 }
%struct.resource = type { i32 }
%struct.owl_pinctrl = type { i32, i32*, i32, i32, i32*, %struct.owl_pinctrl_soc_data*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@owl_pinctrl_desc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@owl_gpio_direction_input = common dso_local global i32 0, align 4
@owl_gpio_direction_output = common dso_local global i32 0, align 4
@owl_gpio_get = common dso_local global i32 0, align 4
@owl_gpio_set = common dso_local global i32 0, align 4
@owl_gpio_request = common dso_local global i32 0, align 4
@owl_gpio_free = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not register Actions OWL pinmux driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_pinctrl_probe(%struct.platform_device* %0, %struct.owl_pinctrl_soc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.owl_pinctrl_soc_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.owl_pinctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.owl_pinctrl_soc_data* %1, %struct.owl_pinctrl_soc_data** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.owl_pinctrl* @devm_kzalloc(i32* %11, i32 72, i32 %12)
  store %struct.owl_pinctrl* %13, %struct.owl_pinctrl** %7, align 8
  %14 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %15 = icmp ne %struct.owl_pinctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %200

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %6, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %28 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %30 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %19
  %35 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %36 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %200

39:                                               ; preds = %19
  %40 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @devm_clk_get(i32* %41, i32* null)
  %43 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %44 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %46 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %39
  %51 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %55 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @PTR_ERR(i32 %56)
  store i32 %57, i32* %3, align 4
  br label %200

58:                                               ; preds = %39
  %59 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %60 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %200

70:                                               ; preds = %58
  %71 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %72 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %71, i32 0, i32 7
  %73 = call i32 @raw_spin_lock_init(i32* %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @dev_name(i32* %75)
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @owl_pinctrl_desc, i32 0, i32 2), align 4
  %77 = load %struct.owl_pinctrl_soc_data*, %struct.owl_pinctrl_soc_data** %5, align 8
  %78 = getelementptr inbounds %struct.owl_pinctrl_soc_data, %struct.owl_pinctrl_soc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @owl_pinctrl_desc, i32 0, i32 1), align 4
  %80 = load %struct.owl_pinctrl_soc_data*, %struct.owl_pinctrl_soc_data** %5, align 8
  %81 = getelementptr inbounds %struct.owl_pinctrl_soc_data, %struct.owl_pinctrl_soc_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @owl_pinctrl_desc, i32 0, i32 0), align 4
  %83 = load i32, i32* @owl_gpio_direction_input, align 4
  %84 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %85 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 5
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* @owl_gpio_direction_output, align 4
  %88 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %89 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @owl_gpio_get, align 4
  %92 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %93 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @owl_gpio_set, align 4
  %96 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %97 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @owl_gpio_request, align 4
  %100 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %101 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @owl_gpio_free, align 4
  %104 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %105 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.owl_pinctrl_soc_data*, %struct.owl_pinctrl_soc_data** %5, align 8
  %108 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %109 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %108, i32 0, i32 5
  store %struct.owl_pinctrl_soc_data* %107, %struct.owl_pinctrl_soc_data** %109, align 8
  %110 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %113 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %112, i32 0, i32 4
  store i32* %111, i32** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %117 = call i32 @devm_pinctrl_register(i32* %115, %struct.TYPE_5__* @owl_pinctrl_desc, %struct.owl_pinctrl* %116)
  %118 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %119 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  %120 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %121 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @IS_ERR(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %70
  %126 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %127 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %126, i32 0, i32 0
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %129 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %130 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %8, align 4
  br label %194

133:                                              ; preds = %70
  %134 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %135 = call i32 @platform_irq_count(%struct.platform_device* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %194

139:                                              ; preds = %133
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %142 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %146 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call i32* @devm_kcalloc(i32* %144, i32 %147, i32 4, i32 %148)
  %150 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %151 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %150, i32 0, i32 1
  store i32* %149, i32** %151, align 8
  %152 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %153 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %139
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %194

159:                                              ; preds = %139
  store i32 0, i32* %9, align 4
  br label %160

160:                                              ; preds = %181, %159
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %163 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @platform_get_irq(%struct.platform_device* %167, i32 %168)
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %166
  br label %194

173:                                              ; preds = %166
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %176 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %174, i32* %180, align 4
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %160

184:                                              ; preds = %160
  %185 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %186 = call i32 @owl_gpio_init(%struct.owl_pinctrl* %185)
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %194

190:                                              ; preds = %184
  %191 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %192 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %193 = call i32 @platform_set_drvdata(%struct.platform_device* %191, %struct.owl_pinctrl* %192)
  store i32 0, i32* %3, align 4
  br label %200

194:                                              ; preds = %189, %172, %156, %138, %125
  %195 = load %struct.owl_pinctrl*, %struct.owl_pinctrl** %7, align 8
  %196 = getelementptr inbounds %struct.owl_pinctrl, %struct.owl_pinctrl* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @clk_disable_unprepare(i32 %197)
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %194, %190, %65, %50, %34, %16
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.owl_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_5__*, %struct.owl_pinctrl*) #1

declare dso_local i32 @platform_irq_count(%struct.platform_device*) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @owl_gpio_init(%struct.owl_pinctrl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.owl_pinctrl*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
