; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/clocking-wizard/extr_clk-xlnx-clock-wizard.c_clk_wzrd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_wzrd = type { i64, i32, i64, i64, i64*, i64*, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"speed-grade\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid speed grade '%d'\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"clk_in1\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"clk_in1 not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"s_axi_aclk\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"s_axi_aclk not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"enabling s_axi_aclk failed\0A\00", align 1
@WZRD_ACLK_MAX_FREQ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"s_axi_aclk frequency (%lu) too high\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WZRD_CLKFBOUT_FRAC_EN = common dso_local global i32 0, align 4
@WZRD_CLKOUT0_FRAC_EN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"fractional div/mul not supported\0A\00", align 1
@WZRD_CLKFBOUT_MULT_MASK = common dso_local global i32 0, align 4
@WZRD_CLKFBOUT_MULT_SHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%s_mul\00", align 1
@wzrd_clk_mul = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [39 x i8] c"unable to register fixed-factor clock\0A\00", align 1
@WZRD_DIVCLK_DIVIDE_MASK = common dso_local global i32 0, align 4
@WZRD_DIVCLK_DIVIDE_SHIFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"%s_mul_div\00", align 1
@wzrd_clk_mul_div = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [34 x i8] c"unable to register divider clock\0A\00", align 1
@WZRD_NUM_OUTPUTS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"clock output name not specified\0A\00", align 1
@WZRD_CLKOUT_DIVIDE_MASK = common dso_local global i32 0, align 4
@WZRD_CLKOUT_DIVIDE_SHIFT = common dso_local global i32 0, align 4
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@clk_wzrd_clk_notifier = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"unable to register clock notifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @clk_wzrd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_wzrd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.clk_wzrd*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %11, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.clk_wzrd* @devm_kzalloc(%struct.TYPE_11__* %19, i32 72, i32 %20)
  store %struct.clk_wzrd* %21, %struct.clk_wzrd** %9, align 8
  %22 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %23 = icmp ne %struct.clk_wzrd* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %474

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.clk_wzrd* %29)
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load i32, i32* @IORESOURCE_MEM, align 4
  %33 = call %struct.resource* @platform_get_resource(%struct.platform_device* %31, i32 %32, i32 0)
  store %struct.resource* %33, %struct.resource** %10, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %10, align 8
  %37 = call i64 @devm_ioremap_resource(%struct.TYPE_11__* %35, %struct.resource* %36)
  %38 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %39 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %41 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @IS_ERR(i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %47 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @PTR_ERR(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %474

50:                                               ; preds = %27
  %51 = load %struct.device_node*, %struct.device_node** %11, align 8
  %52 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %53 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %52, i32 0, i32 1
  %54 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %50
  %58 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %59 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %64 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 3
  br i1 %66, label %67, label %76

67:                                               ; preds = %62, %57
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %71 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %75 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %74, i32 0, i32 1
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %62
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = call i8* @devm_clk_get(%struct.TYPE_11__* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %83 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %85 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @IS_ERR(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %77
  %90 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %91 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @EPROBE_DEFER, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i64 @ERR_PTR(i32 %94)
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 0
  %100 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %97, %89
  %102 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %103 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @PTR_ERR(i64 %104)
  store i32 %105, i32* %2, align 4
  br label %474

106:                                              ; preds = %77
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i8* @devm_clk_get(%struct.TYPE_11__* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %112 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %114 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @IS_ERR(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %106
  %119 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %120 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* @EPROBE_DEFER, align 4
  %123 = sub nsw i32 0, %122
  %124 = call i64 @ERR_PTR(i32 %123)
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %118
  %131 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %132 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @PTR_ERR(i64 %133)
  store i32 %134, i32* %2, align 4
  br label %474

135:                                              ; preds = %106
  %136 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %137 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @clk_prepare_enable(i64 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %474

147:                                              ; preds = %135
  %148 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %149 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @clk_get_rate(i64 %150)
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load i64, i64* @WZRD_ACLK_MAX_FREQ, align 8
  %154 = icmp ugt i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = load i64, i64* %7, align 8
  %159 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %158)
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %5, align 4
  br label %468

162:                                              ; preds = %147
  %163 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %164 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @WZRD_CLK_CFG_REG(i32 0)
  %167 = add nsw i64 %165, %166
  %168 = call i32 @readl(i64 %167)
  %169 = load i32, i32* @WZRD_CLKFBOUT_FRAC_EN, align 4
  %170 = and i32 %168, %169
  store i32 %170, i32* %6, align 4
  %171 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %172 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @WZRD_CLK_CFG_REG(i32 2)
  %175 = add nsw i64 %173, %174
  %176 = call i32 @readl(i64 %175)
  %177 = load i32, i32* @WZRD_CLKOUT0_FRAC_EN, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* %6, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %162
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %162
  %188 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %189 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @WZRD_CLK_CFG_REG(i32 0)
  %192 = add nsw i64 %190, %191
  %193 = call i32 @readl(i64 %192)
  %194 = load i32, i32* @WZRD_CLKFBOUT_MULT_MASK, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @WZRD_CLKFBOUT_MULT_SHIFT, align 4
  %197 = ashr i32 %195, %196
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_name(%struct.TYPE_11__* %200)
  %202 = call i8* @kasprintf(i32 %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %201)
  store i8* %202, i8** %8, align 8
  %203 = load i8*, i8** %8, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %187
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %5, align 4
  br label %468

208:                                              ; preds = %187
  %209 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %210 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %209, i32 0, i32 0
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %213 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = call i8* @__clk_get_name(i64 %214)
  %216 = load i32, i32* %6, align 4
  %217 = call i8* @clk_register_fixed_factor(%struct.TYPE_11__* %210, i8* %211, i8* %215, i32 0, i32 %216, i32 1)
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %220 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %219, i32 0, i32 4
  %221 = load i64*, i64** %220, align 8
  %222 = load i64, i64* @wzrd_clk_mul, align 8
  %223 = getelementptr inbounds i64, i64* %221, i64 %222
  store i64 %218, i64* %223, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = call i32 @kfree(i8* %224)
  %226 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %227 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %226, i32 0, i32 4
  %228 = load i64*, i64** %227, align 8
  %229 = load i64, i64* @wzrd_clk_mul, align 8
  %230 = getelementptr inbounds i64, i64* %228, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @IS_ERR(i64 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %208
  %235 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %236 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %235, i32 0, i32 0
  %237 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %236, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %238 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %239 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %238, i32 0, i32 4
  %240 = load i64*, i64** %239, align 8
  %241 = load i64, i64* @wzrd_clk_mul, align 8
  %242 = getelementptr inbounds i64, i64* %240, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @PTR_ERR(i64 %243)
  store i32 %244, i32* %5, align 4
  br label %468

245:                                              ; preds = %208
  %246 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %247 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @WZRD_CLK_CFG_REG(i32 0)
  %250 = add nsw i64 %248, %249
  %251 = call i32 @readl(i64 %250)
  %252 = load i32, i32* @WZRD_DIVCLK_DIVIDE_MASK, align 4
  %253 = and i32 %251, %252
  %254 = load i32, i32* @WZRD_DIVCLK_DIVIDE_SHIFT, align 4
  %255 = ashr i32 %253, %254
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* @GFP_KERNEL, align 4
  %257 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %258 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %257, i32 0, i32 0
  %259 = call i32 @dev_name(%struct.TYPE_11__* %258)
  %260 = call i8* @kasprintf(i32 %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %259)
  store i8* %260, i8** %8, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %245
  %264 = load i32, i32* @ENOMEM, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %5, align 4
  br label %459

266:                                              ; preds = %245
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %267, i32 0, i32 0
  %269 = load i8*, i8** %8, align 8
  %270 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %271 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %270, i32 0, i32 4
  %272 = load i64*, i64** %271, align 8
  %273 = load i64, i64* @wzrd_clk_mul, align 8
  %274 = getelementptr inbounds i64, i64* %272, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = call i8* @__clk_get_name(i64 %275)
  %277 = load i32, i32* %6, align 4
  %278 = call i8* @clk_register_fixed_factor(%struct.TYPE_11__* %268, i8* %269, i8* %276, i32 0, i32 1, i32 %277)
  %279 = ptrtoint i8* %278 to i64
  %280 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %281 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %280, i32 0, i32 4
  %282 = load i64*, i64** %281, align 8
  %283 = load i64, i64* @wzrd_clk_mul_div, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  store i64 %279, i64* %284, align 8
  %285 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %286 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %285, i32 0, i32 4
  %287 = load i64*, i64** %286, align 8
  %288 = load i64, i64* @wzrd_clk_mul_div, align 8
  %289 = getelementptr inbounds i64, i64* %287, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @IS_ERR(i64 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %266
  %294 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %295 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %294, i32 0, i32 0
  %296 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %295, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %297 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %298 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %297, i32 0, i32 4
  %299 = load i64*, i64** %298, align 8
  %300 = load i64, i64* @wzrd_clk_mul_div, align 8
  %301 = getelementptr inbounds i64, i64* %299, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = call i32 @PTR_ERR(i64 %302)
  store i32 %303, i32* %5, align 4
  br label %459

304:                                              ; preds = %266
  %305 = load i32, i32* @WZRD_NUM_OUTPUTS, align 4
  %306 = sub nsw i32 %305, 1
  store i32 %306, i32* %4, align 4
  br label %307

307:                                              ; preds = %392, %304
  %308 = load i32, i32* %4, align 4
  %309 = icmp sge i32 %308, 0
  br i1 %309, label %310, label %395

310:                                              ; preds = %307
  %311 = load %struct.device_node*, %struct.device_node** %11, align 8
  %312 = load i32, i32* %4, align 4
  %313 = call i64 @of_property_read_string_index(%struct.device_node* %311, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %312, i8** %12)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %317 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %316, i32 0, i32 0
  %318 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %317, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %319 = load i32, i32* @EINVAL, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %5, align 4
  br label %452

321:                                              ; preds = %310
  %322 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %323 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = call i64 @WZRD_CLK_CFG_REG(i32 2)
  %326 = add nsw i64 %324, %325
  %327 = load i32, i32* %4, align 4
  %328 = mul nsw i32 %327, 12
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %326, %329
  %331 = call i32 @readl(i64 %330)
  store i32 %331, i32* %6, align 4
  %332 = load i32, i32* @WZRD_CLKOUT_DIVIDE_MASK, align 4
  %333 = load i32, i32* %6, align 4
  %334 = and i32 %333, %332
  store i32 %334, i32* %6, align 4
  %335 = load i32, i32* @WZRD_CLKOUT_DIVIDE_SHIFT, align 4
  %336 = load i32, i32* %6, align 4
  %337 = ashr i32 %336, %335
  store i32 %337, i32* %6, align 4
  %338 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %339 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %338, i32 0, i32 0
  %340 = load i8*, i8** %12, align 8
  %341 = load i8*, i8** %8, align 8
  %342 = load i32, i32* %6, align 4
  %343 = call i8* @clk_register_fixed_factor(%struct.TYPE_11__* %339, i8* %340, i8* %341, i32 0, i32 1, i32 %342)
  %344 = ptrtoint i8* %343 to i64
  %345 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %346 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %345, i32 0, i32 5
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %4, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  store i64 %344, i64* %350, align 8
  %351 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %352 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %351, i32 0, i32 5
  %353 = load i64*, i64** %352, align 8
  %354 = load i32, i32* %4, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = call i64 @IS_ERR(i64 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %391

360:                                              ; preds = %321
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %13, align 4
  br label %363

363:                                              ; preds = %376, %360
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* @WZRD_NUM_OUTPUTS, align 4
  %366 = icmp slt i32 %364, %365
  br i1 %366, label %367, label %379

367:                                              ; preds = %363
  %368 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %369 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %368, i32 0, i32 5
  %370 = load i64*, i64** %369, align 8
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %370, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @clk_unregister(i64 %374)
  br label %376

376:                                              ; preds = %367
  %377 = load i32, i32* %13, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %13, align 4
  br label %363

379:                                              ; preds = %363
  %380 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %381 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %380, i32 0, i32 0
  %382 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %381, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %383 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %384 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %383, i32 0, i32 5
  %385 = load i64*, i64** %384, align 8
  %386 = load i32, i32* %4, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i64, i64* %385, i64 %387
  %389 = load i64, i64* %388, align 8
  %390 = call i32 @PTR_ERR(i64 %389)
  store i32 %390, i32* %5, align 4
  br label %452

391:                                              ; preds = %321
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %4, align 4
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %4, align 4
  br label %307

395:                                              ; preds = %307
  %396 = load i8*, i8** %8, align 8
  %397 = call i32 @kfree(i8* %396)
  %398 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %399 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %398, i32 0, i32 5
  %400 = load i64*, i64** %399, align 8
  %401 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %402 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %401, i32 0, i32 7
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  store i64* %400, i64** %403, align 8
  %404 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %405 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %404, i32 0, i32 5
  %406 = load i64*, i64** %405, align 8
  %407 = call i32 @ARRAY_SIZE(i64* %406)
  %408 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %409 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %408, i32 0, i32 7
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 1
  store i32 %407, i32* %410, align 8
  %411 = load %struct.device_node*, %struct.device_node** %11, align 8
  %412 = load i32, i32* @of_clk_src_onecell_get, align 4
  %413 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %414 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %413, i32 0, i32 7
  %415 = call i32 @of_clk_add_provider(%struct.device_node* %411, i32 %412, %struct.TYPE_10__* %414)
  %416 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %417 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %451

420:                                              ; preds = %395
  %421 = load i32, i32* @clk_wzrd_clk_notifier, align 4
  %422 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %423 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %422, i32 0, i32 6
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 0
  store i32 %421, i32* %424, align 8
  %425 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %426 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %429 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %428, i32 0, i32 6
  %430 = call i32 @clk_notifier_register(i64 %427, %struct.TYPE_12__* %429)
  store i32 %430, i32* %5, align 4
  %431 = load i32, i32* %5, align 4
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %420
  %434 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %435 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %434, i32 0, i32 0
  %436 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %435, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %437

437:                                              ; preds = %433, %420
  %438 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %439 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %442 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %441, i32 0, i32 6
  %443 = call i32 @clk_notifier_register(i64 %440, %struct.TYPE_12__* %442)
  store i32 %443, i32* %5, align 4
  %444 = load i32, i32* %5, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %437
  %447 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %448 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %447, i32 0, i32 0
  %449 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_warn(%struct.TYPE_11__* %448, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  br label %450

450:                                              ; preds = %446, %437
  br label %451

451:                                              ; preds = %450, %395
  store i32 0, i32* %2, align 4
  br label %474

452:                                              ; preds = %379, %315
  %453 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %454 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %453, i32 0, i32 4
  %455 = load i64*, i64** %454, align 8
  %456 = getelementptr inbounds i64, i64* %455, i64 1
  %457 = load i64, i64* %456, align 8
  %458 = call i32 @clk_unregister(i64 %457)
  br label %459

459:                                              ; preds = %452, %293, %263
  %460 = load i8*, i8** %8, align 8
  %461 = call i32 @kfree(i8* %460)
  %462 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %463 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %462, i32 0, i32 4
  %464 = load i64*, i64** %463, align 8
  %465 = getelementptr inbounds i64, i64* %464, i64 0
  %466 = load i64, i64* %465, align 8
  %467 = call i32 @clk_unregister(i64 %466)
  br label %468

468:                                              ; preds = %459, %234, %205, %155
  %469 = load %struct.clk_wzrd*, %struct.clk_wzrd** %9, align 8
  %470 = getelementptr inbounds %struct.clk_wzrd, %struct.clk_wzrd* %469, i32 0, i32 3
  %471 = load i64, i64* %470, align 8
  %472 = call i32 @clk_disable_unprepare(i64 %471)
  %473 = load i32, i32* %5, align 4
  store i32 %473, i32* %2, align 4
  br label %474

474:                                              ; preds = %468, %451, %142, %130, %101, %45, %24
  %475 = load i32, i32* %2, align 4
  ret i32 %475
}

declare dso_local %struct.clk_wzrd* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.clk_wzrd*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @WZRD_CLK_CFG_REG(i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i8* @clk_register_fixed_factor(%struct.TYPE_11__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @__clk_get_name(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @of_property_read_string_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i32 @clk_unregister(i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @clk_notifier_register(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
