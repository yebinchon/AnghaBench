; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-qcom.c_dwc3_qcom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_qcom = type { i64, i32, i32, i32, i32*, %struct.TYPE_3__*, i32, %struct.TYPE_4__*, %struct.device* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.resource = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no supporting ACPI device data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to get resets, err=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to assert resets, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to deassert resets, err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"failed to get clocks\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to map qscratch, err=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to setup IRQs, err=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"qcom,select-utmi-as-pipe-clk\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to register DWC3 Core, err=%d\0A\00", align 1
@USB_DR_MODE_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_qcom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_qcom_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dwc3_qcom*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store %struct.resource* null, %struct.resource** %8, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.dwc3_qcom* @devm_kzalloc(%struct.device* %19, i32 64, i32 %20)
  store %struct.dwc3_qcom* %21, %struct.dwc3_qcom** %6, align 8
  %22 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %23 = icmp ne %struct.dwc3_qcom* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %282

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.dwc3_qcom* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %34 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %33, i32 0, i32 8
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i64 @has_acpi_companion(%struct.device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %27
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call %struct.TYPE_4__* @acpi_device_get_match_data(%struct.device* %39)
  %41 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %42 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %41, i32 0, i32 7
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %44 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %43, i32 0, i32 7
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %282

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = call i32 @devm_reset_control_array_get_optional_exclusive(%struct.device* %55)
  %57 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %58 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %60 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %66 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @PTR_ERR(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  br label %282

74:                                               ; preds = %54
  %75 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %76 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @reset_control_assert(i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %83, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %282

87:                                               ; preds = %74
  %88 = call i32 @usleep_range(i32 10, i32 1000)
  %89 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %90 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @reset_control_deassert(i32 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load i32, i32* %9, align 4
  %99 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  br label %276

100:                                              ; preds = %87
  %101 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = call i32 @of_clk_get_parent_count(%struct.device_node* %102)
  %104 = call i32 @dwc3_qcom_clk_init(%struct.dwc3_qcom* %101, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %276

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = load i32, i32* @IORESOURCE_MEM, align 4
  %113 = call %struct.resource* @platform_get_resource(%struct.platform_device* %111, i32 %112, i32 0)
  store %struct.resource* %113, %struct.resource** %7, align 8
  %114 = load %struct.device_node*, %struct.device_node** %4, align 8
  %115 = icmp ne %struct.device_node* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load %struct.resource*, %struct.resource** %7, align 8
  store %struct.resource* %117, %struct.resource** %8, align 8
  br label %150

118:                                              ; preds = %110
  %119 = load %struct.resource*, %struct.resource** %7, align 8
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.resource* @kmemdup(%struct.resource* %119, i32 16, i32 %120)
  store %struct.resource* %121, %struct.resource** %8, align 8
  %122 = load %struct.resource*, %struct.resource** %8, align 8
  %123 = icmp ne %struct.resource* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %282

127:                                              ; preds = %118
  %128 = load %struct.resource*, %struct.resource** %7, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %132 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %131, i32 0, i32 7
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %130, %135
  %137 = load %struct.resource*, %struct.resource** %8, align 8
  %138 = getelementptr inbounds %struct.resource, %struct.resource* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.resource*, %struct.resource** %8, align 8
  %140 = getelementptr inbounds %struct.resource, %struct.resource* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %143 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %142, i32 0, i32 7
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %141, %146
  %148 = load %struct.resource*, %struct.resource** %8, align 8
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %127, %116
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = load %struct.resource*, %struct.resource** %8, align 8
  %153 = call i32 @devm_ioremap_resource(%struct.device* %151, %struct.resource* %152)
  %154 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %155 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 8
  %156 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %157 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @IS_ERR(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %150
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %166 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %9, align 4
  br label %247

169:                                              ; preds = %150
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = call i32 @dwc3_qcom_setup_irq(%struct.platform_device* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load %struct.device*, %struct.device** %5, align 8
  %176 = load i32, i32* %9, align 4
  %177 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  br label %247

178:                                              ; preds = %169
  %179 = load %struct.device*, %struct.device** %5, align 8
  %180 = call i32 @device_property_read_bool(%struct.device* %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %11, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %185 = call i32 @dwc3_qcom_select_utmi_clk(%struct.dwc3_qcom* %184)
  br label %186

186:                                              ; preds = %183, %178
  %187 = load %struct.device_node*, %struct.device_node** %4, align 8
  %188 = icmp ne %struct.device_node* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %191 = call i32 @dwc3_qcom_of_register_core(%struct.platform_device* %190)
  store i32 %191, i32* %9, align 4
  br label %195

192:                                              ; preds = %186
  %193 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %194 = call i32 @dwc3_qcom_acpi_register_core(%struct.platform_device* %193)
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.device*, %struct.device** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  br label %236

202:                                              ; preds = %195
  %203 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %204 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %203, i32 0, i32 5
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = call i64 @usb_get_dr_mode(i32* %206)
  %208 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %209 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  %210 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %211 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @USB_DR_MODE_PERIPHERAL, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %202
  %216 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %217 = call i32 @dwc3_qcom_vbus_overrride_enable(%struct.dwc3_qcom* %216, i32 1)
  br label %218

218:                                              ; preds = %215, %202
  %219 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %220 = call i32 @dwc3_qcom_register_extcon(%struct.dwc3_qcom* %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %236

224:                                              ; preds = %218
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = call i32 @device_init_wakeup(%struct.device* %226, i32 1)
  %228 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %229 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %228, i32 0, i32 1
  store i32 0, i32* %229, align 8
  %230 = load %struct.device*, %struct.device** %5, align 8
  %231 = call i32 @pm_runtime_set_active(%struct.device* %230)
  %232 = load %struct.device*, %struct.device** %5, align 8
  %233 = call i32 @pm_runtime_enable(%struct.device* %232)
  %234 = load %struct.device*, %struct.device** %5, align 8
  %235 = call i32 @pm_runtime_forbid(%struct.device* %234)
  store i32 0, i32* %2, align 4
  br label %282

236:                                              ; preds = %223, %198
  %237 = load %struct.device_node*, %struct.device_node** %4, align 8
  %238 = icmp ne %struct.device_node* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %236
  %240 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %241 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %240, i32 0, i32 0
  %242 = call i32 @of_platform_depopulate(%struct.device* %241)
  br label %246

243:                                              ; preds = %236
  %244 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %245 = call i32 @platform_device_put(%struct.platform_device* %244)
  br label %246

246:                                              ; preds = %243, %239
  br label %247

247:                                              ; preds = %246, %174, %161
  %248 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %249 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %252

252:                                              ; preds = %272, %247
  %253 = load i32, i32* %10, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %252
  %256 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %257 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %256, i32 0, i32 4
  %258 = load i32*, i32** %257, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @clk_disable_unprepare(i32 %262)
  %264 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %265 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %264, i32 0, i32 4
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @clk_put(i32 %270)
  br label %272

272:                                              ; preds = %255
  %273 = load i32, i32* %10, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %10, align 4
  br label %252

275:                                              ; preds = %252
  br label %276

276:                                              ; preds = %275, %107, %95
  %277 = load %struct.dwc3_qcom*, %struct.dwc3_qcom** %6, align 8
  %278 = getelementptr inbounds %struct.dwc3_qcom, %struct.dwc3_qcom* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @reset_control_assert(i32 %279)
  %281 = load i32, i32* %9, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %276, %224, %124, %81, %64, %47, %24
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local %struct.dwc3_qcom* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.dwc3_qcom*) #1

declare dso_local i64 @has_acpi_companion(%struct.device*) #1

declare dso_local %struct.TYPE_4__* @acpi_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_reset_control_array_get_optional_exclusive(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @dwc3_qcom_clk_init(%struct.dwc3_qcom*, i32) #1

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.resource* @kmemdup(%struct.resource*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i32 @dwc3_qcom_setup_irq(%struct.platform_device*) #1

declare dso_local i32 @device_property_read_bool(%struct.device*, i8*) #1

declare dso_local i32 @dwc3_qcom_select_utmi_clk(%struct.dwc3_qcom*) #1

declare dso_local i32 @dwc3_qcom_of_register_core(%struct.platform_device*) #1

declare dso_local i32 @dwc3_qcom_acpi_register_core(%struct.platform_device*) #1

declare dso_local i64 @usb_get_dr_mode(i32*) #1

declare dso_local i32 @dwc3_qcom_vbus_overrride_enable(%struct.dwc3_qcom*, i32) #1

declare dso_local i32 @dwc3_qcom_register_extcon(%struct.dwc3_qcom*) #1

declare dso_local i32 @device_init_wakeup(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_forbid(%struct.device*) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
