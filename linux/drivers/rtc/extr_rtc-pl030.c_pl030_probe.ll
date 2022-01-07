; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl030.c_pl030_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pl030.c_pl030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.amba_id = type { i32 }
%struct.pl030_rtc = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pl030_ops = common dso_local global i32 0, align 4
@RTC_CR = common dso_local global i64 0, align 8
@RTC_EOI = common dso_local global i64 0, align 8
@pl030_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"rtc-pl030\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amba_device*, %struct.amba_id*)* @pl030_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl030_probe(%struct.amba_device* %0, %struct.amba_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amba_device*, align 8
  %5 = alloca %struct.amba_id*, align 8
  %6 = alloca %struct.pl030_rtc*, align 8
  %7 = alloca i32, align 4
  store %struct.amba_device* %0, %struct.amba_device** %4, align 8
  store %struct.amba_id* %1, %struct.amba_id** %5, align 8
  %8 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %9 = call i32 @amba_request_regions(%struct.amba_device* %8, i32* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %113

13:                                               ; preds = %2
  %14 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %15 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %14, i32 0, i32 2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.pl030_rtc* @devm_kzalloc(i32* %15, i32 16, i32 %16)
  store %struct.pl030_rtc* %17, %struct.pl030_rtc** %6, align 8
  %18 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %19 = icmp ne %struct.pl030_rtc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %110

23:                                               ; preds = %13
  %24 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %25 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %24, i32 0, i32 2
  %26 = call %struct.TYPE_6__* @devm_rtc_allocate_device(i32* %25)
  %27 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %28 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %27, i32 0, i32 1
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %28, align 8
  %29 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %30 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i64 @IS_ERR(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %36 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.TYPE_6__* %37)
  store i32 %38, i32* %7, align 4
  br label %110

39:                                               ; preds = %23
  %40 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %41 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32* @pl030_ops, i32** %43, align 8
  %44 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %45 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %49 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %48, i32 0, i32 1
  %50 = call i32 @resource_size(%struct.TYPE_7__* %49)
  %51 = call i64 @ioremap(i32 %47, i32 %50)
  %52 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %53 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %55 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %39
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %110

61:                                               ; preds = %39
  %62 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %63 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RTC_CR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @__raw_writel(i32 0, i64 %66)
  %68 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %69 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RTC_EOI, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @__raw_writel(i32 0, i64 %72)
  %74 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %75 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %76 = call i32 @amba_set_drvdata(%struct.amba_device* %74, %struct.pl030_rtc* %75)
  %77 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %78 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @pl030_interrupt, align 4
  %83 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %84 = call i32 @request_irq(i32 %81, i32 %82, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.pl030_rtc* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %61
  br label %105

88:                                               ; preds = %61
  %89 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %90 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @rtc_register_device(%struct.TYPE_6__* %91)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %97

96:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %115

97:                                               ; preds = %95
  %98 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %99 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %104 = call i32 @free_irq(i32 %102, %struct.pl030_rtc* %103)
  br label %105

105:                                              ; preds = %97, %87
  %106 = load %struct.pl030_rtc*, %struct.pl030_rtc** %6, align 8
  %107 = getelementptr inbounds %struct.pl030_rtc, %struct.pl030_rtc* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @iounmap(i64 %108)
  br label %110

110:                                              ; preds = %105, %58, %34, %20
  %111 = load %struct.amba_device*, %struct.amba_device** %4, align 8
  %112 = call i32 @amba_release_regions(%struct.amba_device* %111)
  br label %113

113:                                              ; preds = %110, %12
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %96
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @amba_request_regions(%struct.amba_device*, i32*) #1

declare dso_local %struct.pl030_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i64 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_7__*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @amba_set_drvdata(%struct.amba_device*, %struct.pl030_rtc*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.pl030_rtc*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @free_irq(i32, %struct.pl030_rtc*) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @amba_release_regions(%struct.amba_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
