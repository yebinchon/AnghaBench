; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.platform_device = type { i32 }
%struct.ds1wm_data = type { i32, i32, i32, %struct.platform_device*, i32, i32, i32, i32 }
%struct.ds1wm_driver_data = type { i32, i32, i32, i64, i32 }
%struct.resource = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"illegal bus shift %d, not written\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"memory resource size %d to small, should be %d\0A\00", align 1
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@DS1WM_INTEN_IAS = common dso_local global i32 0, align 4
@DS1WM_INT_EN = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHEDGE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWEDGE = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_HIGHLEVEL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IORESOURCE_IRQ_LOWLEVEL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@ds1wm_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ds1wm\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"devm_request_irq %d failed with errno %d\0A\00", align 1
@ds1wm_master = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [101 x i8] c"ds1wm: probe successful, IAS: %d, rec.delay: %d, clockrate: %d, bus-shift: %d, is Hw Big Endian: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1wm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1wm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ds1wm_data*, align 8
  %5 = alloca %struct.ds1wm_driver_data*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %274

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ds1wm_data* @devm_kzalloc(i32* %16, i32 40, i32 %17)
  store %struct.ds1wm_data* %18, %struct.ds1wm_data** %4, align 8
  %19 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %20 = icmp ne %struct.ds1wm_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %274

24:                                               ; preds = %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.ds1wm_data* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load i32, i32* @IORESOURCE_MEM, align 4
  %30 = call %struct.resource* @platform_get_resource(%struct.platform_device* %28, i32 %29, i32 0)
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = icmp ne %struct.resource* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %274

36:                                               ; preds = %24
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = call i32 @resource_size(%struct.resource* %42)
  %44 = call i32 @devm_ioremap(i32* %38, i32 %41, i32 %43)
  %45 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %46 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %48 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %274

54:                                               ; preds = %36
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %57 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %56, i32 0, i32 3
  store %struct.platform_device* %55, %struct.platform_device** %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @mfd_get_cell(%struct.platform_device* %58)
  %60 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %61 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %60, i32 0, i32 6
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %63 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %54
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %274

69:                                               ; preds = %54
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call %struct.ds1wm_driver_data* @dev_get_platdata(i32* %71)
  store %struct.ds1wm_driver_data* %72, %struct.ds1wm_driver_data** %5, align 8
  %73 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %74 = icmp ne %struct.ds1wm_driver_data* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %274

78:                                               ; preds = %69
  %79 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %80 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 2
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %85 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %84, i32 0, i32 3
  %86 = load %struct.platform_device*, %struct.platform_device** %85, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %89 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %274

94:                                               ; preds = %78
  %95 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %96 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %99 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %101 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 8, %102
  %104 = load %struct.resource*, %struct.resource** %6, align 8
  %105 = call i32 @resource_size(%struct.resource* %104)
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %94
  %108 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %109 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %108, i32 0, i32 3
  %110 = load %struct.platform_device*, %struct.platform_device** %109, align 8
  %111 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %110, i32 0, i32 0
  %112 = load %struct.resource*, %struct.resource** %6, align 8
  %113 = call i32 @resource_size(%struct.resource* %112)
  %114 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %115 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 8, %116
  %118 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %274

121:                                              ; preds = %94
  %122 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %123 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %126 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = load i32, i32* @IORESOURCE_IRQ, align 4
  %129 = call %struct.resource* @platform_get_resource(%struct.platform_device* %127, i32 %128, i32 0)
  store %struct.resource* %129, %struct.resource** %6, align 8
  %130 = load %struct.resource*, %struct.resource** %6, align 8
  %131 = icmp ne %struct.resource* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @ENXIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %2, align 4
  br label %274

135:                                              ; preds = %121
  %136 = load %struct.resource*, %struct.resource** %6, align 8
  %137 = getelementptr inbounds %struct.resource, %struct.resource* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %140 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %142 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* @DS1WM_INTEN_IAS, align 4
  br label %148

147:                                              ; preds = %135
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %151 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %153 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %156 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %158 = load i32, i32* @DS1WM_INT_EN, align 4
  %159 = call i32 @ds1wm_read_register(%struct.ds1wm_data* %157, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %161 = load i32, i32* @DS1WM_INT_EN, align 4
  %162 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %163 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %160, i32 %161, i32 %164)
  %166 = load %struct.resource*, %struct.resource** %6, align 8
  %167 = getelementptr inbounds %struct.resource, %struct.resource* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IORESOURCE_IRQ_HIGHEDGE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %148
  %173 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %174 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %177 = call i32 @irq_set_irq_type(i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %172, %148
  %179 = load %struct.resource*, %struct.resource** %6, align 8
  %180 = getelementptr inbounds %struct.resource, %struct.resource* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @IORESOURCE_IRQ_LOWEDGE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %187 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %190 = call i32 @irq_set_irq_type(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %185, %178
  %192 = load %struct.resource*, %struct.resource** %6, align 8
  %193 = getelementptr inbounds %struct.resource, %struct.resource* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @IORESOURCE_IRQ_HIGHLEVEL, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %200 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %203 = call i32 @irq_set_irq_type(i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %198, %191
  %205 = load %struct.resource*, %struct.resource** %6, align 8
  %206 = getelementptr inbounds %struct.resource, %struct.resource* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @IORESOURCE_IRQ_LOWLEVEL, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %213 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %216 = call i32 @irq_set_irq_type(i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %204
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %221 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @ds1wm_isr, align 4
  %224 = load i32, i32* @IRQF_SHARED, align 4
  %225 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %226 = call i32 @devm_request_irq(i32* %219, i32 %222, i32 %223, i32 %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %struct.ds1wm_data* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %240

229:                                              ; preds = %217
  %230 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %231 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %230, i32 0, i32 3
  %232 = load %struct.platform_device*, %struct.platform_device** %231, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %235 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %233, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* %2, align 4
  br label %274

240:                                              ; preds = %217
  %241 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %242 = call i32 @ds1wm_up(%struct.ds1wm_data* %241)
  %243 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %244 = bitcast %struct.ds1wm_data* %243 to i8*
  store i8* %244, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ds1wm_master, i32 0, i32 0), align 8
  %245 = call i32 @w1_add_master_device(%struct.TYPE_3__* @ds1wm_master)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %240
  br label %270

249:                                              ; preds = %240
  %250 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %251 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %250, i32 0, i32 3
  %252 = load %struct.platform_device*, %struct.platform_device** %251, align 8
  %253 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %252, i32 0, i32 0
  %254 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %255 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %258 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.ds1wm_driver_data*, %struct.ds1wm_driver_data** %5, align 8
  %261 = getelementptr inbounds %struct.ds1wm_driver_data, %struct.ds1wm_driver_data* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %264 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %267 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @dev_dbg(i32* %253, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.4, i64 0, i64 0), i64 %256, i32 %259, i32 %262, i32 %265, i32 %268)
  store i32 0, i32* %2, align 4
  br label %274

270:                                              ; preds = %248
  %271 = load %struct.ds1wm_data*, %struct.ds1wm_data** %4, align 8
  %272 = call i32 @ds1wm_down(%struct.ds1wm_data* %271)
  %273 = load i32, i32* %7, align 4
  store i32 %273, i32* %2, align 4
  br label %274

274:                                              ; preds = %270, %249, %229, %132, %107, %83, %75, %66, %51, %33, %21, %11
  %275 = load i32, i32* %2, align 4
  ret i32 %275
}

declare dso_local %struct.ds1wm_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds1wm_data*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mfd_get_cell(%struct.platform_device*) #1

declare dso_local %struct.ds1wm_driver_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ds1wm_read_register(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local i32 @irq_set_irq_type(i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i8*, %struct.ds1wm_data*) #1

declare dso_local i32 @ds1wm_up(%struct.ds1wm_data*) #1

declare dso_local i32 @w1_add_master_device(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @ds1wm_down(%struct.ds1wm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
