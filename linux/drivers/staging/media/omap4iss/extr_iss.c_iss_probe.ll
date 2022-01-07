; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8**, %struct.iss_platform_data* }
%struct.iss_platform_data = type { i32 }
%struct.iss_device = type { i32, i32, i32, i32, %struct.TYPE_5__*, i32, i32, i8*, %struct.iss_platform_data* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@ISS_HL_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Revision %08x found\0A\00", align 1
@OMAP4_ISS_MEM_LAST = common dso_local global i32 0, align 4
@OMAP4_ISS_MEM_BTE = common dso_local global i32 0, align 4
@BTE_CTRL = common dso_local global i32 0, align 4
@BTE_CTRL_BW_LIMITER_MASK = common dso_local global i32 0, align 4
@BTE_CTRL_BW_LIMITER_SHIFT = common dso_local global i32 0, align 4
@OMAP4_ISS_SUBCLK_ISP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ISP Revision %08x found\0A\00", align 1
@OMAP4_ISS_MEM_ISP_SYS1 = common dso_local global i32 0, align 4
@ISP5_REVISION = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@iss_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"OMAP4 ISS\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Unable to request IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @iss_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iss_platform_data*, align 8
  %5 = alloca %struct.iss_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.iss_platform_data*, %struct.iss_platform_data** %10, align 8
  store %struct.iss_platform_data* %11, %struct.iss_platform_data** %4, align 8
  %12 = load %struct.iss_platform_data*, %struct.iss_platform_data** %4, align 8
  %13 = icmp ne %struct.iss_platform_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %228

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.iss_device* @devm_kzalloc(%struct.TYPE_5__* %19, i32 48, i32 %20)
  store %struct.iss_device* %21, %struct.iss_device** %5, align 8
  %22 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %23 = icmp ne %struct.iss_device* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %228

27:                                               ; preds = %17
  %28 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %29 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %28, i32 0, i32 1
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %34 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %33, i32 0, i32 4
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %34, align 8
  %35 = load %struct.iss_platform_data*, %struct.iss_platform_data** %4, align 8
  %36 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %37 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %36, i32 0, i32 8
  store %struct.iss_platform_data* %35, %struct.iss_platform_data** %37, align 8
  %38 = call i8* @DMA_BIT_MASK(i32 32)
  %39 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %40 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %42 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %41, i32 0, i32 7
  %43 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %44 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i8** %42, i8*** %46, align 8
  %47 = call i8* @DMA_BIT_MASK(i32 32)
  %48 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %49 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %48, i32 0, i32 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i8* %47, i8** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %54 = call i32 @platform_set_drvdata(%struct.platform_device* %52, %struct.iss_device* %53)
  %55 = call i32 @syscon_regmap_lookup_by_compatible(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %57 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %59 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %27
  %64 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %65 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %7, align 4
  br label %223

68:                                               ; preds = %27
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %71 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %72 = call i32 @iss_map_mem_resource(%struct.platform_device* %69, %struct.iss_device* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %223

76:                                               ; preds = %68
  %77 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %78 = call i32 @iss_get_clocks(%struct.iss_device* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %223

82:                                               ; preds = %76
  %83 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %84 = call i32 @omap4iss_get(%struct.iss_device* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %223

87:                                               ; preds = %82
  %88 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %89 = call i32 @iss_reset(%struct.iss_device* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %220

93:                                               ; preds = %87
  %94 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %95 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %96 = load i32, i32* @ISS_HL_REVISION, align 4
  %97 = call i32 @iss_reg_read(%struct.iss_device* %94, i32 %95, i32 %96)
  %98 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %99 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %101 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %100, i32 0, i32 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %104 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_info(%struct.TYPE_5__* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %120, %93
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @OMAP4_ISS_MEM_LAST, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @iss_map_mem_resource(%struct.platform_device* %112, %struct.iss_device* %113, i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %220

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %107

123:                                              ; preds = %107
  %124 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %125 = load i32, i32* @OMAP4_ISS_MEM_BTE, align 4
  %126 = load i32, i32* @BTE_CTRL, align 4
  %127 = load i32, i32* @BTE_CTRL_BW_LIMITER_MASK, align 4
  %128 = load i32, i32* @BTE_CTRL_BW_LIMITER_SHIFT, align 4
  %129 = shl i32 18, %128
  %130 = call i32 @iss_reg_update(%struct.iss_device* %124, i32 %125, i32 %126, i32 %127, i32 %129)
  %131 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %132 = load i32, i32* @OMAP4_ISS_SUBCLK_ISP, align 4
  %133 = call i32 @omap4iss_subclk_enable(%struct.iss_device* %131, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %220

137:                                              ; preds = %123
  %138 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %139 = call i32 @iss_isp_reset(%struct.iss_device* %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %220

143:                                              ; preds = %137
  %144 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %145 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %144, i32 0, i32 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %148 = load i32, i32* @OMAP4_ISS_MEM_ISP_SYS1, align 4
  %149 = load i32, i32* @ISP5_REVISION, align 4
  %150 = call i32 @iss_reg_read(%struct.iss_device* %147, i32 %148, i32 %149)
  %151 = call i32 @dev_info(%struct.TYPE_5__* %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = call i32 @platform_get_irq(%struct.platform_device* %152, i32 0)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp sle i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i32, i32* @ENODEV, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %7, align 4
  br label %220

159:                                              ; preds = %143
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %162 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %164 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %163, i32 0, i32 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %167 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @iss_isr, align 4
  %170 = load i32, i32* @IRQF_SHARED, align 4
  %171 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %172 = call i64 @devm_request_irq(%struct.TYPE_5__* %165, i32 %168, i32 %169, i32 %170, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct.iss_device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %159
  %175 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %176 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %175, i32 0, i32 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = call i32 @dev_err(%struct.TYPE_5__* %177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %7, align 4
  br label %220

181:                                              ; preds = %159
  %182 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %183 = call i32 @iss_initialize_modules(%struct.iss_device* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  br label %220

187:                                              ; preds = %181
  %188 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %189 = call i32 @iss_register_entities(%struct.iss_device* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %217

193:                                              ; preds = %187
  %194 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %195 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %194, i32 0, i32 2
  %196 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %197 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %196, i32 0, i32 3
  %198 = call i32 @media_entity_enum_init(i32* %195, i32* %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %193
  br label %211

202:                                              ; preds = %193
  %203 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %204 = call i32 @iss_create_links(%struct.iss_device* %203)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %211

208:                                              ; preds = %202
  %209 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %210 = call i32 @omap4iss_put(%struct.iss_device* %209)
  store i32 0, i32* %2, align 4
  br label %228

211:                                              ; preds = %207, %201
  %212 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %213 = call i32 @iss_unregister_entities(%struct.iss_device* %212)
  %214 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %215 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %214, i32 0, i32 2
  %216 = call i32 @media_entity_enum_cleanup(i32* %215)
  br label %217

217:                                              ; preds = %211, %192
  %218 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %219 = call i32 @iss_cleanup_modules(%struct.iss_device* %218)
  br label %220

220:                                              ; preds = %217, %186, %174, %156, %142, %136, %118, %92
  %221 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %222 = call i32 @omap4iss_put(%struct.iss_device* %221)
  br label %223

223:                                              ; preds = %220, %86, %81, %75, %63
  %224 = load %struct.iss_device*, %struct.iss_device** %5, align 8
  %225 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %224, i32 0, i32 1
  %226 = call i32 @mutex_destroy(i32* %225)
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %223, %208, %24, %14
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.iss_device* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @DMA_BIT_MASK(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.iss_device*) #1

declare dso_local i32 @syscon_regmap_lookup_by_compatible(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @iss_map_mem_resource(%struct.platform_device*, %struct.iss_device*, i32) #1

declare dso_local i32 @iss_get_clocks(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_get(%struct.iss_device*) #1

declare dso_local i32 @iss_reset(%struct.iss_device*) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @iss_reg_update(%struct.iss_device*, i32, i32, i32, i32) #1

declare dso_local i32 @omap4iss_subclk_enable(%struct.iss_device*, i32) #1

declare dso_local i32 @iss_isp_reset(%struct.iss_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @devm_request_irq(%struct.TYPE_5__*, i32, i32, i32, i8*, %struct.iss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @iss_initialize_modules(%struct.iss_device*) #1

declare dso_local i32 @iss_register_entities(%struct.iss_device*) #1

declare dso_local i32 @media_entity_enum_init(i32*, i32*) #1

declare dso_local i32 @iss_create_links(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_put(%struct.iss_device*) #1

declare dso_local i32 @iss_unregister_entities(%struct.iss_device*) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

declare dso_local i32 @iss_cleanup_modules(%struct.iss_device*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
