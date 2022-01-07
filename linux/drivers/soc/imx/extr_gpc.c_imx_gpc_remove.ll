; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_gpc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_gpc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pgc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@imx_gpc_domains = common dso_local global %struct.TYPE_5__* null, align 8
@GPC_PGC_DOMAIN_PU = common dso_local global i64 0, align 8
@GPC_PGC_DOMAIN_ARM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_gpc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.device_node* @of_get_child_by_name(i32 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @of_property_read_bool(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %55

21:                                               ; preds = %17, %1
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %21
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @of_genpd_del_provider(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @imx_gpc_domains, align 8
  %31 = load i64, i64* @GPC_PGC_DOMAIN_PU, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @pm_genpd_remove(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %55

39:                                               ; preds = %24
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @imx_gpc_domains, align 8
  %41 = load i64, i64* @GPC_PGC_DOMAIN_PU, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = call i32 @imx_pgc_put_clocks(%struct.TYPE_5__* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @imx_gpc_domains, align 8
  %45 = load i64, i64* @GPC_PGC_DOMAIN_ARM, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @pm_genpd_remove(i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %21
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51, %37, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_genpd_del_provider(i32) #1

declare dso_local i32 @pm_genpd_remove(i32*) #1

declare dso_local i32 @imx_pgc_put_clocks(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
