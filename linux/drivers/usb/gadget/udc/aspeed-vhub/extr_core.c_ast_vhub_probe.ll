; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/aspeed-vhub/extr_core.c_ast_vhub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ast_vhub = type { i32, i32, i32, i64, i32, i64, i64, %struct.platform_device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to map resources\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"vHub@%pR mapped @%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error couldn't enable clock (%d)\0A\00", align 1
@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@AST_VHUB_IER = common dso_local global i64 0, align 8
@VHUB_IRQ_ACK_ALL = common dso_local global i32 0, align 4
@AST_VHUB_ISR = common dso_local global i64 0, align 8
@ast_vhub_irq = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to request interrupt\0A\00", align 1
@AST_VHUB_EP0_MAX_PACKET = common dso_local global i32 0, align 4
@AST_VHUB_NUM_PORTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to allocate EP0 DMA buffers\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"EP0 DMA buffers @%p (DMA 0x%08x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Initialized virtual hub in USB%d mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ast_vhub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_vhub_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ast_vhub*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ast_vhub* @devm_kzalloc(i32* %10, i32 64, i32 %11)
  store %struct.ast_vhub* %12, %struct.ast_vhub** %5, align 8
  %13 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %14 = icmp ne %struct.ast_vhub* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %215

18:                                               ; preds = %1
  %19 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %20 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %19, i32 0, i32 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %24 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %23, i32 0, i32 7
  store %struct.platform_device* %22, %struct.platform_device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load i32, i32* @IORESOURCE_MEM, align 4
  %27 = call %struct.resource* @platform_get_resource(%struct.platform_device* %25, i32 %26, i32 0)
  store %struct.resource* %27, %struct.resource** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %6, align 8
  %31 = call i64 @devm_ioremap_resource(i32* %29, %struct.resource* %30)
  %32 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %33 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %32, i32 0, i32 5
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %35 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @IS_ERR(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %18
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %44 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @PTR_ERR(i64 %45)
  store i32 %46, i32* %2, align 4
  br label %215

47:                                               ; preds = %18
  %48 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %49 = load %struct.resource*, %struct.resource** %6, align 8
  %50 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %51 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @UDCDBG(%struct.ast_vhub* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %49, i64 %52)
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.ast_vhub* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i64 @devm_clk_get(i32* %58, i32* null)
  %60 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %61 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %60, i32 0, i32 6
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %63 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @IS_ERR(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %47
  %68 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %69 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @PTR_ERR(i64 %70)
  store i32 %71, i32* %8, align 4
  br label %211

72:                                               ; preds = %47
  %73 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %74 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @clk_prepare_enable(i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %81, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %211

84:                                               ; preds = %72
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @usb_get_maximum_speed(i32* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @USB_SPEED_HIGH, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %97 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %91, %84
  %99 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %100 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AST_VHUB_IER, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 0, i64 %103)
  %105 = load i32, i32* @VHUB_IRQ_ACK_ALL, align 4
  %106 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %107 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @AST_VHUB_ISR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i32 @platform_get_irq(%struct.platform_device* %112, i32 0)
  %114 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %115 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %117 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %98
  %121 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %122 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  br label %211

124:                                              ; preds = %98
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %128 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @ast_vhub_irq, align 4
  %131 = load i32, i32* @KBUILD_MODNAME, align 4
  %132 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %133 = call i32 @devm_request_irq(i32* %126, i32 %129, i32 %130, i32 0, i32 %131, %struct.ast_vhub* %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %124
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %211

140:                                              ; preds = %124
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %141, i32 0, i32 0
  %143 = load i32, i32* @AST_VHUB_EP0_MAX_PACKET, align 4
  %144 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %145 = add nsw i32 %144, 1
  %146 = mul nsw i32 %143, %145
  %147 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %148 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %147, i32 0, i32 3
  %149 = load i32, i32* @GFP_KERNEL, align 4
  %150 = call i32 @dma_alloc_coherent(i32* %142, i32 %146, i64* %148, i32 %149)
  %151 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %152 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %154 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %140
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %8, align 4
  br label %211

163:                                              ; preds = %140
  %164 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %165 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %166 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %169 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @UDCVDBG(%struct.ast_vhub* %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %167, i32 %171)
  %173 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %174 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %175 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %174, i32 0, i32 2
  %176 = call i32 @ast_vhub_init_ep0(%struct.ast_vhub* %173, i32* %175, i32* null)
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %190, %163
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* @AST_VHUB_NUM_PORTS, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = icmp eq i32 %182, 0
  br label %184

184:                                              ; preds = %181, %177
  %185 = phi i1 [ false, %177 ], [ %183, %181 ]
  br i1 %185, label %186, label %193

186:                                              ; preds = %184
  %187 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @ast_vhub_init_dev(%struct.ast_vhub* %187, i32 %188)
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %186
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %177

193:                                              ; preds = %184
  %194 = load i32, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %211

197:                                              ; preds = %193
  %198 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %199 = call i32 @ast_vhub_init_hub(%struct.ast_vhub* %198)
  %200 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %201 = call i32 @ast_vhub_init_hw(%struct.ast_vhub* %200)
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = load %struct.ast_vhub*, %struct.ast_vhub** %5, align 8
  %205 = getelementptr inbounds %struct.ast_vhub, %struct.ast_vhub* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 1, i32 2
  %210 = call i32 @dev_info(i32* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %209)
  store i32 0, i32* %2, align 4
  br label %215

211:                                              ; preds = %196, %157, %136, %120, %79, %67
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = call i32 @ast_vhub_remove(%struct.platform_device* %212)
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %211, %197, %39, %15
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.ast_vhub* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @UDCDBG(%struct.ast_vhub*, i8*, %struct.resource*, i64) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ast_vhub*) #1

declare dso_local i64 @devm_clk_get(i32*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @usb_get_maximum_speed(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ast_vhub*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @UDCVDBG(%struct.ast_vhub*, i8*, i32, i32) #1

declare dso_local i32 @ast_vhub_init_ep0(%struct.ast_vhub*, i32*, i32*) #1

declare dso_local i32 @ast_vhub_init_dev(%struct.ast_vhub*, i32) #1

declare dso_local i32 @ast_vhub_init_hub(%struct.ast_vhub*) #1

declare dso_local i32 @ast_vhub_init_hw(%struct.ast_vhub*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @ast_vhub_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
