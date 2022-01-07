; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa27x_udc.c_pxa_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i64, i32, i32, i32, i32*, i64, i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.pxa2xx_udc_mach_info = type { i32, i32, i64 }

@memory = common dso_local global %struct.pxa_udc zeroinitializer, align 8
@GPIOF_ACTIVE_LOW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"USB D+ pullup\00", align 1
@GPIOD_ASIS = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't find or request D+ gpio : %ld\0A\00", align 1
@the_controller = common dso_local global %struct.pxa_udc* null, align 8
@pxa_udc_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s: can't get irq %i, err %d\0A\00", align 1
@pxa27x_udc_phy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa_udc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_udc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.pxa_udc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pxa2xx_udc_mach_info*, align 8
  %9 = alloca i64, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.pxa_udc* @memory, %struct.pxa_udc** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.pxa2xx_udc_mach_info* @dev_get_platdata(i32* %11)
  store %struct.pxa2xx_udc_mach_info* %12, %struct.pxa2xx_udc_mach_info** %8, align 8
  %13 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %8, align 8
  %14 = icmp ne %struct.pxa2xx_udc_mach_info* %13, null
  br i1 %14, label %15, label %54

15:                                               ; preds = %1
  %16 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %8, align 8
  %17 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i64, i64* @GPIOF_ACTIVE_LOW, align 8
  br label %23

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i64 [ %21, %20 ], [ 0, %22 ]
  store i64 %24, i64* %9, align 8
  %25 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %8, align 8
  %26 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @gpio_is_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %23
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %7, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @devm_gpio_request_one(i32* %33, i32 %34, i64 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %258

41:                                               ; preds = %31
  %42 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %8, align 8
  %43 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gpio_to_desc(i32 %44)
  %46 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %47 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %41, %23
  %49 = load %struct.pxa2xx_udc_mach_info*, %struct.pxa2xx_udc_mach_info** %8, align 8
  %50 = getelementptr inbounds %struct.pxa2xx_udc_mach_info, %struct.pxa2xx_udc_mach_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %53 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  br label %61

54:                                               ; preds = %1
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load i32, i32* @GPIOD_ASIS, align 4
  %58 = call i32 @devm_gpiod_get(i32* %56, i32* null, i32 %57)
  %59 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %60 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %48
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 0)
  store %struct.resource* %64, %struct.resource** %4, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %4, align 8
  %68 = call i32 @devm_ioremap_resource(i32* %66, %struct.resource* %67)
  %69 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %70 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  %71 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %72 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %78 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %258

81:                                               ; preds = %61
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i64 @platform_get_irq(%struct.platform_device* %82, i32 0)
  %84 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %85 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %87 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %92 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %2, align 4
  br label %258

95:                                               ; preds = %81
  %96 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %97 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %96, i32 0, i32 0
  %98 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %99 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %98, i32 0, i32 4
  store i32* %97, i32** %99, align 8
  %100 = call i64 (...) @of_have_populated_dt()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %95
  %103 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %104 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @devm_usb_get_phy_by_phandle(i32* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %107 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %108 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %110 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @IS_ERR(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %116 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %2, align 4
  br label %258

119:                                              ; preds = %102
  br label %125

120:                                              ; preds = %95
  %121 = load i32, i32* @USB_PHY_TYPE_USB2, align 4
  %122 = call i32 @usb_get_phy(i32 %121)
  %123 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %124 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %120, %119
  %126 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %127 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %135 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @PTR_ERR(i32 %136)
  %138 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %140 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @PTR_ERR(i32 %141)
  store i32 %142, i32* %2, align 4
  br label %258

143:                                              ; preds = %125
  %144 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %145 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %150 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @gpiod_direction_output(i32 %151, i32 0)
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @devm_clk_get(i32* %155, i32* null)
  %157 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %158 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %160 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @IS_ERR(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %153
  %165 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %166 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @PTR_ERR(i32 %167)
  store i32 %168, i32* %2, align 4
  br label %258

169:                                              ; preds = %153
  %170 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %171 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @clk_prepare(i32 %172)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %2, align 4
  br label %258

178:                                              ; preds = %169
  %179 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %180 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  store %struct.pxa_udc* %181, %struct.pxa_udc** @the_controller, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %184 = call i32 @platform_set_drvdata(%struct.platform_device* %182, %struct.pxa_udc* %183)
  %185 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %186 = call i32 @udc_init_data(%struct.pxa_udc* %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %190 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load i32, i32* @pxa_udc_irq, align 4
  %194 = load i32, i32* @IRQF_SHARED, align 4
  %195 = load i32, i32* @driver_name, align 4
  %196 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %197 = call i32 @devm_request_irq(i32* %188, i32 %192, i32 %193, i32 %194, i32 %195, %struct.pxa_udc* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %178
  %201 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %202 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %201, i32 0, i32 4
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* @driver_name, align 4
  %205 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %206 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %203, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %204, i64 %207, i32 %208)
  br label %252

210:                                              ; preds = %178
  %211 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %212 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @IS_ERR_OR_NULL(i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %218 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @usb_register_notifier(i32 %219, i32* @pxa27x_udc_phy)
  br label %221

221:                                              ; preds = %216, %210
  %222 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %223 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %222, i32 0, i32 0
  %224 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %225 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %224, i32 0, i32 3
  %226 = call i32 @usb_add_gadget_udc(i32* %223, i32* %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  br label %240

230:                                              ; preds = %221
  %231 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %232 = call i32 @pxa_init_debugfs(%struct.pxa_udc* %231)
  %233 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %234 = call i64 @should_enable_udc(%struct.pxa_udc* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %230
  %237 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %238 = call i32 @udc_enable(%struct.pxa_udc* %237)
  br label %239

239:                                              ; preds = %236, %230
  store i32 0, i32* %2, align 4
  br label %258

240:                                              ; preds = %229
  %241 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %242 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @IS_ERR_OR_NULL(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %240
  %247 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %248 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @usb_unregister_notifier(i32 %249, i32* @pxa27x_udc_phy)
  br label %251

251:                                              ; preds = %246, %240
  br label %252

252:                                              ; preds = %251, %200
  %253 = load %struct.pxa_udc*, %struct.pxa_udc** %5, align 8
  %254 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @clk_unprepare(i32 %255)
  %257 = load i32, i32* %6, align 4
  store i32 %257, i32* %2, align 4
  br label %258

258:                                              ; preds = %252, %239, %176, %164, %131, %114, %90, %76, %39
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local %struct.pxa2xx_udc_mach_info* @dev_get_platdata(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i64, i8*) #1

declare dso_local i32 @gpio_to_desc(i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i32*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i64 @of_have_populated_dt(...) #1

declare dso_local i32 @devm_usb_get_phy_by_phandle(i32*, i8*, i32) #1

declare dso_local i32 @usb_get_phy(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa_udc*) #1

declare dso_local i32 @udc_init_data(%struct.pxa_udc*) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.pxa_udc*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_register_notifier(i32, i32*) #1

declare dso_local i32 @usb_add_gadget_udc(i32*, i32*) #1

declare dso_local i32 @pxa_init_debugfs(%struct.pxa_udc*) #1

declare dso_local i64 @should_enable_udc(%struct.pxa_udc*) #1

declare dso_local i32 @udc_enable(%struct.pxa_udc*) #1

declare dso_local i32 @usb_unregister_notifier(i32, i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
