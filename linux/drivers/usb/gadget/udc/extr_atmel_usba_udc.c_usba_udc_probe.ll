; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.clk = type { i32 }
%struct.usba_udc = type { i32, i32, %struct.clk*, %struct.TYPE_3__, %struct.platform_device*, i32*, %struct.clk*, %struct.clk*, i32, i32, %struct.clk*, %struct.clk* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usba_gadget_template = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@CTRL_IOMEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"MMIO registers at %pR mapped at %p\0A\00", align 1
@FIFO_IOMEM_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"FIFO at %pR mapped at %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to enable pclk, aborting.\0A\00", align 1
@CTRL = common dso_local global i32 0, align 4
@USBA_DISABLE_MASK = common dso_local global i32 0, align 4
@usba_udc_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"atmel_usba_udc\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Cannot request irq %d (error %d)\0A\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@usba_vbus_irq_thread = common dso_local global i32 0, align 4
@USBA_VBUS_IRQFLAGS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [48 x i8] c"failed to request vbus irq; assuming always on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usba_udc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.usba_udc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.usba_udc* @devm_kzalloc(i32* %12, i32 80, i32 %13)
  store %struct.usba_udc* %14, %struct.usba_udc** %7, align 8
  %15 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %16 = icmp ne %struct.usba_udc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %251

20:                                               ; preds = %1
  %21 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %22 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %21, i32 0, i32 3
  %23 = bitcast %struct.TYPE_3__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 4 bitcast (%struct.TYPE_3__* @usba_gadget_template to i8*), i64 4, i1 false)
  %24 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %25 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = load i32, i32* @CTRL_IOMEM_ID, align 4
  %31 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 %30)
  store %struct.resource* %31, %struct.resource** %4, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.resource*, %struct.resource** %4, align 8
  %35 = call i8* @devm_ioremap_resource(i32* %33, %struct.resource* %34)
  %36 = bitcast i8* %35 to %struct.clk*
  %37 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %38 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %37, i32 0, i32 11
  store %struct.clk* %36, %struct.clk** %38, align 8
  %39 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %40 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %39, i32 0, i32 11
  %41 = load %struct.clk*, %struct.clk** %40, align 8
  %42 = call i64 @IS_ERR(%struct.clk* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %20
  %45 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %46 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %45, i32 0, i32 11
  %47 = load %struct.clk*, %struct.clk** %46, align 8
  %48 = call i32 @PTR_ERR(%struct.clk* %47)
  store i32 %48, i32* %2, align 4
  br label %251

49:                                               ; preds = %20
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %4, align 8
  %53 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %54 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %53, i32 0, i32 11
  %55 = load %struct.clk*, %struct.clk** %54, align 8
  %56 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.resource* %52, %struct.clk* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = load i32, i32* @FIFO_IOMEM_ID, align 4
  %60 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 %59)
  store %struct.resource* %60, %struct.resource** %4, align 8
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %4, align 8
  %64 = call i8* @devm_ioremap_resource(i32* %62, %struct.resource* %63)
  %65 = bitcast i8* %64 to %struct.clk*
  %66 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %67 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %66, i32 0, i32 10
  store %struct.clk* %65, %struct.clk** %67, align 8
  %68 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %69 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %68, i32 0, i32 10
  %70 = load %struct.clk*, %struct.clk** %69, align 8
  %71 = call i64 @IS_ERR(%struct.clk* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %49
  %74 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %75 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %74, i32 0, i32 10
  %76 = load %struct.clk*, %struct.clk** %75, align 8
  %77 = call i32 @PTR_ERR(%struct.clk* %76)
  store i32 %77, i32* %2, align 4
  br label %251

78:                                               ; preds = %49
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = load %struct.resource*, %struct.resource** %4, align 8
  %82 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %83 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %82, i32 0, i32 10
  %84 = load %struct.clk*, %struct.clk** %83, align 8
  %85 = call i32 @dev_info(i32* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %81, %struct.clk* %84)
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = call i32 @platform_get_irq(%struct.platform_device* %86, i32 0)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %251

92:                                               ; preds = %78
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call %struct.clk* @devm_clk_get(i32* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %95, %struct.clk** %5, align 8
  %96 = load %struct.clk*, %struct.clk** %5, align 8
  %97 = call i64 @IS_ERR(%struct.clk* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %92
  %100 = load %struct.clk*, %struct.clk** %5, align 8
  %101 = call i32 @PTR_ERR(%struct.clk* %100)
  store i32 %101, i32* %2, align 4
  br label %251

102:                                              ; preds = %92
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call %struct.clk* @devm_clk_get(i32* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.clk* %105, %struct.clk** %6, align 8
  %106 = load %struct.clk*, %struct.clk** %6, align 8
  %107 = call i64 @IS_ERR(%struct.clk* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.clk*, %struct.clk** %6, align 8
  %111 = call i32 @PTR_ERR(%struct.clk* %110)
  store i32 %111, i32* %2, align 4
  br label %251

112:                                              ; preds = %102
  %113 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %114 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %113, i32 0, i32 9
  %115 = call i32 @spin_lock_init(i32* %114)
  %116 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %117 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %116, i32 0, i32 8
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %121 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %120, i32 0, i32 4
  store %struct.platform_device* %119, %struct.platform_device** %121, align 8
  %122 = load %struct.clk*, %struct.clk** %5, align 8
  %123 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %124 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %123, i32 0, i32 7
  store %struct.clk* %122, %struct.clk** %124, align 8
  %125 = load %struct.clk*, %struct.clk** %6, align 8
  %126 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %127 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %126, i32 0, i32 6
  store %struct.clk* %125, %struct.clk** %127, align 8
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %130 = call i32 @platform_set_drvdata(%struct.platform_device* %128, %struct.usba_udc* %129)
  %131 = load %struct.clk*, %struct.clk** %5, align 8
  %132 = call i32 @clk_prepare_enable(%struct.clk* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %112
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %2, align 4
  br label %251

140:                                              ; preds = %112
  %141 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %142 = load i32, i32* @CTRL, align 4
  %143 = load i32, i32* @USBA_DISABLE_MASK, align 4
  %144 = call i32 @usba_writel(%struct.usba_udc* %141, i32 %142, i32 %143)
  %145 = load %struct.clk*, %struct.clk** %5, align 8
  %146 = call i32 @clk_disable_unprepare(%struct.clk* %145)
  %147 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %148 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %149 = call %struct.clk* @atmel_udc_of_init(%struct.platform_device* %147, %struct.usba_udc* %148)
  %150 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %151 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %150, i32 0, i32 2
  store %struct.clk* %149, %struct.clk** %151, align 8
  %152 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %153 = call i32 @toggle_bias(%struct.usba_udc* %152, i32 0)
  %154 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %155 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %154, i32 0, i32 2
  %156 = load %struct.clk*, %struct.clk** %155, align 8
  %157 = call i64 @IS_ERR(%struct.clk* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %140
  %160 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %161 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %160, i32 0, i32 2
  %162 = load %struct.clk*, %struct.clk** %161, align 8
  %163 = call i32 @PTR_ERR(%struct.clk* %162)
  store i32 %163, i32* %2, align 4
  br label %251

164:                                              ; preds = %140
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* @usba_udc_irq, align 4
  %169 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %170 = call i32 @devm_request_irq(i32* %166, i32 %167, i32 %168, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.usba_udc* %169)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %164
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 (i32*, i8*, ...) @dev_err(i32* %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %176, i32 %177)
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %2, align 4
  br label %251

180:                                              ; preds = %164
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %183 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %185 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %184, i32 0, i32 5
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %216

188:                                              ; preds = %180
  %189 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %190 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %189, i32 0, i32 5
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @gpiod_to_irq(i32* %191)
  %193 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %194 = call i32 @irq_set_status_flags(i32 %192, i32 %193)
  %195 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %196 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %195, i32 0, i32 0
  %197 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %198 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %197, i32 0, i32 5
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @gpiod_to_irq(i32* %199)
  %201 = load i32, i32* @usba_vbus_irq_thread, align 4
  %202 = load i32, i32* @USBA_VBUS_IRQFLAGS, align 4
  %203 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %204 = call i32 @devm_request_threaded_irq(i32* %196, i32 %200, i32* null, i32 %201, i32 %202, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), %struct.usba_udc* %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %188
  %208 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %209 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %208, i32 0, i32 5
  store i32* null, i32** %209, align 8
  %210 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %211 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %210, i32 0, i32 4
  %212 = load %struct.platform_device*, %struct.platform_device** %211, align 8
  %213 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %212, i32 0, i32 0
  %214 = call i32 @dev_warn(i32* %213, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %215

215:                                              ; preds = %207, %188
  br label %216

216:                                              ; preds = %215, %180
  %217 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %218 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %217, i32 0, i32 0
  %219 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %220 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %219, i32 0, i32 3
  %221 = call i32 @usb_add_gadget_udc(i32* %218, %struct.TYPE_3__* %220)
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %2, align 4
  br label %251

226:                                              ; preds = %216
  %227 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %228 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %227, i32 0, i32 0
  %229 = call i32 @device_init_wakeup(i32* %228, i32 1)
  %230 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %231 = call i32 @usba_init_debugfs(%struct.usba_udc* %230)
  store i32 1, i32* %10, align 4
  br label %232

232:                                              ; preds = %247, %226
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %235 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %233, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %232
  %239 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %240 = load %struct.usba_udc*, %struct.usba_udc** %7, align 8
  %241 = getelementptr inbounds %struct.usba_udc, %struct.usba_udc* %240, i32 0, i32 2
  %242 = load %struct.clk*, %struct.clk** %241, align 8
  %243 = load i32, i32* %10, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.clk, %struct.clk* %242, i64 %244
  %246 = call i32 @usba_ep_init_debugfs(%struct.usba_udc* %239, %struct.clk* %245)
  br label %247

247:                                              ; preds = %238
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %232

250:                                              ; preds = %232
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %250, %224, %173, %159, %135, %109, %99, %90, %73, %44, %17
  %252 = load i32, i32* %2, align 4
  ret i32 %252
}

declare dso_local %struct.usba_udc* @devm_kzalloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.resource*, %struct.clk*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.usba_udc*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usba_writel(%struct.usba_udc*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local %struct.clk* @atmel_udc_of_init(%struct.platform_device*, %struct.usba_udc*) #1

declare dso_local i32 @toggle_bias(%struct.usba_udc*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.usba_udc*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @gpiod_to_irq(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.usba_udc*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @usb_add_gadget_udc(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @usba_init_debugfs(%struct.usba_udc*) #1

declare dso_local i32 @usba_ep_init_debugfs(%struct.usba_udc*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
