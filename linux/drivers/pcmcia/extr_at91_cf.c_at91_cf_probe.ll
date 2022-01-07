; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_at91_cf.c_at91_cf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_at91_cf.c_at91_cf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.at91_cf_data* }
%struct.at91_cf_data = type { i32, i32, i32, i32 }
%struct.at91_cf_socket = type { %struct.TYPE_12__, i64, %struct.platform_device*, %struct.at91_cf_data* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i32, i32*, i32*, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_11__ = type { %struct.resource* }
%struct.resource = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cf_det\00", align 1
@at91_cf_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"at91_cf detect\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cf_rst\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"cf_vcc\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"cf_irq\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"at91_cf\00", align 1
@nr_irqs = common dso_local global i64 0, align 8
@CF_IO_PHYS = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"irqs det #%d, io #%d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@at91_cf_ops = common dso_local global i32 0, align 4
@pccard_static_ops = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@SS_CAP_MEM_ALIGN = common dso_local global i32 0, align 4
@SZ_2K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_cf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_cf_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.at91_cf_socket*, align 8
  %5 = alloca %struct.at91_cf_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load %struct.at91_cf_data*, %struct.at91_cf_data** %10, align 8
  store %struct.at91_cf_data* %11, %struct.at91_cf_data** %5, align 8
  %12 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %13 = icmp ne %struct.at91_cf_data* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @at91_cf_dt_init(%struct.platform_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %258

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.at91_cf_data*, %struct.at91_cf_data** %24, align 8
  store %struct.at91_cf_data* %25, %struct.at91_cf_data** %5, align 8
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %28 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @gpio_is_valid(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %34 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @gpio_is_valid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %26
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %258

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load i32, i32* @IORESOURCE_MEM, align 4
  %44 = call %struct.resource* @platform_get_resource(%struct.platform_device* %42, i32 %43, i32 0)
  store %struct.resource* %44, %struct.resource** %6, align 8
  %45 = load %struct.resource*, %struct.resource** %6, align 8
  %46 = icmp ne %struct.resource* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %258

50:                                               ; preds = %41
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.at91_cf_socket* @devm_kzalloc(%struct.TYPE_13__* %52, i32 88, i32 %53)
  store %struct.at91_cf_socket* %54, %struct.at91_cf_socket** %4, align 8
  %55 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %56 = icmp ne %struct.at91_cf_socket* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %258

60:                                               ; preds = %50
  %61 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %62 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %63 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %62, i32 0, i32 3
  store %struct.at91_cf_data* %61, %struct.at91_cf_data** %63, align 8
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %66 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %65, i32 0, i32 2
  store %struct.platform_device* %64, %struct.platform_device** %66, align 8
  %67 = load %struct.resource*, %struct.resource** %6, align 8
  %68 = getelementptr inbounds %struct.resource, %struct.resource* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %71 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %74 = call i32 @platform_set_drvdata(%struct.platform_device* %72, %struct.at91_cf_socket* %73)
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %78 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @devm_gpio_request(%struct.TYPE_13__* %76, i32 %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %60
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %258

85:                                               ; preds = %60
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %89 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @gpio_to_irq(i32 %90)
  %92 = load i32, i32* @at91_cf_irq, align 4
  %93 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %94 = call i32 @devm_request_irq(%struct.TYPE_13__* %87, i64 %91, i32 %92, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.at91_cf_socket* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %258

99:                                               ; preds = %85
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 @device_init_wakeup(%struct.TYPE_13__* %101, i32 1)
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %106 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @devm_gpio_request(%struct.TYPE_13__* %104, i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  br label %253

112:                                              ; preds = %99
  %113 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %114 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @gpio_is_valid(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %122 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @devm_gpio_request(%struct.TYPE_13__* %120, i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %253

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128, %112
  %130 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %131 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @gpio_is_valid(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %129
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %139 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @devm_gpio_request(%struct.TYPE_13__* %137, i32 %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %253

145:                                              ; preds = %135
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %146, i32 0, i32 0
  %148 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %149 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @gpio_to_irq(i32 %150)
  %152 = load i32, i32* @at91_cf_irq, align 4
  %153 = load i32, i32* @IRQF_SHARED, align 4
  %154 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %155 = call i32 @devm_request_irq(%struct.TYPE_13__* %147, i64 %151, i32 %152, i32 %153, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.at91_cf_socket* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %145
  br label %253

159:                                              ; preds = %145
  %160 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %161 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @gpio_to_irq(i32 %162)
  %164 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %165 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 8
  store i64 %163, i64* %166, align 8
  br label %173

167:                                              ; preds = %129
  %168 = load i64, i64* @nr_irqs, align 8
  %169 = add nsw i64 %168, 1
  %170 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %171 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 8
  store i64 %169, i64* %172, align 8
  br label %173

173:                                              ; preds = %167, %159
  %174 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %175 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  store i32 65536, i32* %176, align 8
  %177 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %178 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CF_IO_PHYS, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @pci_ioremap_io(i32 65536, i64 %181)
  store i32 %182, i32* %7, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %173
  br label %253

186:                                              ; preds = %173
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.resource*, %struct.resource** %6, align 8
  %190 = getelementptr inbounds %struct.resource, %struct.resource* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.resource*, %struct.resource** %6, align 8
  %193 = call i32 @resource_size(%struct.resource* %192)
  %194 = call i32 @devm_request_mem_region(%struct.TYPE_13__* %188, i64 %191, i32 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %186
  %197 = load i32, i32* @ENXIO, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %7, align 4
  br label %253

199:                                              ; preds = %186
  %200 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %201 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %200, i32 0, i32 0
  %202 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %203 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i64 @gpio_to_irq(i32 %204)
  %206 = load %struct.at91_cf_data*, %struct.at91_cf_data** %5, align 8
  %207 = getelementptr inbounds %struct.at91_cf_data, %struct.at91_cf_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @gpio_to_irq(i32 %208)
  %210 = call i32 @dev_info(%struct.TYPE_13__* %201, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %205, i64 %209)
  %211 = load i32, i32* @THIS_MODULE, align 4
  %212 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %213 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 7
  store i32 %211, i32* %214, align 8
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %215, i32 0, i32 0
  %217 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %218 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store %struct.TYPE_13__* %216, %struct.TYPE_13__** %220, align 8
  %221 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %222 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 5
  store i32* @at91_cf_ops, i32** %223, align 8
  %224 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %225 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 4
  store i32* @pccard_static_ops, i32** %226, align 8
  %227 = load i32, i32* @SS_CAP_PCCARD, align 4
  %228 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @SS_CAP_MEM_ALIGN, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %233 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 1
  store i32 %231, i32* %234, align 4
  %235 = load i32, i32* @SZ_2K, align 4
  %236 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %237 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 3
  store i32 %235, i32* %238, align 8
  %239 = load %struct.resource*, %struct.resource** %6, align 8
  %240 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %241 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i64 0
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  store %struct.resource* %239, %struct.resource** %245, align 8
  %246 = load %struct.at91_cf_socket*, %struct.at91_cf_socket** %4, align 8
  %247 = getelementptr inbounds %struct.at91_cf_socket, %struct.at91_cf_socket* %246, i32 0, i32 0
  %248 = call i32 @pcmcia_register_socket(%struct.TYPE_12__* %247)
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* %7, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %199
  br label %253

252:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %258

253:                                              ; preds = %251, %196, %185, %158, %144, %127, %111
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = call i32 @device_init_wakeup(%struct.TYPE_13__* %255, i32 0)
  %257 = load i32, i32* %7, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %253, %252, %97, %83, %57, %47, %38, %19
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @at91_cf_dt_init(%struct.platform_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.at91_cf_socket* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.at91_cf_socket*) #1

declare dso_local i32 @devm_gpio_request(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_13__*, i64, i32, i32, i8*, %struct.at91_cf_socket*) #1

declare dso_local i64 @gpio_to_irq(i32) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @pci_ioremap_io(i32, i64) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_13__*, i64, i32, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i64, i64) #1

declare dso_local i32 @pcmcia_register_socket(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
