; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i64 }
%struct.pxa3xx_gcu_priv = type { i32, %struct.TYPE_3__, i64, i32, %struct.device*, %struct.resource*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MISCDEV_MINOR = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@pxa3xx_gcu_miscdev_fops = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no IRQ defined: %d\0A\00", align 1
@pxa3xx_gcu_handle_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@SHARED_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to allocate DMA memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"misc_register() for minor %d failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"registered @0x%p, DMA 0x%p (%d bytes), IRQ %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa3xx_gcu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.device*, %struct.device** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pxa3xx_gcu_priv* @devm_kzalloc(%struct.device* %12, i32 72, i32 %13)
  store %struct.pxa3xx_gcu_priv* %14, %struct.pxa3xx_gcu_priv** %8, align 8
  %15 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %16 = icmp ne %struct.pxa3xx_gcu_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %200

20:                                               ; preds = %1
  %21 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %21, i32 0, i32 9
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %25 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %24, i32 0, i32 8
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %28 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %27, i32 0, i32 7
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load i32, i32* @MISCDEV_MINOR, align 4
  %31 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %32 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @DRV_NAME, align 4
  %35 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %36 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %39 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* @pxa3xx_gcu_miscdev_fops, i32** %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource(%struct.platform_device* %41, i32 %42, i32 0)
  store %struct.resource* %43, %struct.resource** %7, align 8
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = call i32 @devm_ioremap_resource(%struct.device* %44, %struct.resource* %45)
  %47 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %48 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %50 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %20
  %55 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %56 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @PTR_ERR(i32 %57)
  store i32 %58, i32* %2, align 4
  br label %200

59:                                               ; preds = %20
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = call i32 @devm_clk_get(%struct.device* %60, i32* null)
  %62 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %63 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %65 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @IS_ERR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load %struct.device*, %struct.device** %9, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %72 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %73 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %200

76:                                               ; preds = %59
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = call i32 @platform_get_irq(%struct.platform_device* %77, i32 0)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.device*, %struct.device** %9, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %200

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @pxa3xx_gcu_handle_irq, align 4
  %90 = load i32, i32* @DRV_NAME, align 4
  %91 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %92 = call i32 @devm_request_irq(%struct.device* %87, i32 %88, i32 %89, i32 0, i32 %90, %struct.pxa3xx_gcu_priv* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.device*, %struct.device** %9, align 8
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %200

99:                                               ; preds = %86
  %100 = load %struct.device*, %struct.device** %9, align 8
  %101 = load i32, i32* @SHARED_SIZE, align 4
  %102 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %103 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %102, i32 0, i32 2
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @dma_alloc_coherent(%struct.device* %100, i32 %101, i64* %103, i32 %104)
  %106 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %107 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %109 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %99
  %113 = load %struct.device*, %struct.device** %9, align 8
  %114 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %200

117:                                              ; preds = %99
  %118 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %119 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %118, i32 0, i32 1
  %120 = call i32 @misc_register(%struct.TYPE_3__* %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.device*, %struct.device** %9, align 8
  %125 = load i32, i32* @MISCDEV_MINOR, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %180

127:                                              ; preds = %117
  %128 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %129 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @clk_prepare_enable(i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %127
  %135 = load %struct.device*, %struct.device** %9, align 8
  %136 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %190

137:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.device*, %struct.device** %9, align 8
  %143 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %144 = call i32 @pxa3xx_gcu_add_buffer(%struct.device* %142, %struct.pxa3xx_gcu_priv* %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load %struct.device*, %struct.device** %9, align 8
  %149 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %194

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %138

154:                                              ; preds = %138
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %157 = call i32 @platform_set_drvdata(%struct.platform_device* %155, %struct.pxa3xx_gcu_priv* %156)
  %158 = load %struct.resource*, %struct.resource** %7, align 8
  %159 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %160 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %159, i32 0, i32 5
  store %struct.resource* %158, %struct.resource** %160, align 8
  %161 = load %struct.device*, %struct.device** %9, align 8
  %162 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %163 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %162, i32 0, i32 4
  store %struct.device* %161, %struct.device** %163, align 8
  %164 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %165 = call i32 @pxa3xx_gcu_reset(%struct.pxa3xx_gcu_priv* %164)
  %166 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %167 = call i32 @pxa3xx_gcu_init_debug_timer(%struct.pxa3xx_gcu_priv* %166)
  %168 = load %struct.device*, %struct.device** %9, align 8
  %169 = load %struct.resource*, %struct.resource** %7, align 8
  %170 = getelementptr inbounds %struct.resource, %struct.resource* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %174 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i8*
  %177 = load i32, i32* @SHARED_SIZE, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @dev_info(%struct.device* %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %172, i8* %176, i32 %177, i32 %178)
  store i32 0, i32* %2, align 4
  br label %200

180:                                              ; preds = %123
  %181 = load %struct.device*, %struct.device** %9, align 8
  %182 = load i32, i32* @SHARED_SIZE, align 4
  %183 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %184 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %187 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %186, i32 0, i32 2
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @dma_free_coherent(%struct.device* %181, i32 %182, i32 %185, i64 %188)
  br label %190

190:                                              ; preds = %180, %134
  %191 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %192 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %191, i32 0, i32 1
  %193 = call i32 @misc_deregister(%struct.TYPE_3__* %192)
  br label %194

194:                                              ; preds = %190, %147
  %195 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %8, align 8
  %196 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @clk_disable_unprepare(i32 %197)
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %2, align 4
  br label %200

200:                                              ; preds = %194, %154, %112, %95, %81, %69, %54, %17
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local %struct.pxa3xx_gcu_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i64*, i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pxa3xx_gcu_add_buffer(%struct.device*, %struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @pxa3xx_gcu_reset(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @pxa3xx_gcu_init_debug_timer(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i64) #1

declare dso_local i32 @misc_deregister(%struct.TYPE_3__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
