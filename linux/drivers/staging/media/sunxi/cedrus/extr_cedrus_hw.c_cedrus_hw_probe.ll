; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_hw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_hw.c_cedrus_hw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_dev = type { %struct.TYPE_12__*, i8*, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.cedrus_variant = type { i32, i32, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cedrus_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to request IRQ\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to reserve memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed to claim SRAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to get AHB clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to get MOD clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ram\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to get RAM clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to get reset control\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Failed to map registers\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Failed to set clock rate\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to enable AHB clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Failed to enable MOD clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Failed to enable RAM clock\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Failed to apply reset\0A\00", align 1
@CEDRUS_QUIRK_NO_DMA_OFFSET = common dso_local global i32 0, align 4
@PHYS_PFN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cedrus_hw_probe(%struct.cedrus_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cedrus_dev*, align 8
  %4 = alloca %struct.cedrus_variant*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cedrus_dev* %0, %struct.cedrus_dev** %3, align 8
  %8 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %9 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %11 = call %struct.cedrus_variant* @of_device_get_match_data(%struct.TYPE_12__* %10)
  store %struct.cedrus_variant* %11, %struct.cedrus_variant** %4, align 8
  %12 = load %struct.cedrus_variant*, %struct.cedrus_variant** %4, align 8
  %13 = icmp ne %struct.cedrus_variant* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %282

17:                                               ; preds = %1
  %18 = load %struct.cedrus_variant*, %struct.cedrus_variant** %4, align 8
  %19 = getelementptr inbounds %struct.cedrus_variant, %struct.cedrus_variant* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %22 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 4
  %23 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @platform_get_irq(i32 %25, i32 0)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %282

31:                                               ; preds = %17
  %32 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %33 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @cedrus_irq, align 4
  %37 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %38 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = call i32 @dev_name(%struct.TYPE_12__* %39)
  %41 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %42 = call i32 @devm_request_irq(%struct.TYPE_12__* %34, i32 %35, i32 %36, i32 0, i32 %40, %struct.cedrus_dev* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %47 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %47, align 8
  %49 = call i32 @dev_err(%struct.TYPE_12__* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %282

51:                                               ; preds = %31
  %52 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %53 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = call i32 @of_reserved_mem_device_init(%struct.TYPE_12__* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %65 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = call i32 @dev_err(%struct.TYPE_12__* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %282

69:                                               ; preds = %58, %51
  %70 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %71 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = call i32 @sunxi_sram_claim(%struct.TYPE_12__* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %78 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = call i32 @dev_err(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %276

81:                                               ; preds = %69
  %82 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %83 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = call i8* @devm_clk_get(%struct.TYPE_12__* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %87 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %89 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @IS_ERR(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %81
  %94 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %95 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = call i32 @dev_err(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %99 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @PTR_ERR(i8* %100)
  store i32 %101, i32* %7, align 4
  br label %271

102:                                              ; preds = %81
  %103 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %104 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = call i8* @devm_clk_get(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %108 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %110 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %116 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i32 @dev_err(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %119 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %120 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @PTR_ERR(i8* %121)
  store i32 %122, i32* %7, align 4
  br label %271

123:                                              ; preds = %102
  %124 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %125 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = call i8* @devm_clk_get(%struct.TYPE_12__* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %128 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %129 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %131 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @IS_ERR(i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %123
  %136 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %137 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = call i32 @dev_err(%struct.TYPE_12__* %138, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %140 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %141 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @PTR_ERR(i8* %142)
  store i32 %143, i32* %7, align 4
  br label %271

144:                                              ; preds = %123
  %145 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %146 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = call i8* @devm_reset_control_get(%struct.TYPE_12__* %147, i32* null)
  %149 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %150 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  %151 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %152 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %151, i32 0, i32 4
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @IS_ERR(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %144
  %157 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %158 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = call i32 @dev_err(%struct.TYPE_12__* %159, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %161 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %162 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @PTR_ERR(i8* %163)
  store i32 %164, i32* %7, align 4
  br label %271

165:                                              ; preds = %144
  %166 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %167 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @IORESOURCE_MEM, align 4
  %170 = call %struct.resource* @platform_get_resource(i32 %168, i32 %169, i32 0)
  store %struct.resource* %170, %struct.resource** %5, align 8
  %171 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %172 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %171, i32 0, i32 0
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load %struct.resource*, %struct.resource** %5, align 8
  %175 = call i8* @devm_ioremap_resource(%struct.TYPE_12__* %173, %struct.resource* %174)
  %176 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %177 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %176, i32 0, i32 5
  store i8* %175, i8** %177, align 8
  %178 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %179 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %178, i32 0, i32 5
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @IS_ERR(i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %165
  %184 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %185 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %184, i32 0, i32 0
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = call i32 @dev_err(%struct.TYPE_12__* %186, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %188 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %189 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %188, i32 0, i32 5
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @PTR_ERR(i8* %190)
  store i32 %191, i32* %7, align 4
  br label %271

192:                                              ; preds = %165
  %193 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %194 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.cedrus_variant*, %struct.cedrus_variant** %4, align 8
  %197 = getelementptr inbounds %struct.cedrus_variant, %struct.cedrus_variant* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @clk_set_rate(i8* %195, i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %192
  %203 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %204 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %203, i32 0, i32 0
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %204, align 8
  %206 = call i32 @dev_err(%struct.TYPE_12__* %205, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %271

207:                                              ; preds = %192
  %208 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %209 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %208, i32 0, i32 1
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @clk_prepare_enable(i8* %210)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %207
  %215 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %216 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %215, i32 0, i32 0
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = call i32 @dev_err(%struct.TYPE_12__* %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %271

219:                                              ; preds = %207
  %220 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %221 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %220, i32 0, i32 2
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @clk_prepare_enable(i8* %222)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %219
  %227 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %228 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %227, i32 0, i32 0
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = call i32 @dev_err(%struct.TYPE_12__* %229, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  br label %266

231:                                              ; preds = %219
  %232 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %233 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @clk_prepare_enable(i8* %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %231
  %239 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %240 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %239, i32 0, i32 0
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %240, align 8
  %242 = call i32 @dev_err(%struct.TYPE_12__* %241, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %261

243:                                              ; preds = %231
  %244 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %245 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @reset_control_reset(i8* %246)
  store i32 %247, i32* %7, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %252 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %251, i32 0, i32 0
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %252, align 8
  %254 = call i32 @dev_err(%struct.TYPE_12__* %253, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %256

255:                                              ; preds = %243
  store i32 0, i32* %2, align 4
  br label %282

256:                                              ; preds = %250
  %257 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %258 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @clk_disable_unprepare(i8* %259)
  br label %261

261:                                              ; preds = %256, %238
  %262 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %263 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 @clk_disable_unprepare(i8* %264)
  br label %266

266:                                              ; preds = %261, %226
  %267 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %268 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @clk_disable_unprepare(i8* %269)
  br label %271

271:                                              ; preds = %266, %214, %202, %183, %156, %135, %114, %93
  %272 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %273 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %272, i32 0, i32 0
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = call i32 @sunxi_sram_release(%struct.TYPE_12__* %274)
  br label %276

276:                                              ; preds = %271, %76
  %277 = load %struct.cedrus_dev*, %struct.cedrus_dev** %3, align 8
  %278 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %277, i32 0, i32 0
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %278, align 8
  %280 = call i32 @of_reserved_mem_device_release(%struct.TYPE_12__* %279)
  %281 = load i32, i32* %7, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %276, %255, %63, %45, %29, %14
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local %struct.cedrus_variant* @of_device_get_match_data(%struct.TYPE_12__*) #1

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.cedrus_dev*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @of_reserved_mem_device_init(%struct.TYPE_12__*) #1

declare dso_local i32 @sunxi_sram_claim(%struct.TYPE_12__*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_12__*, i32*) #1

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i32 @clk_set_rate(i8*, i32) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @reset_control_reset(i8*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @sunxi_sram_release(%struct.TYPE_12__*) #1

declare dso_local i32 @of_reserved_mem_device_release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
