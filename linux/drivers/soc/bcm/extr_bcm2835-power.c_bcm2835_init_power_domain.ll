; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_init_power_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/bcm/extr_bcm2835-power.c_bcm2835_init_power_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_power = type { %struct.TYPE_3__, %struct.bcm2835_power_domain*, %struct.device* }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.bcm2835_power_domain = type { i32, %struct.TYPE_4__, %struct.bcm2835_power*, i32* }
%struct.device = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@bcm2835_power_pd_power_on = common dso_local global i32 0, align 4
@bcm2835_power_pd_power_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_power*, i32, i8*)* @bcm2835_init_power_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_init_power_domain(%struct.bcm2835_power* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_power*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.bcm2835_power_domain*, align 8
  %10 = alloca i32, align 4
  store %struct.bcm2835_power* %0, %struct.bcm2835_power** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.bcm2835_power*, %struct.bcm2835_power** %5, align 8
  %12 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load %struct.bcm2835_power*, %struct.bcm2835_power** %5, align 8
  %15 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %14, i32 0, i32 1
  %16 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %16, i64 %18
  store %struct.bcm2835_power_domain* %19, %struct.bcm2835_power_domain** %9, align 8
  %20 = load %struct.device*, %struct.device** %8, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @devm_clk_get(i32 %22, i8* %23)
  %25 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %26 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %28 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %3
  %33 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %34 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %77

43:                                               ; preds = %32
  %44 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %45 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %3
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %49 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  %51 = load i32, i32* @bcm2835_power_pd_power_on, align 4
  %52 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %53 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* @bcm2835_power_pd_power_off, align 4
  %56 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %57 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %61 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.bcm2835_power*, %struct.bcm2835_power** %5, align 8
  %63 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %64 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %63, i32 0, i32 2
  store %struct.bcm2835_power* %62, %struct.bcm2835_power** %64, align 8
  %65 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %66 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %65, i32 0, i32 1
  %67 = call i32 @pm_genpd_init(%struct.TYPE_4__* %66, i32* null, i32 1)
  %68 = load %struct.bcm2835_power_domain*, %struct.bcm2835_power_domain** %9, align 8
  %69 = getelementptr inbounds %struct.bcm2835_power_domain, %struct.bcm2835_power_domain* %68, i32 0, i32 1
  %70 = load %struct.bcm2835_power*, %struct.bcm2835_power** %5, align 8
  %71 = getelementptr inbounds %struct.bcm2835_power, %struct.bcm2835_power* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  store %struct.TYPE_4__* %69, %struct.TYPE_4__** %76, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %46, %41
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
