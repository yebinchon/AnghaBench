; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_drv_pcmcia_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_bcm63xx_pcmcia.c_bcm63xx_drv_pcmcia_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bcm63xx_pcmcia_socket = type { %struct.resource*, i8*, i8*, i32, %struct.resource*, i32, i8*, %struct.pcmcia_socket, i32 }
%struct.resource = type { i32 }
%struct.pcmcia_socket = type { i32, i64, i8*, i64, i32, %struct.TYPE_3__, i32, i32*, i32*, %struct.bcm63xx_pcmcia_socket* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bcm63xx_pcmcia\00", align 1
@pccard_static_ops = common dso_local global i32 0, align 4
@bcm63xx_pcmcia_operations = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SS_CAP_STATIC_MAP = common dso_local global i32 0, align 4
@SS_CAP_PCCARD = common dso_local global i32 0, align 4
@bcm63xx_pcmcia_poll = common dso_local global i32 0, align 4
@PCMCIA_C1_REG = common dso_local global i32 0, align 4
@PCMCIA_C1_CBIDSEL_MASK = common dso_local global i32 0, align 4
@PCMCIA_C1_EN_PCMCIA_GPIO_MASK = common dso_local global i32 0, align 4
@PCMCIA_C2_DATA16_MASK = common dso_local global i32 0, align 4
@PCMCIA_C2_RWCOUNT_SHIFT = common dso_local global i32 0, align 4
@PCMCIA_C2_INACTIVE_SHIFT = common dso_local global i32 0, align 4
@PCMCIA_C2_SETUP_SHIFT = common dso_local global i32 0, align 4
@PCMCIA_C2_HOLD_SHIFT = common dso_local global i32 0, align 4
@PCMCIA_C2_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BCM63XX_PCMCIA_POLL_RATE = common dso_local global i32 0, align 4
@SS_CAP_CARDBUS = common dso_local global i32 0, align 4
@bcm63xx_cb_dev = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm63xx_drv_pcmcia_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_drv_pcmcia_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.bcm63xx_pcmcia_socket*, align 8
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.bcm63xx_pcmcia_socket* @kzalloc(i32 144, i32 %12)
  store %struct.bcm63xx_pcmcia_socket* %13, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %14 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %15 = icmp ne %struct.bcm63xx_pcmcia_socket* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %252

19:                                               ; preds = %1
  %20 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %21 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %20, i32 0, i32 8
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %24 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %23, i32 0, i32 7
  store %struct.pcmcia_socket* %24, %struct.pcmcia_socket** %5, align 8
  %25 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %26 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %27 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %26, i32 0, i32 9
  store %struct.bcm63xx_pcmcia_socket* %25, %struct.bcm63xx_pcmcia_socket** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call i8* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 1)
  %31 = bitcast i8* %30 to %struct.resource*
  %32 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %33 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %32, i32 0, i32 4
  store %struct.resource* %31, %struct.resource** %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call i8* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 2)
  %37 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %38 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_IRQ, align 4
  %41 = call i8* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 0)
  %42 = bitcast i8* %41 to %struct.resource*
  store %struct.resource* %42, %struct.resource** %7, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %48 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %50 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %49, i32 0, i32 4
  %51 = load %struct.resource*, %struct.resource** %50, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %19
  %54 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %55 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %54, i32 0, i32 6
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.resource*, %struct.resource** %7, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %63 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61, %58, %53, %19
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %215

69:                                               ; preds = %61
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load i32, i32* @IORESOURCE_MEM, align 4
  %72 = call i8* @platform_get_resource(%struct.platform_device* %70, i32 %71, i32 0)
  %73 = bitcast i8* %72 to %struct.resource*
  store %struct.resource* %73, %struct.resource** %6, align 8
  %74 = load %struct.resource*, %struct.resource** %6, align 8
  %75 = call i8* @resource_size(%struct.resource* %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load %struct.resource*, %struct.resource** %6, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @request_mem_region(i32 %79, i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %215

86:                                               ; preds = %69
  %87 = load %struct.resource*, %struct.resource** %6, align 8
  %88 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %89 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %88, i32 0, i32 0
  store %struct.resource* %87, %struct.resource** %89, align 8
  %90 = load %struct.resource*, %struct.resource** %6, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i8* @ioremap(i32 %92, i32 %93)
  %95 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %96 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %98 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %86
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %215

104:                                              ; preds = %86
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = load i32, i32* @IORESOURCE_MEM, align 4
  %107 = call i8* @platform_get_resource(%struct.platform_device* %105, i32 %106, i32 3)
  %108 = bitcast i8* %107 to %struct.resource*
  store %struct.resource* %108, %struct.resource** %6, align 8
  %109 = load %struct.resource*, %struct.resource** %6, align 8
  %110 = call i8* @resource_size(%struct.resource* %109)
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %9, align 4
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i8* @ioremap(i32 %114, i32 %115)
  %117 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %118 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %120 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %104
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %11, align 4
  br label %215

126:                                              ; preds = %104
  %127 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %128 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %127, i32 0, i32 8
  store i32* @pccard_static_ops, i32** %128, align 8
  %129 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %130 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %129, i32 0, i32 7
  store i32* @bcm63xx_pcmcia_operations, i32** %130, align 8
  %131 = load i32, i32* @THIS_MODULE, align 4
  %132 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %133 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %132, i32 0, i32 6
  store i32 %131, i32* %133, align 8
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 0
  %136 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %137 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %136, i32 0, i32 5
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  store %struct.TYPE_4__* %135, %struct.TYPE_4__** %138, align 8
  %139 = load i32, i32* @SS_CAP_STATIC_MAP, align 4
  %140 = load i32, i32* @SS_CAP_PCCARD, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %143 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %145 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = ptrtoint i8* %146 to i64
  %148 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %149 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.resource*, %struct.resource** %7, align 8
  %151 = getelementptr inbounds %struct.resource, %struct.resource* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %154 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %156 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %155, i32 0, i32 4
  %157 = load %struct.resource*, %struct.resource** %156, align 8
  %158 = call i8* @resource_size(%struct.resource* %157)
  %159 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %160 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %162 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %161, i32 0, i32 3
  %163 = load i32, i32* @bcm63xx_pcmcia_poll, align 4
  %164 = call i32 @timer_setup(i32* %162, i32 %163, i32 0)
  %165 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %166 = load i32, i32* @PCMCIA_C1_REG, align 4
  %167 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %165, i32 %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32, i32* @PCMCIA_C1_CBIDSEL_MASK, align 4
  %169 = load i32, i32* %10, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* @PCMCIA_C1_EN_PCMCIA_GPIO_MASK, align 4
  %172 = load i32, i32* %10, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @PCMCIA_C1_REG, align 4
  %177 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %174, i32 %175, i32 %176)
  %178 = load i32, i32* @PCMCIA_C2_DATA16_MASK, align 4
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* @PCMCIA_C2_RWCOUNT_SHIFT, align 4
  %180 = shl i32 10, %179
  %181 = load i32, i32* %10, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %10, align 4
  %183 = load i32, i32* @PCMCIA_C2_INACTIVE_SHIFT, align 4
  %184 = shl i32 6, %183
  %185 = load i32, i32* %10, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* @PCMCIA_C2_SETUP_SHIFT, align 4
  %188 = shl i32 3, %187
  %189 = load i32, i32* %10, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* @PCMCIA_C2_HOLD_SHIFT, align 4
  %192 = shl i32 3, %191
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %196 = load i32, i32* %10, align 4
  %197 = load i32, i32* @PCMCIA_C2_REG, align 4
  %198 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %195, i32 %196, i32 %197)
  %199 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %200 = call i32 @pcmcia_register_socket(%struct.pcmcia_socket* %199)
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %126
  br label %215

204:                                              ; preds = %126
  %205 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %206 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %205, i32 0, i32 3
  %207 = load i64, i64* @jiffies, align 8
  %208 = load i32, i32* @BCM63XX_PCMCIA_POLL_RATE, align 4
  %209 = call i64 @msecs_to_jiffies(i32 %208)
  %210 = add nsw i64 %207, %209
  %211 = call i32 @mod_timer(i32* %206, i64 %210)
  %212 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %213 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %214 = call i32 @platform_set_drvdata(%struct.platform_device* %212, %struct.bcm63xx_pcmcia_socket* %213)
  store i32 0, i32* %2, align 4
  br label %252

215:                                              ; preds = %203, %123, %101, %83, %66
  %216 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %217 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %222 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @iounmap(i8* %223)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %227 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = icmp ne i8* %228, null
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %232 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @iounmap(i8* %233)
  br label %235

235:                                              ; preds = %230, %225
  %236 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %237 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %236, i32 0, i32 0
  %238 = load %struct.resource*, %struct.resource** %237, align 8
  %239 = icmp ne %struct.resource* %238, null
  br i1 %239, label %240, label %248

240:                                              ; preds = %235
  %241 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %242 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %241, i32 0, i32 0
  %243 = load %struct.resource*, %struct.resource** %242, align 8
  %244 = getelementptr inbounds %struct.resource, %struct.resource* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %8, align 4
  %247 = call i32 @release_mem_region(i32 %245, i32 %246)
  br label %248

248:                                              ; preds = %240, %235
  %249 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %4, align 8
  %250 = call i32 @kfree(%struct.bcm63xx_pcmcia_socket* %249)
  %251 = load i32, i32* %11, align 4
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %248, %204, %16
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local %struct.bcm63xx_pcmcia_socket* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local i32 @request_mem_region(i32, i32, i8*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket*, i32) #1

declare dso_local i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket*, i32, i32) #1

declare dso_local i32 @pcmcia_register_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.bcm63xx_pcmcia_socket*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @kfree(%struct.bcm63xx_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
