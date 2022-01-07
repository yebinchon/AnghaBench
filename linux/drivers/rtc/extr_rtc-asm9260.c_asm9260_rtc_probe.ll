; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-asm9260.c_asm9260_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.asm9260_rtc_priv = type { i32, i64, i64, %struct.device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to enable clk!\0A\00", align 1
@HW_CCR = common dso_local global i64 0, align 8
@BM_CLKEN = common dso_local global i32 0, align 4
@BM_CTCRST = common dso_local global i32 0, align 4
@HW_CIIR = common dso_local global i64 0, align 8
@BM_AMR_OFF = common dso_local global i32 0, align 4
@HW_AMR = common dso_local global i64 0, align 8
@asm9260_rtc_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@asm9260_rtc_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"can't get irq %i, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asm9260_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asm9260_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.asm9260_rtc_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.asm9260_rtc_priv* @devm_kzalloc(%struct.device* %12, i32 32, i32 %13)
  store %struct.asm9260_rtc_priv* %14, %struct.asm9260_rtc_priv** %4, align 8
  %15 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %16 = icmp ne %struct.asm9260_rtc_priv* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %156

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %24 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %23, i32 0, i32 3
  store %struct.device* %22, %struct.device** %24, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %27 = call i32 @platform_set_drvdata(%struct.platform_device* %25, %struct.asm9260_rtc_priv* %26)
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @platform_get_irq(%struct.platform_device* %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %156

34:                                               ; preds = %20
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %6, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = call i64 @devm_ioremap_resource(%struct.device* %38, %struct.resource* %39)
  %41 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %42 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %44 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_ERR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %50 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @PTR_ERR(i64 %51)
  store i32 %52, i32* %2, align 4
  br label %156

53:                                               ; preds = %34
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @devm_clk_get(%struct.device* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %57 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %59 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @clk_prepare_enable(i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %156

68:                                               ; preds = %53
  %69 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %70 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HW_CCR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @ioread32(i64 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @BM_CLKEN, align 4
  %77 = load i32, i32* @BM_CTCRST, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @BM_CLKEN, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %68
  %83 = load i32, i32* @BM_CTCRST, align 4
  %84 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %85 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HW_CCR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite32(i32 %83, i64 %88)
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %82, %68
  %91 = load i32, i32* @BM_CLKEN, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %95 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HW_CCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @iowrite32(i32 %93, i64 %98)
  %100 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %101 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HW_CIIR, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @iowrite32(i32 0, i64 %104)
  %106 = load i32, i32* @BM_AMR_OFF, align 4
  %107 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %108 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @HW_AMR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @iowrite32(i32 %106, i64 %111)
  %113 = load %struct.device*, %struct.device** %5, align 8
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = call i32 @dev_name(%struct.device* %114)
  %116 = load i32, i32* @THIS_MODULE, align 4
  %117 = call i64 @devm_rtc_device_register(%struct.device* %113, i32 %115, i32* @asm9260_rtc_ops, i32 %116)
  %118 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %119 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  %120 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %121 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @IS_ERR(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %90
  %126 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %127 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @PTR_ERR(i64 %128)
  store i32 %129, i32* %8, align 4
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %150

133:                                              ; preds = %90
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @asm9260_rtc_irq, align 4
  %137 = load i32, i32* @IRQF_ONESHOT, align 4
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 @dev_name(%struct.device* %138)
  %140 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %141 = call i32 @devm_request_threaded_irq(%struct.device* %134, i32 %135, i32* null, i32 %136, i32 %137, i32 %139, %struct.asm9260_rtc_priv* %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %133
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %147)
  br label %150

149:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %156

150:                                              ; preds = %144, %125
  %151 = load %struct.asm9260_rtc_priv*, %struct.asm9260_rtc_priv** %4, align 8
  %152 = getelementptr inbounds %struct.asm9260_rtc_priv, %struct.asm9260_rtc_priv* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @clk_disable_unprepare(i32 %153)
  %155 = load i32, i32* %8, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %150, %149, %64, %48, %32, %17
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.asm9260_rtc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.asm9260_rtc_priv*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @devm_rtc_device_register(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.asm9260_rtc_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
