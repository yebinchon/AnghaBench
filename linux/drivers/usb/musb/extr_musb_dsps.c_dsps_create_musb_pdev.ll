; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_create_musb_pdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_create_musb_pdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsps_glue = type { %struct.platform_device* }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32, i32*, %struct.device*, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.musb_hdrc_platform_data = type { i32, i32, i32*, %struct.musb_hdrc_config* }
%struct.musb_hdrc_config = type { i32, i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get memory.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to get irq.\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"musb-hdrc\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to allocate musb device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@musb_dmamask = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"failed to add resources\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@dsps_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"mentor,num-eps\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"mentor,ram-bits\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"mentor,power\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"mentor,multipoint\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"ignore incorrect maximum_speed (super-speed) setting in dts\00", align 1
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"failed to add platform_data\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"failed to register musb device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsps_glue*, %struct.platform_device*)* @dsps_create_musb_pdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_create_musb_pdev(%struct.dsps_glue* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsps_glue*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.musb_hdrc_platform_data, align 8
  %7 = alloca [2 x %struct.resource], align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.musb_hdrc_config*, align 8
  %11 = alloca %struct.platform_device*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dsps_glue* %0, %struct.dsps_glue** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 3
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %12, align 8
  %21 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 0
  %22 = call i32 @memset(%struct.resource* %21, i32 0, i32 8)
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %23, i32 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %8, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %177

33:                                               ; preds = %2
  %34 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 0
  %35 = load %struct.resource*, %struct.resource** %8, align 8
  %36 = bitcast %struct.resource* %34 to i8*
  %37 = bitcast %struct.resource* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %39 = load i32, i32* @IORESOURCE_IRQ, align 4
  %40 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %38, i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %40, %struct.resource** %8, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = icmp ne %struct.resource* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %177

48:                                               ; preds = %33
  %49 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 1
  %50 = load %struct.resource*, %struct.resource** %8, align 8
  %51 = bitcast %struct.resource* %49 to i8*
  %52 = bitcast %struct.resource* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 0
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 4095
  %57 = icmp eq i32 %56, 1024
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 1
  %60 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  store %struct.platform_device* %60, %struct.platform_device** %11, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %62 = icmp ne %struct.platform_device* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %177

68:                                               ; preds = %48
  %69 = load %struct.device*, %struct.device** %9, align 8
  %70 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 2
  store %struct.device* %69, %struct.device** %72, align 8
  %73 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 1
  store i32* @musb_dmamask, i32** %75, align 8
  %76 = load i32, i32* @musb_dmamask, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i32 @device_set_of_node_from_dev(%struct.device* %81, %struct.device* %83)
  %85 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %86 = load %struct.dsps_glue*, %struct.dsps_glue** %4, align 8
  %87 = getelementptr inbounds %struct.dsps_glue, %struct.dsps_glue* %86, i32 0, i32 0
  store %struct.platform_device* %85, %struct.platform_device** %87, align 8
  %88 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %89 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 0
  %90 = getelementptr inbounds [2 x %struct.resource], [2 x %struct.resource]* %7, i64 0, i64 0
  %91 = call i32 @ARRAY_SIZE(%struct.resource* %90)
  %92 = call i32 @platform_device_add_resources(%struct.platform_device* %88, %struct.resource* %89, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %68
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %173

98:                                               ; preds = %68
  %99 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call %struct.musb_hdrc_config* @devm_kzalloc(%struct.device* %100, i32 20, i32 %101)
  store %struct.musb_hdrc_config* %102, %struct.musb_hdrc_config** %10, align 8
  %103 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %104 = icmp ne %struct.musb_hdrc_config* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %13, align 4
  br label %173

108:                                              ; preds = %98
  %109 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %110 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %6, i32 0, i32 3
  store %struct.musb_hdrc_config* %109, %struct.musb_hdrc_config** %110, align 8
  %111 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %6, i32 0, i32 2
  store i32* @dsps_ops, i32** %111, align 8
  %112 = load %struct.device_node*, %struct.device_node** %12, align 8
  %113 = call i32 @get_int_prop(%struct.device_node* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %114 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %115 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.device_node*, %struct.device_node** %12, align 8
  %117 = call i32 @get_int_prop(%struct.device_node* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %118 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %119 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %121 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %120, i32 0, i32 2
  store i32 1, i32* %121, align 4
  %122 = load %struct.device*, %struct.device** %9, align 8
  %123 = call i32 @musb_get_mode(%struct.device* %122)
  %124 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %6, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load %struct.device_node*, %struct.device_node** %12, align 8
  %126 = call i32 @get_int_prop(%struct.device_node* %125, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %127 = sdiv i32 %126, 2
  %128 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %6, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load %struct.device_node*, %struct.device_node** %12, align 8
  %130 = call i32 @of_property_read_u32(%struct.device_node* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32* %14)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %108
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %138 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %137, i32 0, i32 3
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133, %108
  %140 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @usb_get_maximum_speed(%struct.device* %141)
  %143 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %144 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 4
  %145 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %146 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  switch i32 %147, label %152 [
    i32 129, label %148
    i32 130, label %148
    i32 128, label %149
  ]

148:                                              ; preds = %139, %139
  br label %156

149:                                              ; preds = %139
  %150 = load %struct.device*, %struct.device** %9, align 8
  %151 = call i32 @dev_warn(%struct.device* %150, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  br label %152

152:                                              ; preds = %139, %149
  %153 = load i32, i32* @USB_SPEED_HIGH, align 4
  %154 = load %struct.musb_hdrc_config*, %struct.musb_hdrc_config** %10, align 8
  %155 = getelementptr inbounds %struct.musb_hdrc_config, %struct.musb_hdrc_config* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %148
  %157 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %158 = call i32 @platform_device_add_data(%struct.platform_device* %157, %struct.musb_hdrc_platform_data* %6, i32 24)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.device*, %struct.device** %9, align 8
  %163 = call i32 @dev_err(%struct.device* %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %173

164:                                              ; preds = %156
  %165 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %166 = call i32 @platform_device_add(%struct.platform_device* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.device*, %struct.device** %9, align 8
  %171 = call i32 @dev_err(%struct.device* %170, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %173

172:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %177

173:                                              ; preds = %169, %161, %105, %95
  %174 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %175 = call i32 @platform_device_put(%struct.platform_device* %174)
  %176 = load i32, i32* %13, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %172, %63, %43, %28
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i32 @memset(%struct.resource*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @device_set_of_node_from_dev(%struct.device*, %struct.device*) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.resource*) #1

declare dso_local %struct.musb_hdrc_config* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @get_int_prop(%struct.device_node*, i8*) #1

declare dso_local i32 @musb_get_mode(%struct.device*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @usb_get_maximum_speed(%struct.device*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.musb_hdrc_platform_data*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
