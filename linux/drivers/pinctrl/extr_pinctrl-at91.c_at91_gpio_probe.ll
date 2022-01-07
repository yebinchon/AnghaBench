; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_gpio_chip = type { i32, i32, i32, i32, %struct.pinctrl_gpio_range, %struct.gpio_chip, %struct.at91_pinctrl_mux_ops* }
%struct.pinctrl_gpio_range = type { i32, i32, i32, i32, %struct.gpio_chip*, i32 }
%struct.gpio_chip = type { i32, i32, i8**, i32, i32, %struct.TYPE_11__*, %struct.device_node* }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.at91_pinctrl_mux_ops = type { i32 }
%struct.platform_device = type { %struct.TYPE_11__ }
%struct.resource = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@gpio_chips = common dso_local global %struct.at91_gpio_chip** null, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@at91_gpio_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get clock, ignoring.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to prepare and enable clock, ignoring.\0A\00", align 1
@at91_gpio_template = common dso_local global %struct.gpio_chip zeroinitializer, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@MAX_NB_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"#gpio-lines\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"at91_gpio.%d, gpio-nb >= %d failback to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"pio%c%d\00", align 1
@gpio_banks = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"at address %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Failure %i for GPIO %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.at91_gpio_chip*, align 8
  %7 = alloca %struct.gpio_chip*, align 8
  %8 = alloca %struct.pinctrl_gpio_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %4, align 8
  store %struct.at91_gpio_chip* null, %struct.at91_gpio_chip** %6, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @of_alias_get_id(%struct.device_node* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.at91_gpio_chip**, %struct.at91_gpio_chip*** @gpio_chips, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.at91_gpio_chip** %22)
  %24 = icmp sge i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.at91_gpio_chip**, %struct.at91_gpio_chip*** @gpio_chips, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %27, i64 %29
  %31 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %30, align 8
  %32 = icmp ne %struct.at91_gpio_chip* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %263

36:                                               ; preds = %1
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = call i32 @platform_get_irq(%struct.platform_device* %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %9, align 4
  br label %263

43:                                               ; preds = %36
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.at91_gpio_chip* @devm_kzalloc(%struct.TYPE_11__* %45, i32 96, i32 %46)
  store %struct.at91_gpio_chip* %47, %struct.at91_gpio_chip** %6, align 8
  %48 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %49 = icmp ne %struct.at91_gpio_chip* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %263

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load i32, i32* @IORESOURCE_MEM, align 4
  %56 = call %struct.resource* @platform_get_resource(%struct.platform_device* %54, i32 %55, i32 0)
  store %struct.resource* %56, %struct.resource** %5, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.resource*, %struct.resource** %5, align 8
  %60 = call i32 @devm_ioremap_resource(%struct.TYPE_11__* %58, %struct.resource* %59)
  %61 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %62 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %64 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %70 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %9, align 4
  br label %263

73:                                               ; preds = %53
  %74 = load i32, i32* @at91_gpio_of_match, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.TYPE_10__* @of_match_device(i32 %74, %struct.TYPE_11__* %76)
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.at91_pinctrl_mux_ops*
  %81 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %82 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %81, i32 0, i32 6
  store %struct.at91_pinctrl_mux_ops* %80, %struct.at91_pinctrl_mux_ops** %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %85 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %88 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @devm_clk_get(%struct.TYPE_11__* %90, i32* null)
  %92 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %93 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %95 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @IS_ERR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %73
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %101, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %104 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @PTR_ERR(i32 %105)
  store i32 %106, i32* %9, align 4
  br label %263

107:                                              ; preds = %73
  %108 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %109 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @clk_prepare_enable(i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %116, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %258

118:                                              ; preds = %107
  %119 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %120 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %119, i32 0, i32 5
  %121 = bitcast %struct.gpio_chip* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 bitcast (%struct.gpio_chip* @at91_gpio_template to i8*), i64 40, i1 false)
  %122 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %123 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %122, i32 0, i32 5
  store %struct.gpio_chip* %123, %struct.gpio_chip** %7, align 8
  %124 = load %struct.device_node*, %struct.device_node** %4, align 8
  %125 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %126 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %125, i32 0, i32 6
  store %struct.device_node* %124, %struct.device_node** %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_name(%struct.TYPE_11__* %128)
  %130 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %131 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %135 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %134, i32 0, i32 5
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %135, align 8
  %136 = load i32, i32* @THIS_MODULE, align 4
  %137 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %138 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %143 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.device_node*, %struct.device_node** %4, align 8
  %145 = call i32 @of_property_read_u32(%struct.device_node* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %13)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %118
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %154 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %155 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %153, i32 %154)
  br label %160

156:                                              ; preds = %147
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %159 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %118
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %165 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @GFP_KERNEL, align 4
  %168 = call i8** @devm_kcalloc(%struct.TYPE_11__* %163, i32 %166, i32 8, i32 %167)
  store i8** %168, i8*** %14, align 8
  %169 = load i8**, i8*** %14, align 8
  %170 = icmp ne i8** %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %9, align 4
  br label %258

174:                                              ; preds = %161
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %191, %174
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %178 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %194

181:                                              ; preds = %175
  %182 = load i32, i32* @GFP_KERNEL, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 65
  %185 = load i32, i32* %11, align 4
  %186 = call i8* @kasprintf(i32 %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %184, i32 %185)
  %187 = load i8**, i8*** %14, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %186, i8** %190, align 8
  br label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %175

194:                                              ; preds = %175
  %195 = load i8**, i8*** %14, align 8
  %196 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %197 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %196, i32 0, i32 2
  store i8** %195, i8*** %197, align 8
  %198 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %199 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %198, i32 0, i32 4
  store %struct.pinctrl_gpio_range* %199, %struct.pinctrl_gpio_range** %8, align 8
  %200 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %201 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %204 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %203, i32 0, i32 5
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %207 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %209 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %214 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %216 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %215, i32 0, i32 1
  store i32 %212, i32* %216, align 4
  %217 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %218 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %221 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %220, i32 0, i32 3
  store i32 %219, i32* %221, align 4
  %222 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %223 = load %struct.pinctrl_gpio_range*, %struct.pinctrl_gpio_range** %8, align 8
  %224 = getelementptr inbounds %struct.pinctrl_gpio_range, %struct.pinctrl_gpio_range* %223, i32 0, i32 4
  store %struct.gpio_chip* %222, %struct.gpio_chip** %224, align 8
  %225 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %226 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %227 = call i32 @gpiochip_add_data(%struct.gpio_chip* %225, %struct.at91_gpio_chip* %226)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %194
  br label %257

231:                                              ; preds = %194
  %232 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %233 = load %struct.at91_gpio_chip**, %struct.at91_gpio_chip*** @gpio_chips, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %233, i64 %235
  store %struct.at91_gpio_chip* %232, %struct.at91_gpio_chip** %236, align 8
  %237 = load i32, i32* @gpio_banks, align 4
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  %240 = call i32 @max(i32 %237, i32 %239)
  store i32 %240, i32* @gpio_banks, align 4
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %243 = call i32 @at91_gpio_of_irq_setup(%struct.platform_device* %241, %struct.at91_gpio_chip* %242)
  store i32 %243, i32* %9, align 4
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %231
  br label %254

247:                                              ; preds = %231
  %248 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %249 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %248, i32 0, i32 0
  %250 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %251 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @dev_info(%struct.TYPE_11__* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %252)
  store i32 0, i32* %2, align 4
  br label %270

254:                                              ; preds = %246
  %255 = load %struct.gpio_chip*, %struct.gpio_chip** %7, align 8
  %256 = call i32 @gpiochip_remove(%struct.gpio_chip* %255)
  br label %257

257:                                              ; preds = %254, %230
  br label %258

258:                                              ; preds = %257, %171, %114
  %259 = load %struct.at91_gpio_chip*, %struct.at91_gpio_chip** %6, align 8
  %260 = getelementptr inbounds %struct.at91_gpio_chip, %struct.at91_gpio_chip* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @clk_disable_unprepare(i32 %261)
  br label %263

263:                                              ; preds = %258, %99, %68, %50, %41, %33
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* %12, align 4
  %268 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %266, i32 %267)
  %269 = load i32, i32* %9, align 4
  store i32 %269, i32* %2, align 4
  br label %270

270:                                              ; preds = %263, %247
  %271 = load i32, i32* %2, align 4
  ret i32 %271
}

declare dso_local i32 @of_alias_get_id(%struct.device_node*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.at91_gpio_chip**) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.at91_gpio_chip* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_11__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_10__* @of_match_device(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_name(%struct.TYPE_11__*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i8** @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.at91_gpio_chip*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @at91_gpio_of_irq_setup(%struct.platform_device*, %struct.at91_gpio_chip*) #1

declare dso_local i32 @dev_info(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
