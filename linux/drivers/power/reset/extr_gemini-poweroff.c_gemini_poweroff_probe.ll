; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_poweroff_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/reset/extr_gemini-poweroff.c_gemini_poweroff_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_powercon = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GEMINI_PWC_IDREG = common dso_local global i64 0, align 8
@GEMINI_PWC_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"wrong power controller ID: %08x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GEMINI_PWC_CTRLREG = common dso_local global i64 0, align 8
@GEMINI_CTRL_ENABLE = common dso_local global i32 0, align 4
@GEMINI_CTRL_IRQ_CLR = common dso_local global i32 0, align 4
@GEMINI_PWC_STATREG = common dso_local global i64 0, align 8
@gemini_powerbutton_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"poweroff\00", align 1
@gemini_poweroff = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32 0, align 4
@gpw_poweroff = common dso_local global %struct.gemini_powercon* null, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Gemini poweroff driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gemini_poweroff_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_poweroff_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.gemini_powercon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gemini_powercon* @devm_kzalloc(%struct.device* %12, i32 16, i32 %13)
  store %struct.gemini_powercon* %14, %struct.gemini_powercon** %6, align 8
  %15 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %16 = icmp ne %struct.gemini_powercon* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %149

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = call i64 @devm_ioremap_resource(%struct.device* %24, %struct.resource* %25)
  %27 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %28 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %30 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @IS_ERR(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %36 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @PTR_ERR(i64 %37)
  store i32 %38, i32* %2, align 4
  br label %149

39:                                               ; preds = %20
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = call i32 @platform_get_irq(%struct.platform_device* %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %149

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %50 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %49, i32 0, i32 1
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %52 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GEMINI_PWC_IDREG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, -256
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GEMINI_PWC_ID, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @dev_err(%struct.device* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %149

68:                                               ; preds = %47
  %69 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %70 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl(i64 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* @GEMINI_CTRL_ENABLE, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %80 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel(i32 %78, i64 %83)
  %85 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %86 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* @GEMINI_CTRL_IRQ_CLR, align 4
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %96 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  %101 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %102 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @GEMINI_PWC_STATREG, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @readl(i64 %105)
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %111, %68
  %108 = load i32, i32* %7, align 4
  %109 = and i32 %108, 112
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %113 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @GEMINI_PWC_STATREG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @readl(i64 %116)
  store i32 %117, i32* %7, align 4
  br label %107

118:                                              ; preds = %107
  %119 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %120 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @readl(i64 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* @GEMINI_CTRL_IRQ_CLR, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %130 = getelementptr inbounds %struct.gemini_powercon, %struct.gemini_powercon* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @GEMINI_PWC_CTRLREG, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @writel(i32 %128, i64 %133)
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @gemini_powerbutton_interrupt, align 4
  %138 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  %139 = call i32 @devm_request_irq(%struct.device* %135, i32 %136, i32 %137, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.gemini_powercon* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %118
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %2, align 4
  br label %149

144:                                              ; preds = %118
  %145 = load i32, i32* @gemini_poweroff, align 4
  store i32 %145, i32* @pm_power_off, align 4
  %146 = load %struct.gemini_powercon*, %struct.gemini_powercon** %6, align 8
  store %struct.gemini_powercon* %146, %struct.gemini_powercon** @gpw_poweroff, align 8
  %147 = load %struct.device*, %struct.device** %4, align 8
  %148 = call i32 @dev_info(%struct.device* %147, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %149

149:                                              ; preds = %144, %142, %62, %44, %34, %17
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.gemini_powercon* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.gemini_powercon*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
