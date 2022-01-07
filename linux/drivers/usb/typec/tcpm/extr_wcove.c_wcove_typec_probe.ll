; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_typec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_wcove.c_wcove_typec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_soc_pmic = type { i32, i32 }
%struct.wcove_typec = type { %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WCOVE_DSM_UUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Missing _DSM functions\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@wcove_init = common dso_local global i32 0, align 4
@wcove_get_vbus = common dso_local global i32 0, align 4
@wcove_set_vbus = common dso_local global i32 0, align 4
@wcove_set_cc = common dso_local global i32 0, align 4
@wcove_get_cc = common dso_local global i32 0, align 4
@wcove_set_polarity = common dso_local global i32 0, align 4
@wcove_set_vconn = common dso_local global i32 0, align 4
@wcove_set_current_limit = common dso_local global i32 0, align 4
@wcove_start_toggling = common dso_local global i32 0, align 4
@wcove_set_pd_rx = common dso_local global i32 0, align 4
@wcove_set_roles = common dso_local global i32 0, align 4
@wcove_pd_transmit = common dso_local global i32 0, align 4
@wcove_props = common dso_local global i32 0, align 4
@wcove_typec_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"wcove_typec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wcove_typec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcove_typec_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca %struct.wcove_typec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %11)
  store %struct.intel_soc_pmic* %12, %struct.intel_soc_pmic** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wcove_typec* @devm_kzalloc(%struct.TYPE_7__* %14, i32 80, i32 %15)
  store %struct.wcove_typec* %16, %struct.wcove_typec** %5, align 8
  %17 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %18 = icmp ne %struct.wcove_typec* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %189

22:                                               ; preds = %1
  %23 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %24 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %29 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %28, i32 0, i32 2
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %31 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %34 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @platform_get_irq(%struct.platform_device* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %189

41:                                               ; preds = %22
  %42 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %43 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @regmap_irq_get_virq(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %189

51:                                               ; preds = %41
  %52 = load i32, i32* @WCOVE_DSM_UUID, align 4
  %53 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %54 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %53, i32 0, i32 3
  %55 = call i32 @guid_parse(i32 %52, i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %189

60:                                               ; preds = %51
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = call i32 @ACPI_HANDLE(%struct.TYPE_7__* %62)
  %64 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %65 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %64, i32 0, i32 3
  %66 = call i32 @acpi_check_dsm(i32 %63, i32* %65, i32 0, i32 31)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %60
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %189

74:                                               ; preds = %60
  %75 = load i32, i32* @wcove_init, align 4
  %76 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %77 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 12
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* @wcove_get_vbus, align 4
  %80 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %81 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 11
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @wcove_set_vbus, align 4
  %84 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %85 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 10
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* @wcove_set_cc, align 4
  %88 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %89 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 9
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @wcove_get_cc, align 4
  %92 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %93 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 8
  store i32 %91, i32* %94, align 8
  %95 = load i32, i32* @wcove_set_polarity, align 4
  %96 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %97 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @wcove_set_vconn, align 4
  %100 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %101 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @wcove_set_current_limit, align 4
  %104 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %105 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @wcove_start_toggling, align 4
  %108 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %109 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  store i32 %107, i32* %110, align 8
  %111 = load i32, i32* @wcove_set_pd_rx, align 4
  %112 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %113 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @wcove_set_roles, align 4
  %116 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %117 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @wcove_pd_transmit, align 4
  %120 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %121 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @wcove_props, align 4
  %124 = call i32 @fwnode_create_software_node(i32 %123, i32* null)
  %125 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %126 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %124, i32* %127, align 8
  %128 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %129 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @IS_ERR(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %74
  %135 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %136 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @PTR_ERR(i32 %138)
  store i32 %139, i32* %2, align 4
  br label %189

140:                                              ; preds = %74
  %141 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %142 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %141, i32 0, i32 2
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %145 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %144, i32 0, i32 0
  %146 = call i32 @tcpm_register_port(%struct.TYPE_7__* %143, %struct.TYPE_8__* %145)
  %147 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %148 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %150 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %140
  %155 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %156 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @fwnode_remove_software_node(i32 %158)
  %160 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %161 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @PTR_ERR(i32 %162)
  store i32 %163, i32* %2, align 4
  br label %189

164:                                              ; preds = %140
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @wcove_typec_irq, align 4
  %169 = load i32, i32* @IRQF_ONESHOT, align 4
  %170 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %171 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %166, i32 %167, i32* null, i32 %168, i32 %169, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.wcove_typec* %170)
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %164
  %175 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %176 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @tcpm_unregister_port(i32 %177)
  %179 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %180 = getelementptr inbounds %struct.wcove_typec, %struct.wcove_typec* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @fwnode_remove_software_node(i32 %182)
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %2, align 4
  br label %189

185:                                              ; preds = %164
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = load %struct.wcove_typec*, %struct.wcove_typec** %5, align 8
  %188 = call i32 @platform_set_drvdata(%struct.platform_device* %186, %struct.wcove_typec* %187)
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %185, %174, %154, %134, %68, %58, %49, %39, %19
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local %struct.wcove_typec* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @guid_parse(i32, i32*) #1

declare dso_local i32 @acpi_check_dsm(i32, i32*, i32, i32) #1

declare dso_local i32 @ACPI_HANDLE(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @fwnode_create_software_node(i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tcpm_register_port(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @fwnode_remove_software_node(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i8*, %struct.wcove_typec*) #1

declare dso_local i32 @tcpm_unregister_port(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wcove_typec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
