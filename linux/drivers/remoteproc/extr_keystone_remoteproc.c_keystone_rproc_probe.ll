; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.keystone_rproc = type { i32, i32, i32, i32, %struct.device*, %struct.rproc* }
%struct.rproc = type { i32, %struct.keystone_rproc* }

@.str = private unnamed_addr constant [18 x i8] c"keystone-dsp%d-fw\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"only DT-based devices are supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"rproc\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"device does not have an alias id\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@keystone_rproc_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to enable clock, status = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"vring\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"kick-gpios\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"failed to get gpio for virtio kicks, status = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"device does not have specific CMA pool\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"failed to get reset status, status = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"device is not in reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"failed to add register device with remoteproc core, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @keystone_rproc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_rproc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.keystone_rproc*, align 8
  %7 = alloca %struct.rproc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  store i8* null, i8** %9, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %211

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_alias_get_id(%struct.device_node* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %211

34:                                               ; preds = %25
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @devm_kzalloc(%struct.device* %37, i32 %38, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %211

46:                                               ; preds = %34
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snprintf(i8* %47, i32 %48, i8* %49, i32 %50)
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_name(%struct.device* %53)
  %55 = load i8*, i8** %9, align 8
  %56 = call %struct.rproc* @rproc_alloc(%struct.device* %52, i32 %54, i32* @keystone_rproc_ops, i8* %55, i32 32)
  store %struct.rproc* %56, %struct.rproc** %7, align 8
  %57 = load %struct.rproc*, %struct.rproc** %7, align 8
  %58 = icmp ne %struct.rproc* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %211

62:                                               ; preds = %46
  %63 = load %struct.rproc*, %struct.rproc** %7, align 8
  %64 = getelementptr inbounds %struct.rproc, %struct.rproc* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.rproc*, %struct.rproc** %7, align 8
  %66 = getelementptr inbounds %struct.rproc, %struct.rproc* %65, i32 0, i32 1
  %67 = load %struct.keystone_rproc*, %struct.keystone_rproc** %66, align 8
  store %struct.keystone_rproc* %67, %struct.keystone_rproc** %6, align 8
  %68 = load %struct.rproc*, %struct.rproc** %7, align 8
  %69 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %70 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %69, i32 0, i32 5
  store %struct.rproc* %68, %struct.rproc** %70, align 8
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %73 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %72, i32 0, i32 4
  store %struct.device* %71, %struct.device** %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %76 = call i32 @keystone_rproc_of_get_dev_syscon(%struct.platform_device* %74, %struct.keystone_rproc* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %207

80:                                               ; preds = %62
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @devm_reset_control_get_exclusive(%struct.device* %81, i32* null)
  %83 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %84 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %86 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @IS_ERR(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %92 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @PTR_ERR(i32 %93)
  store i32 %94, i32* %12, align 4
  br label %207

95:                                               ; preds = %80
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @pm_runtime_enable(%struct.device* %96)
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = call i32 @pm_runtime_get_sync(%struct.device* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.device*, %struct.device** %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load %struct.device*, %struct.device** %4, align 8
  %107 = call i32 @pm_runtime_put_noidle(%struct.device* %106)
  br label %204

108:                                              ; preds = %95
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %111 = call i32 @keystone_rproc_of_get_memories(%struct.platform_device* %109, %struct.keystone_rproc* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %201

115:                                              ; preds = %108
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = call i8* @platform_get_irq_byname(%struct.platform_device* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %120 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %122 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %115
  %126 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %127 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %12, align 4
  br label %201

129:                                              ; preds = %115
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = call i8* @platform_get_irq_byname(%struct.platform_device* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %132 = ptrtoint i8* %131 to i32
  %133 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %134 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %136 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %141 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %12, align 4
  br label %201

143:                                              ; preds = %129
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i32 @of_get_named_gpio_flags(%struct.device_node* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 0, i32* null)
  %146 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %147 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %149 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %154 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  store i32 %155, i32* %12, align 4
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %156, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32 %157)
  br label %201

159:                                              ; preds = %143
  %160 = load %struct.device*, %struct.device** %4, align 8
  %161 = call i64 @of_reserved_mem_device_init(%struct.device* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.device*, %struct.device** %4, align 8
  %165 = call i32 @dev_warn(%struct.device* %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %159
  %167 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %168 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @reset_control_status(i32 %169)
  store i32 %170, i32* %12, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load %struct.device*, %struct.device** %4, align 8
  %175 = load i32, i32* %12, align 4
  %176 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %174, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %175)
  br label %198

177:                                              ; preds = %166
  %178 = load i32, i32* %12, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0))
  %182 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %183 = call i32 @keystone_rproc_dsp_reset(%struct.keystone_rproc* %182)
  br label %184

184:                                              ; preds = %180, %177
  br label %185

185:                                              ; preds = %184
  %186 = load %struct.rproc*, %struct.rproc** %7, align 8
  %187 = call i32 @rproc_add(%struct.rproc* %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load %struct.device*, %struct.device** %4, align 8
  %192 = load i32, i32* %12, align 4
  %193 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %191, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %192)
  br label %198

194:                                              ; preds = %185
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = load %struct.keystone_rproc*, %struct.keystone_rproc** %6, align 8
  %197 = call i32 @platform_set_drvdata(%struct.platform_device* %195, %struct.keystone_rproc* %196)
  store i32 0, i32* %2, align 4
  br label %211

198:                                              ; preds = %190, %173
  %199 = load %struct.device*, %struct.device** %4, align 8
  %200 = call i32 @of_reserved_mem_device_release(%struct.device* %199)
  br label %201

201:                                              ; preds = %198, %152, %139, %125, %114
  %202 = load %struct.device*, %struct.device** %4, align 8
  %203 = call i32 @pm_runtime_put_sync(%struct.device* %202)
  br label %204

204:                                              ; preds = %201, %102
  %205 = load %struct.device*, %struct.device** %4, align 8
  %206 = call i32 @pm_runtime_disable(%struct.device* %205)
  br label %207

207:                                              ; preds = %204, %90, %79
  %208 = load %struct.rproc*, %struct.rproc** %7, align 8
  %209 = call i32 @rproc_free(%struct.rproc* %208)
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %207, %194, %59, %43, %30, %20
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.device*, i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @keystone_rproc_of_get_dev_syscon(%struct.platform_device*, %struct.keystone_rproc*) #1

declare dso_local i32 @devm_reset_control_get_exclusive(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @keystone_rproc_of_get_memories(%struct.platform_device*, %struct.keystone_rproc*) #1

declare dso_local i8* @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @of_get_named_gpio_flags(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i64 @of_reserved_mem_device_init(%struct.device*) #1

declare dso_local i32 @reset_control_status(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @keystone_rproc_dsp_reset(%struct.keystone_rproc*) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.keystone_rproc*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
