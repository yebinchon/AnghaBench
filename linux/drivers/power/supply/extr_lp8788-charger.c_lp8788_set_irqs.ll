; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_set_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_set_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_charger = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.resource = type { i32, i32 }

@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@lp8788_charger_irq_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_charger*, i8*)* @lp8788_set_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_set_irqs(%struct.platform_device* %0, %struct.lp8788_charger* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.lp8788_charger*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.irq_domain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.lp8788_charger* %1, %struct.lp8788_charger** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %17 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.irq_domain*, %struct.irq_domain** %19, align 8
  store %struct.irq_domain* %20, %struct.irq_domain** %9, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %22 = load i32, i32* @IORESOURCE_IRQ, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %21, i32 %22, i8* %23)
  store %struct.resource* %24, %struct.resource** %8, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %108

28:                                               ; preds = %3
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %14, align 4
  br label %36

36:                                               ; preds = %76, %28
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %42 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.irq_domain*, %struct.irq_domain** %9, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i32 @irq_create_mapping(%struct.irq_domain* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %49 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %57 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %55, i32* %62, align 4
  %63 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %64 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @lp8788_charger_irq_thread, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %71 = call i32 @request_threaded_irq(i32 %67, i32* null, i32 %68, i32 0, i8* %69, %struct.lp8788_charger* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %40
  br label %79

75:                                               ; preds = %40
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %36

79:                                               ; preds = %74, %36
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %108

85:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %103, %85
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %89 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %94 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %102 = call i32 @free_irq(i32 %100, %struct.lp8788_charger* %101)
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %86

106:                                              ; preds = %86
  %107 = load i32, i32* %15, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %84, %27
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @irq_create_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lp8788_charger*) #1

declare dso_local i32 @free_irq(i32, %struct.lp8788_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
