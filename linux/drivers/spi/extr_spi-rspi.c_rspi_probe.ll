; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_19__, i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.resource = type { i32 }
%struct.spi_controller = type { i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.rspi_data = type { i32, i32, i32, i32, i32, %struct.spi_controller*, %struct.spi_ops* }
%struct.spi_ops = type { i32, i32, i32, i32 }
%struct.rspi_plat_data = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"there is no set_config_register\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@rspi_prepare_message = common dso_local global i32 0, align 4
@rspi_unprepare_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"platform_get_irq error\0A\00", align 1
@rspi_irq_mux = common dso_local global i32 0, align 4
@rspi_irq_rx = common dso_local global i32 0, align 4
@rspi_irq_tx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"request_irq error\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"DMA not available, using PIO\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.rspi_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rspi_plat_data*, align 8
  %9 = alloca %struct.spi_ops*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_19__* %11, i32 40)
  store %struct.spi_controller* %12, %struct.spi_controller** %5, align 8
  %13 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %14 = icmp eq %struct.spi_controller* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %288

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.spi_ops* @of_device_get_match_data(%struct.TYPE_19__* %20)
  store %struct.spi_ops* %21, %struct.spi_ops** %9, align 8
  %22 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %23 = icmp ne %struct.spi_ops* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %28 = call i32 @rspi_parse_dt(%struct.TYPE_19__* %26, %struct.spi_controller* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %284

32:                                               ; preds = %24
  br label %60

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.spi_ops*
  store %struct.spi_ops* %39, %struct.spi_ops** %9, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.rspi_plat_data* @dev_get_platdata(%struct.TYPE_19__* %41)
  store %struct.rspi_plat_data* %42, %struct.rspi_plat_data** %8, align 8
  %43 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %44 = icmp ne %struct.rspi_plat_data* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %33
  %46 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %47 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %52 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %55 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %45, %33
  %57 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %58 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %57, i32 0, i32 0
  store i32 2, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %62 = getelementptr inbounds %struct.spi_ops, %struct.spi_ops* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @dev_err(%struct.TYPE_19__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %284

71:                                               ; preds = %60
  %72 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %73 = call %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller* %72)
  store %struct.rspi_data* %73, %struct.rspi_data** %6, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.rspi_data* %75)
  %77 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %78 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %79 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %78, i32 0, i32 6
  store %struct.spi_ops* %77, %struct.spi_ops** %79, align 8
  %80 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %81 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %82 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %81, i32 0, i32 5
  store %struct.spi_controller* %80, %struct.spi_controller** %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load i32, i32* @IORESOURCE_MEM, align 4
  %85 = call %struct.resource* @platform_get_resource(%struct.platform_device* %83, i32 %84, i32 0)
  store %struct.resource* %85, %struct.resource** %4, align 8
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.resource*, %struct.resource** %4, align 8
  %89 = call i32 @devm_ioremap_resource(%struct.TYPE_19__* %87, %struct.resource* %88)
  %90 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %91 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %93 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %71
  %98 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %99 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %7, align 4
  br label %284

102:                                              ; preds = %71
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @devm_clk_get(%struct.TYPE_19__* %104, i32* null)
  %106 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %107 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %109 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @IS_ERR(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %102
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32 @dev_err(%struct.TYPE_19__* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %118 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @PTR_ERR(i32 %119)
  store i32 %120, i32* %7, align 4
  br label %284

121:                                              ; preds = %102
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %122, i32 0, i32 0
  %124 = call i32 @pm_runtime_enable(%struct.TYPE_19__* %123)
  %125 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %126 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %125, i32 0, i32 2
  %127 = call i32 @init_waitqueue_head(i32* %126)
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %132 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 4
  %133 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %134 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %133, i32 0, i32 1
  store i32 1, i32* %134, align 4
  %135 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %136 = getelementptr inbounds %struct.spi_ops, %struct.spi_ops* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %139 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @rspi_prepare_message, align 4
  %141 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %142 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @rspi_unprepare_message, align 4
  %144 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %145 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 4
  %146 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %147 = getelementptr inbounds %struct.spi_ops, %struct.spi_ops* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %150 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 4
  %151 = load %struct.spi_ops*, %struct.spi_ops** %9, align 8
  %152 = getelementptr inbounds %struct.spi_ops, %struct.spi_ops* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %155 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %157 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %161 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  %163 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %164 = call i32 @platform_get_irq_byname(%struct.platform_device* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %121
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = call i32 @platform_get_irq_byname(%struct.platform_device* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = call i32 @platform_get_irq(%struct.platform_device* %173, i32 0)
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %7, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %181 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %183 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %182, i32 0, i32 0
  store i32 %179, i32* %183, align 8
  br label %184

184:                                              ; preds = %178, %175
  br label %198

185:                                              ; preds = %121
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %188 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = call i32 @platform_get_irq_byname(%struct.platform_device* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp sge i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %196 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  br label %197

197:                                              ; preds = %193, %185
  br label %198

198:                                              ; preds = %197, %184
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %202, i32 0, i32 0
  %204 = call i32 @dev_err(%struct.TYPE_19__* %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %280

205:                                              ; preds = %198
  %206 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %207 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %210 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %222

213:                                              ; preds = %205
  %214 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %215 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %214, i32 0, i32 0
  %216 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %217 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @rspi_irq_mux, align 4
  %220 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %221 = call i32 @rspi_request_irq(%struct.TYPE_19__* %215, i32 %218, i32 %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.rspi_data* %220)
  store i32 %221, i32* %7, align 4
  br label %243

222:                                              ; preds = %205
  %223 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %224 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %223, i32 0, i32 0
  %225 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %226 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @rspi_irq_rx, align 4
  %229 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %230 = call i32 @rspi_request_irq(%struct.TYPE_19__* %224, i32 %227, i32 %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %struct.rspi_data* %229)
  store i32 %230, i32* %7, align 4
  %231 = load i32, i32* %7, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %222
  %234 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %235 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %234, i32 0, i32 0
  %236 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %237 = getelementptr inbounds %struct.rspi_data, %struct.rspi_data* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @rspi_irq_tx, align 4
  %240 = load %struct.rspi_data*, %struct.rspi_data** %6, align 8
  %241 = call i32 @rspi_request_irq(%struct.TYPE_19__* %235, i32 %238, i32 %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.rspi_data* %240)
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %233, %222
  br label %243

243:                                              ; preds = %242, %213
  %244 = load i32, i32* %7, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %248 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %247, i32 0, i32 0
  %249 = call i32 @dev_err(%struct.TYPE_19__* %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %280

250:                                              ; preds = %243
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %254 = load %struct.resource*, %struct.resource** %4, align 8
  %255 = call i32 @rspi_request_dma(%struct.TYPE_19__* %252, %struct.spi_controller* %253, %struct.resource* %254)
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %260 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %259, i32 0, i32 0
  %261 = call i32 @dev_warn(%struct.TYPE_19__* %260, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %262

262:                                              ; preds = %258, %250
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %266 = call i32 @devm_spi_register_controller(%struct.TYPE_19__* %264, %struct.spi_controller* %265)
  store i32 %266, i32* %7, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %262
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = call i32 @dev_err(%struct.TYPE_19__* %271, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %277

273:                                              ; preds = %262
  %274 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %275 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %274, i32 0, i32 0
  %276 = call i32 @dev_info(%struct.TYPE_19__* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %288

277:                                              ; preds = %269
  %278 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %279 = call i32 @rspi_release_dma(%struct.spi_controller* %278)
  br label %280

280:                                              ; preds = %277, %246, %201
  %281 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %282 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %281, i32 0, i32 0
  %283 = call i32 @pm_runtime_disable(%struct.TYPE_19__* %282)
  br label %284

284:                                              ; preds = %280, %113, %97, %65, %31
  %285 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %286 = call i32 @spi_controller_put(%struct.spi_controller* %285)
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %2, align 4
  br label %288

288:                                              ; preds = %284, %273, %15
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.spi_ops* @of_device_get_match_data(%struct.TYPE_19__*) #1

declare dso_local i32 @rspi_parse_dt(%struct.TYPE_19__*, %struct.spi_controller*) #1

declare dso_local %struct.rspi_plat_data* @dev_get_platdata(%struct.TYPE_19__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_19__*, i8*) #1

declare dso_local %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rspi_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_19__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_19__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @rspi_request_irq(%struct.TYPE_19__*, i32, i32, i8*, %struct.rspi_data*) #1

declare dso_local i32 @rspi_request_dma(%struct.TYPE_19__*, %struct.spi_controller*, %struct.resource*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_19__*, %struct.spi_controller*) #1

declare dso_local i32 @dev_info(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @rspi_release_dma(%struct.spi_controller*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_19__*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
