; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-st-ssc4.c_spi_st_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.spi_st = type { i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MODEBITS = common dso_local global i32 0, align 4
@spi_st_setup = common dso_local global i32 0, align 4
@spi_st_cleanup = common dso_local global i32 0, align 4
@spi_st_transfer_one = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ssc\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to request clock\0A\00", align 1
@SSC_I2C = common dso_local global i64 0, align 8
@SSC_CTL = common dso_local global i64 0, align 8
@SSC_CTL_SR = common dso_local global i32 0, align 4
@SSC_CTL_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"IRQ missing or invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spi_st_irq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to request irq %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to register master\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_st_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_st_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_st*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__* %15, i32 24)
  store %struct.spi_master* %16, %struct.spi_master** %5, align 8
  %17 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %18 = icmp ne %struct.spi_master* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %212

22:                                               ; preds = %1
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %25 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  store %struct.device_node* %23, %struct.device_node** %26, align 8
  %27 = load i32, i32* @MODEBITS, align 4
  %28 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %29 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @spi_st_setup, align 4
  %31 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %32 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @spi_st_cleanup, align 4
  %34 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %35 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @spi_st_transfer_one, align 4
  %37 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %38 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = call i32 @SPI_BPW_MASK(i32 8)
  %40 = call i32 @SPI_BPW_MASK(i32 16)
  %41 = or i32 %39, %40
  %42 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %43 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %45 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %50 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %52 = call %struct.spi_st* @spi_master_get_devdata(%struct.spi_master* %51)
  store %struct.spi_st* %52, %struct.spi_st** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = call i64 @devm_clk_get(%struct.TYPE_10__* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %57 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %59 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @IS_ERR(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %22
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %68 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @PTR_ERR(i64 %69)
  store i32 %70, i32* %8, align 4
  br label %208

71:                                               ; preds = %22
  %72 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %73 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @clk_prepare_enable(i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %208

79:                                               ; preds = %71
  %80 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %81 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %80, i32 0, i32 2
  %82 = call i32 @init_completion(i32* %81)
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = call i64 @devm_platform_ioremap_resource(%struct.platform_device* %83, i32 0)
  %85 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %86 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %88 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @IS_ERR(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %79
  %93 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %94 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @PTR_ERR(i64 %95)
  store i32 %96, i32* %8, align 4
  br label %203

97:                                               ; preds = %79
  %98 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %99 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SSC_I2C, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel_relaxed(i32 0, i64 %102)
  %104 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %105 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SSC_CTL, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readw_relaxed(i64 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* @SSC_CTL_SR, align 4
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %115 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @SSC_CTL, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel_relaxed(i32 %113, i64 %118)
  %120 = call i32 @udelay(i32 1)
  %121 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %122 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @SSC_CTL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @readl_relaxed(i64 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @SSC_CTL_SR, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %9, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %133 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SSC_CTL, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel_relaxed(i32 %131, i64 %136)
  %138 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %139 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SSC_CTL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @readl_relaxed(i64 %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @SSC_CTL_MS, align 4
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %150 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @SSC_CTL, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @writel_relaxed(i32 %148, i64 %153)
  %155 = load %struct.device_node*, %struct.device_node** %4, align 8
  %156 = call i32 @irq_of_parse_and_map(%struct.device_node* %155, i32 0)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %97
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %161, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %8, align 4
  br label %203

165:                                              ; preds = %97
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @spi_st_irq, align 4
  %170 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %171 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %174 = call i32 @devm_request_irq(%struct.TYPE_10__* %167, i32 %168, i32 %169, i32 0, i32 %172, %struct.spi_st* %173)
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %165
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %178, i32 0, i32 0
  %180 = load i32, i32* %7, align 4
  %181 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %179, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  br label %203

182:                                              ; preds = %165
  %183 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @pm_runtime_set_active(%struct.TYPE_10__* %184)
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %187)
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %191 = call i32 @platform_set_drvdata(%struct.platform_device* %189, %struct.spi_master* %190)
  %192 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %193 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %192, i32 0, i32 0
  %194 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %195 = call i32 @devm_spi_register_master(%struct.TYPE_10__* %193, %struct.spi_master* %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %182
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %200, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %203

202:                                              ; preds = %182
  store i32 0, i32* %2, align 4
  br label %212

203:                                              ; preds = %198, %177, %159, %92
  %204 = load %struct.spi_st*, %struct.spi_st** %6, align 8
  %205 = getelementptr inbounds %struct.spi_st, %struct.spi_st* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @clk_disable_unprepare(i64 %206)
  br label %208

208:                                              ; preds = %203, %78, %63
  %209 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %210 = call i32 @spi_master_put(%struct.spi_master* %209)
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %202, %19
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local %struct.spi_st* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readw_relaxed(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_10__*, i32, i32, i32, i32, %struct.spi_st*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_10__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_10__*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
