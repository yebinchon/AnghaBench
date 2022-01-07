; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.msm_pinctrl_soc_data = type { i32, i32, i32, i32* }
%struct.msm_pinctrl = type { i64, i8*, %struct.TYPE_2__, %struct.msm_pinctrl_soc_data*, i8**, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msm_gpio_template = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@msm_pinctrl_ops = common dso_local global i32 0, align 4
@msm_pinmux_ops = common dso_local global i32 0, align 4
@msm_pinconf_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Couldn't register pinctrl driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Probed Qualcomm pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_pinctrl_probe(%struct.platform_device* %0, %struct.msm_pinctrl_soc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.msm_pinctrl_soc_data*, align 8
  %6 = alloca %struct.msm_pinctrl*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.msm_pinctrl_soc_data* %1, %struct.msm_pinctrl_soc_data** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.msm_pinctrl* @devm_kzalloc(i32* %11, i32 96, i32 %12)
  store %struct.msm_pinctrl* %13, %struct.msm_pinctrl** %6, align 8
  %14 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %15 = icmp ne %struct.msm_pinctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %202

19:                                               ; preds = %2
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %23 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %22, i32 0, i32 7
  store i32* %21, i32** %23, align 8
  %24 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %5, align 8
  %25 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %26 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %25, i32 0, i32 3
  store %struct.msm_pinctrl_soc_data* %24, %struct.msm_pinctrl_soc_data** %26, align 8
  %27 = load i32, i32* @msm_gpio_template, align 4
  %28 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %29 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %31 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %30, i32 0, i32 5
  %32 = call i32 @raw_spin_lock_init(i32* %31)
  %33 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %5, align 8
  %34 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %88

37:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %5, align 8
  %41 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %5, align 8
  %48 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %45, i32 %46, i32 %53)
  store %struct.resource* %54, %struct.resource** %7, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = call i8* @devm_ioremap_resource(i32* %56, %struct.resource* %57)
  %59 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %60 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %59, i32 0, i32 4
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %66 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %65, i32 0, i32 4
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i64 @IS_ERR(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %44
  %75 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %76 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %75, i32 0, i32 4
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @PTR_ERR(i8* %81)
  store i32 %82, i32* %3, align 4
  br label %202

83:                                               ; preds = %44
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %38

87:                                               ; preds = %38
  br label %115

88:                                               ; preds = %19
  %89 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %90 = load i32, i32* @IORESOURCE_MEM, align 4
  %91 = call %struct.resource* @platform_get_resource(%struct.platform_device* %89, i32 %90, i32 0)
  store %struct.resource* %91, %struct.resource** %7, align 8
  %92 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load %struct.resource*, %struct.resource** %7, align 8
  %95 = call i8* @devm_ioremap_resource(i32* %93, %struct.resource* %94)
  %96 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %97 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %96, i32 0, i32 4
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  store i8* %95, i8** %99, align 8
  %100 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %101 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %100, i32 0, i32 4
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @IS_ERR(i8* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %88
  %108 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %109 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %108, i32 0, i32 4
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %3, align 4
  br label %202

114:                                              ; preds = %88
  br label %115

115:                                              ; preds = %114, %87
  %116 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %117 = call i32 @msm_pinctrl_setup_pm_reset(%struct.msm_pinctrl* %116)
  %118 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %119 = call i64 @platform_get_irq(%struct.platform_device* %118, i32 0)
  %120 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %121 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %123 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %128 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %202

131:                                              ; preds = %115
  %132 = load i32, i32* @THIS_MODULE, align 4
  %133 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %134 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  store i32 %132, i32* %135, align 8
  %136 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %137 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 5
  store i32* @msm_pinctrl_ops, i32** %138, align 8
  %139 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %140 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 4
  store i32* @msm_pinmux_ops, i32** %141, align 8
  %142 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %143 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 3
  store i32* @msm_pinconf_ops, i32** %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @dev_name(i32* %146)
  %148 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %149 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  store i32 %147, i32* %150, align 8
  %151 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %152 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %151, i32 0, i32 3
  %153 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %152, align 8
  %154 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %157 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  store i32 %155, i32* %158, align 4
  %159 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %160 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %159, i32 0, i32 3
  %161 = load %struct.msm_pinctrl_soc_data*, %struct.msm_pinctrl_soc_data** %160, align 8
  %162 = getelementptr inbounds %struct.msm_pinctrl_soc_data, %struct.msm_pinctrl_soc_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %165 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  %167 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %170 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %169, i32 0, i32 2
  %171 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %172 = call i8* @devm_pinctrl_register(i32* %168, %struct.TYPE_2__* %170, %struct.msm_pinctrl* %171)
  %173 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %174 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %176 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @IS_ERR(i8* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %131
  %181 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %182 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %181, i32 0, i32 0
  %183 = call i32 @dev_err(i32* %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %184 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %185 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @PTR_ERR(i8* %186)
  store i32 %187, i32* %3, align 4
  br label %202

188:                                              ; preds = %131
  %189 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %190 = call i32 @msm_gpio_init(%struct.msm_pinctrl* %189)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %3, align 4
  br label %202

195:                                              ; preds = %188
  %196 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %197 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %6, align 8
  %198 = call i32 @platform_set_drvdata(%struct.platform_device* %196, %struct.msm_pinctrl* %197)
  %199 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_dbg(i32* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %195, %193, %180, %126, %107, %74, %16
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.msm_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @msm_pinctrl_setup_pm_reset(%struct.msm_pinctrl*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i8* @devm_pinctrl_register(i32*, %struct.TYPE_2__*, %struct.msm_pinctrl*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msm_gpio_init(%struct.msm_pinctrl*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.msm_pinctrl*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
