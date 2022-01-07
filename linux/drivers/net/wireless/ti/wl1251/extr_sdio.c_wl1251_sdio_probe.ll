; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_sdio.c_wl1251_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.wl1251 = type { i64, i32, i32, %struct.TYPE_2__*, %struct.wl1251_sdio* }
%struct.wl1251_sdio = type { %struct.sdio_func* }
%struct.ieee80211_hw = type { i32, i64, i32, %struct.wl1251* }
%struct.wl1251_platform_data = type { i32, i64, i32, %struct.wl1251* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wl1251_sdio_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"wl1251 power\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to request gpio: %d\0A\00", align 1
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@wl1251_line_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wl1251\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"request_irq() failed: %d\00", align 1
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@wl1251_enable_line_irq = common dso_local global i32 0, align 4
@wl1251_disable_line_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"using dedicated interrupt line\00", align 1
@wl1251_sdio_enable_irq = common dso_local global i32 0, align 4
@wl1251_sdio_disable_irq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"using SDIO interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @wl1251_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1251*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.wl1251_sdio*, align 8
  %10 = alloca %struct.wl1251_platform_data*, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %11 = call %struct.wl1251_platform_data* (...) @wl1251_alloc_hw()
  %12 = bitcast %struct.wl1251_platform_data* %11 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %12, %struct.ieee80211_hw** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %14 = bitcast %struct.ieee80211_hw* %13 to %struct.wl1251_platform_data*
  %15 = call i64 @IS_ERR(%struct.wl1251_platform_data* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %19 = bitcast %struct.ieee80211_hw* %18 to %struct.wl1251_platform_data*
  %20 = call i32 @PTR_ERR(%struct.wl1251_platform_data* %19)
  store i32 %20, i32* %3, align 4
  br label %172

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 3
  %24 = load %struct.wl1251*, %struct.wl1251** %23, align 8
  store %struct.wl1251* %24, %struct.wl1251** %7, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.wl1251_sdio* @kzalloc(i32 8, i32 %25)
  store %struct.wl1251_sdio* %26, %struct.wl1251_sdio** %9, align 8
  %27 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %28 = icmp eq %struct.wl1251_sdio* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %168

32:                                               ; preds = %21
  %33 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %34 = call i32 @sdio_claim_host(%struct.sdio_func* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %36 = call i32 @sdio_enable_func(%struct.sdio_func* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %163

40:                                               ; preds = %32
  %41 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %42 = call i32 @sdio_set_block_size(%struct.sdio_func* %41, i32 512)
  %43 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %44 = call i32 @sdio_release_host(%struct.sdio_func* %43)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %46 = bitcast %struct.ieee80211_hw* %45 to %struct.wl1251_platform_data*
  %47 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %48 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %47, i32 0, i32 0
  %49 = call i32 @SET_IEEE80211_DEV(%struct.wl1251_platform_data* %46, i32* %48)
  %50 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %51 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %52 = getelementptr inbounds %struct.wl1251_sdio, %struct.wl1251_sdio* %51, i32 0, i32 0
  store %struct.sdio_func* %50, %struct.sdio_func** %52, align 8
  %53 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %54 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %55 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %54, i32 0, i32 4
  store %struct.wl1251_sdio* %53, %struct.wl1251_sdio** %55, align 8
  %56 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %57 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %56, i32 0, i32 3
  store %struct.TYPE_2__* @wl1251_sdio_ops, %struct.TYPE_2__** %57, align 8
  %58 = call %struct.wl1251_platform_data* (...) @wl1251_get_platform_data()
  store %struct.wl1251_platform_data* %58, %struct.wl1251_platform_data** %10, align 8
  %59 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %10, align 8
  %60 = call i64 @IS_ERR(%struct.wl1251_platform_data* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %40
  %63 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %10, align 8
  %64 = getelementptr inbounds %struct.wl1251_platform_data, %struct.wl1251_platform_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %67 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %10, align 8
  %69 = getelementptr inbounds %struct.wl1251_platform_data, %struct.wl1251_platform_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %72 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.wl1251_platform_data*, %struct.wl1251_platform_data** %10, align 8
  %74 = getelementptr inbounds %struct.wl1251_platform_data, %struct.wl1251_platform_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %62, %40
  %79 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @gpio_is_valid(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %85, i32 0, i32 0
  %87 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %88 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @devm_gpio_request(i32* %86, i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @wl1251_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %158

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %78
  %98 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %99 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %128

102:                                              ; preds = %97
  %103 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %104 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %107 = call i32 @irq_set_status_flags(i64 %105, i32 %106)
  %108 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %109 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* @wl1251_line_irq, align 4
  %112 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %113 = call i32 @request_irq(i64 %110, i32 %111, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.wl1251* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %158

119:                                              ; preds = %102
  %120 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %121 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %124 = call i32 @irq_set_irq_type(i64 %122, i32 %123)
  %125 = load i32, i32* @wl1251_enable_line_irq, align 4
  store i32 %125, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 1), align 4
  %126 = load i32, i32* @wl1251_disable_line_irq, align 4
  store i32 %126, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 0), align 4
  %127 = call i32 @wl1251_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %132

128:                                              ; preds = %97
  %129 = load i32, i32* @wl1251_sdio_enable_irq, align 4
  store i32 %129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 1), align 4
  %130 = load i32, i32* @wl1251_sdio_disable_irq, align 4
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wl1251_sdio_ops, i32 0, i32 0), align 4
  %131 = call i32 @wl1251_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %128, %119
  %133 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %134 = call i32 @wl1251_init_ieee80211(%struct.wl1251* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %146

138:                                              ; preds = %132
  %139 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %140 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %141 = call i32 @sdio_set_drvdata(%struct.sdio_func* %139, %struct.wl1251* %140)
  %142 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %143 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_put_noidle(i32* %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %3, align 4
  br label %172

146:                                              ; preds = %137
  %147 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %148 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %153 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %156 = call i32 @free_irq(i64 %154, %struct.wl1251* %155)
  br label %157

157:                                              ; preds = %151, %146
  br label %158

158:                                              ; preds = %157, %116, %93
  %159 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %160 = call i32 @sdio_claim_host(%struct.sdio_func* %159)
  %161 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %162 = call i32 @sdio_disable_func(%struct.sdio_func* %161)
  br label %163

163:                                              ; preds = %158, %39
  %164 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %165 = call i32 @sdio_release_host(%struct.sdio_func* %164)
  %166 = load %struct.wl1251_sdio*, %struct.wl1251_sdio** %9, align 8
  %167 = call i32 @kfree(%struct.wl1251_sdio* %166)
  br label %168

168:                                              ; preds = %163, %29
  %169 = load %struct.wl1251*, %struct.wl1251** %7, align 8
  %170 = call i32 @wl1251_free_hw(%struct.wl1251* %169)
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %168, %138, %17
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.wl1251_platform_data* @wl1251_alloc_hw(...) #1

declare dso_local i64 @IS_ERR(%struct.wl1251_platform_data*) #1

declare dso_local i32 @PTR_ERR(%struct.wl1251_platform_data*) #1

declare dso_local %struct.wl1251_sdio* @kzalloc(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.wl1251_platform_data*, i32*) #1

declare dso_local %struct.wl1251_platform_data* @wl1251_get_platform_data(...) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request(i32*, i32, i8*) #1

declare dso_local i32 @wl1251_error(i8*, i32) #1

declare dso_local i32 @irq_set_status_flags(i64, i32) #1

declare dso_local i32 @request_irq(i64, i32, i32, i8*, %struct.wl1251*) #1

declare dso_local i32 @irq_set_irq_type(i64, i32) #1

declare dso_local i32 @wl1251_info(i8*) #1

declare dso_local i32 @wl1251_init_ieee80211(%struct.wl1251*) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.wl1251*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.wl1251*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @kfree(%struct.wl1251_sdio*) #1

declare dso_local i32 @wl1251_free_hw(%struct.wl1251*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
