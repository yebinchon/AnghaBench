; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nomadik/extr_pinctrl-nomadik.c_nmk_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i64 }
%struct.nmk_pinctrl = type { %struct.nmk_gpio_chip*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32 }
%struct.nmk_gpio_chip = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nmk_pinctrl_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PINCTRL_NMK_STN8815 = common dso_local global i32 0, align 4
@PINCTRL_NMK_DB8500 = common dso_local global i32 0, align 4
@PINCTRL_NMK_DB8540 = common dso_local global i32 0, align 4
@NMK_MAX_BANKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nomadik-gpio-chips\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"populate NMK GPIO %d \22%pOFn\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"could not populate nmk chip struct - continue anyway\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"prcm\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"No PRCM base, assuming no ALT-Cx control is available\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"missing PRCM base address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nmk_pinctrl_desc = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"could not register Nomadik pinctrl driver\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"initialized Nomadik pin control driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nmk_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmk_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.nmk_pinctrl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.nmk_gpio_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nmk_pinctrl* @devm_kzalloc(%struct.TYPE_11__* %17, i32 32, i32 %18)
  store %struct.nmk_pinctrl* %19, %struct.nmk_pinctrl** %7, align 8
  %20 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %21 = icmp ne %struct.nmk_pinctrl* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %168

25:                                               ; preds = %1
  %26 = load i32, i32* @nmk_pinctrl_match, align 4
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.of_device_id* @of_match_device(i32 %26, %struct.TYPE_11__* %28)
  store %struct.of_device_id* %29, %struct.of_device_id** %4, align 8
  %30 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %31 = icmp ne %struct.of_device_id* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %168

35:                                               ; preds = %25
  %36 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PINCTRL_NMK_STN8815, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %45 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %44, i32 0, i32 2
  %46 = call i32 @nmk_pinctrl_stn8815_init(%struct.TYPE_12__** %45)
  br label %47

47:                                               ; preds = %43, %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @PINCTRL_NMK_DB8500, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %53 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %52, i32 0, i32 2
  %54 = call i32 @nmk_pinctrl_db8500_init(%struct.TYPE_12__** %53)
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PINCTRL_NMK_DB8540, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %61 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %60, i32 0, i32 2
  %62 = call i32 @nmk_pinctrl_db8540_init(%struct.TYPE_12__** %61)
  br label %63

63:                                               ; preds = %59, %55
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @NMK_MAX_BANKS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %64
  %69 = load %struct.device_node*, %struct.device_node** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %70)
  store %struct.device_node* %71, %struct.device_node** %10, align 8
  %72 = load %struct.device_node*, %struct.device_node** %10, align 8
  %73 = icmp ne %struct.device_node* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %68
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.device_node*, %struct.device_node** %10, align 8
  %79 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_info(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %77, %struct.device_node* %78)
  %80 = load %struct.device_node*, %struct.device_node** %10, align 8
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = call %struct.nmk_gpio_chip* @nmk_gpio_populate_chip(%struct.device_node* %80, %struct.platform_device* %81)
  store %struct.nmk_gpio_chip* %82, %struct.nmk_gpio_chip** %11, align 8
  %83 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %11, align 8
  %84 = call i64 @IS_ERR(%struct.nmk_gpio_chip* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_11__* %88, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %74
  %91 = load %struct.device_node*, %struct.device_node** %10, align 8
  %92 = call i32 @of_node_put(%struct.device_node* %91)
  br label %93

93:                                               ; preds = %90, %68
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %64

97:                                               ; preds = %64
  %98 = load %struct.device_node*, %struct.device_node** %5, align 8
  %99 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %99, %struct.device_node** %6, align 8
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = icmp ne %struct.device_node* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.device_node*, %struct.device_node** %6, align 8
  %104 = call i32 @of_iomap(%struct.device_node* %103, i32 0)
  %105 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %106 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %102, %97
  %108 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %109 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %127, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PINCTRL_NMK_STN8815, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_info(%struct.TYPE_11__* %118, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %126

120:                                              ; preds = %112
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = call i32 @dev_err(%struct.TYPE_11__* %122, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %168

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %107
  %128 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %129 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @nmk_pinctrl_desc, i32 0, i32 1), align 4
  %133 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %134 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @nmk_pinctrl_desc, i32 0, i32 0), align 4
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %141 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %140, i32 0, i32 1
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %141, align 8
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %145 = call %struct.nmk_gpio_chip* @devm_pinctrl_register(%struct.TYPE_11__* %143, %struct.TYPE_13__* @nmk_pinctrl_desc, %struct.nmk_pinctrl* %144)
  %146 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %147 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %146, i32 0, i32 0
  store %struct.nmk_gpio_chip* %145, %struct.nmk_gpio_chip** %147, align 8
  %148 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %149 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %148, i32 0, i32 0
  %150 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %149, align 8
  %151 = call i64 @IS_ERR(%struct.nmk_gpio_chip* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %127
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %157 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %158 = getelementptr inbounds %struct.nmk_pinctrl, %struct.nmk_pinctrl* %157, i32 0, i32 0
  %159 = load %struct.nmk_gpio_chip*, %struct.nmk_gpio_chip** %158, align 8
  %160 = call i32 @PTR_ERR(%struct.nmk_gpio_chip* %159)
  store i32 %160, i32* %2, align 4
  br label %168

161:                                              ; preds = %127
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = load %struct.nmk_pinctrl*, %struct.nmk_pinctrl** %7, align 8
  %164 = call i32 @platform_set_drvdata(%struct.platform_device* %162, %struct.nmk_pinctrl* %163)
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_info(%struct.TYPE_11__* %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %161, %153, %120, %32, %22
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.nmk_pinctrl* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @nmk_pinctrl_stn8815_init(%struct.TYPE_12__**) #1

declare dso_local i32 @nmk_pinctrl_db8500_init(%struct.TYPE_12__**) #1

declare dso_local i32 @nmk_pinctrl_db8540_init(%struct.TYPE_12__**) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.nmk_gpio_chip* @nmk_gpio_populate_chip(%struct.device_node*, %struct.platform_device*) #1

declare dso_local i64 @IS_ERR(%struct.nmk_gpio_chip*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local %struct.nmk_gpio_chip* @devm_pinctrl_register(%struct.TYPE_11__*, %struct.TYPE_13__*, %struct.nmk_pinctrl*) #1

declare dso_local i32 @PTR_ERR(%struct.nmk_gpio_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.nmk_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
