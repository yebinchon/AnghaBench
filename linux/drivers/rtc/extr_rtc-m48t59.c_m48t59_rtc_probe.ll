; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t59.c_m48t59_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_class_ops = type { i32 }
%struct.platform_device = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.m48t59_plat_data* }
%struct.m48t59_plat_data = type { i32, i32, i64, i64, i64 }
%struct.m48t59_private = type { i64, %struct.TYPE_13__*, i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.rtc_class_ops* }
%struct.resource = type { i32, i32 }
%struct.nvmem_config = type { i8*, i32, i32, i32, %struct.platform_device*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"m48t59-\00", align 1
@m48t59_nvram_write = common dso_local global i32 0, align 4
@m48t59_nvram_read = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@m48t59_mem_writeb = common dso_local global i64 0, align 8
@m48t59_mem_readb = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@m48t59_rtc_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"rtc-m48t59\00", align 1
@m48t59_rtc_ops = common dso_local global %struct.rtc_class_ops zeroinitializer, align 4
@m48t02_rtc_ops = common dso_local global %struct.rtc_class_ops zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Unknown RTC type\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @m48t59_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t59_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.m48t59_plat_data*, align 8
  %5 = alloca %struct.m48t59_private*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtc_class_ops*, align 8
  %9 = alloca %struct.nvmem_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.m48t59_plat_data* @dev_get_platdata(%struct.TYPE_14__* %11)
  store %struct.m48t59_plat_data* %12, %struct.m48t59_plat_data** %4, align 8
  store %struct.m48t59_private* null, %struct.m48t59_private** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 2
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 4
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  store %struct.platform_device* %20, %struct.platform_device** %19, align 8
  %21 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 5
  %22 = load i32, i32* @m48t59_nvram_write, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 6
  %24 = load i32, i32* @m48t59_nvram_read, align 4
  store i32 %24, i32* %23, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = icmp ne %struct.resource* %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %1
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_IO, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %6, align 8
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = icmp ne %struct.resource* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %265

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %1
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IORESOURCE_IO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %40
  %48 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %49 = icmp ne %struct.m48t59_plat_data* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %52 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %57 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55, %50, %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %265

63:                                               ; preds = %55
  br label %118

64:                                               ; preds = %40
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IORESOURCE_MEM, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %117

71:                                               ; preds = %64
  %72 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %73 = icmp ne %struct.m48t59_plat_data* %72, null
  br i1 %73, label %90, label %74

74:                                               ; preds = %71
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @devm_kzalloc(%struct.TYPE_14__* %76, i32 32, i32 %77)
  %79 = bitcast i8* %78 to %struct.m48t59_plat_data*
  store %struct.m48t59_plat_data* %79, %struct.m48t59_plat_data** %4, align 8
  %80 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %81 = icmp ne %struct.m48t59_plat_data* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %265

85:                                               ; preds = %74
  %86 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store %struct.m48t59_plat_data* %86, %struct.m48t59_plat_data** %89, align 8
  br label %90

90:                                               ; preds = %85, %71
  %91 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %92 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %97 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %96, i32 0, i32 0
  store i32 128, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %100 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* @m48t59_mem_writeb, align 8
  %105 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %106 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %109 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = load i64, i64* @m48t59_mem_readb, align 8
  %114 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %115 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %107
  br label %117

117:                                              ; preds = %116, %64
  br label %118

118:                                              ; preds = %117, %63
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 0
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @devm_kzalloc(%struct.TYPE_14__* %120, i32 32, i32 %121)
  %123 = bitcast i8* %122 to %struct.m48t59_private*
  store %struct.m48t59_private* %123, %struct.m48t59_private** %5, align 8
  %124 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %125 = icmp ne %struct.m48t59_private* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %265

129:                                              ; preds = %118
  %130 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %131 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %134 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %136 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %157, label %139

139:                                              ; preds = %129
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = load %struct.resource*, %struct.resource** %6, align 8
  %143 = getelementptr inbounds %struct.resource, %struct.resource* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.resource*, %struct.resource** %6, align 8
  %146 = call i32 @resource_size(%struct.resource* %145)
  %147 = call i64 @devm_ioremap(%struct.TYPE_14__* %141, i32 %144, i32 %146)
  %148 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %149 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %151 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %139
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %265

156:                                              ; preds = %139
  br label %157

157:                                              ; preds = %156, %129
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = call i64 @platform_get_irq(%struct.platform_device* %158, i32 0)
  %160 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %161 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %160, i32 0, i32 0
  store i64 %159, i64* %161, align 8
  %162 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %163 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sle i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i64, i64* @NO_IRQ, align 8
  %168 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %169 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  br label %170

170:                                              ; preds = %166, %157
  %171 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %172 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @NO_IRQ, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %192

176:                                              ; preds = %170
  %177 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %178 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %177, i32 0, i32 0
  %179 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %180 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* @m48t59_rtc_interrupt, align 4
  %183 = load i32, i32* @IRQF_SHARED, align 4
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 @devm_request_irq(%struct.TYPE_14__* %178, i64 %181, i32 %182, i32 %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_14__* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %176
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %265

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %170
  %193 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %194 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  switch i32 %195, label %205 [
    i32 128, label %196
    i32 130, label %199
    i32 129, label %202
  ]

196:                                              ; preds = %192
  store %struct.rtc_class_ops* @m48t59_rtc_ops, %struct.rtc_class_ops** %8, align 8
  %197 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %198 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %197, i32 0, i32 1
  store i32 8176, i32* %198, align 4
  br label %211

199:                                              ; preds = %192
  store %struct.rtc_class_ops* @m48t02_rtc_ops, %struct.rtc_class_ops** %8, align 8
  %200 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %201 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %200, i32 0, i32 1
  store i32 2032, i32* %201, align 4
  br label %211

202:                                              ; preds = %192
  store %struct.rtc_class_ops* @m48t02_rtc_ops, %struct.rtc_class_ops** %8, align 8
  %203 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %204 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %203, i32 0, i32 1
  store i32 8176, i32* %204, align 4
  br label %211

205:                                              ; preds = %192
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = call i32 @dev_err(%struct.TYPE_14__* %207, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i32, i32* @ENODEV, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %265

211:                                              ; preds = %202, %199, %196
  %212 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %213 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %212, i32 0, i32 2
  %214 = call i32 @spin_lock_init(i32* %213)
  %215 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %216 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %217 = call i32 @platform_set_drvdata(%struct.platform_device* %215, %struct.m48t59_private* %216)
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__* %219)
  %221 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %222 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %221, i32 0, i32 1
  store %struct.TYPE_13__* %220, %struct.TYPE_13__** %222, align 8
  %223 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %224 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %223, i32 0, i32 1
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = call i64 @IS_ERR(%struct.TYPE_13__* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %211
  %229 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %230 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %229, i32 0, i32 1
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %230, align 8
  %232 = call i32 @PTR_ERR(%struct.TYPE_13__* %231)
  store i32 %232, i32* %2, align 4
  br label %265

233:                                              ; preds = %211
  %234 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %235 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %234, i32 0, i32 1
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  store i32 1, i32* %237, align 8
  %238 = load %struct.rtc_class_ops*, %struct.rtc_class_ops** %8, align 8
  %239 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %240 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %239, i32 0, i32 1
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  store %struct.rtc_class_ops* %238, %struct.rtc_class_ops** %242, align 8
  %243 = load %struct.m48t59_plat_data*, %struct.m48t59_plat_data** %4, align 8
  %244 = getelementptr inbounds %struct.m48t59_plat_data, %struct.m48t59_plat_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %9, i32 0, i32 3
  store i32 %245, i32* %246, align 8
  %247 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %248 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %247, i32 0, i32 1
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = call i32 @rtc_nvmem_register(%struct.TYPE_13__* %249, %struct.nvmem_config* %9)
  store i32 %250, i32* %7, align 4
  %251 = load i32, i32* %7, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %233
  %254 = load i32, i32* %7, align 4
  store i32 %254, i32* %2, align 4
  br label %265

255:                                              ; preds = %233
  %256 = load %struct.m48t59_private*, %struct.m48t59_private** %5, align 8
  %257 = getelementptr inbounds %struct.m48t59_private, %struct.m48t59_private* %256, i32 0, i32 1
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %257, align 8
  %259 = call i32 @rtc_register_device(%struct.TYPE_13__* %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %255
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %2, align 4
  br label %265

264:                                              ; preds = %255
  store i32 0, i32* %2, align 4
  br label %265

265:                                              ; preds = %264, %262, %253, %228, %205, %189, %154, %126, %82, %60, %36
  %266 = load i32, i32* %2, align 4
  ret i32 %266
}

declare dso_local %struct.m48t59_plat_data* @dev_get_platdata(%struct.TYPE_14__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @devm_ioremap(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_14__*, i64, i32, i32, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.m48t59_private*) #1

declare dso_local %struct.TYPE_13__* @devm_rtc_allocate_device(%struct.TYPE_14__*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_13__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_13__*, %struct.nvmem_config*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
