; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pd_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pd_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.ti_sci_pm_domain = type { %struct.ti_sci_handle* }
%struct.ti_sci_handle = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ti_sci_handle*, i32)* }
%struct.ti_sci_genpd_dev_data = type { i32, i32 }
%struct.generic_pm_domain_data = type { %struct.ti_sci_genpd_dev_data* }

@.str = private unnamed_addr constant [14 x i8] c"power-domains\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TI_SCI_PD_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, %struct.device*)* @ti_sci_pd_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_pd_attach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.of_phandle_args, align 8
  %8 = alloca %struct.ti_sci_pm_domain*, align 8
  %9 = alloca %struct.ti_sci_handle*, align 8
  %10 = alloca %struct.ti_sci_genpd_dev_data*, align 8
  %11 = alloca %struct.generic_pm_domain_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %6, align 8
  %17 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %18 = call %struct.ti_sci_pm_domain* @genpd_to_ti_sci_pd(%struct.generic_pm_domain* %17)
  store %struct.ti_sci_pm_domain* %18, %struct.ti_sci_pm_domain** %8, align 8
  %19 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %8, align 8
  %20 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %19, i32 0, i32 0
  %21 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %20, align 8
  store %struct.ti_sci_handle* %21, %struct.ti_sci_handle** %9, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.device_node*, %struct.device_node** %6, align 8
  %23 = call i32 @of_parse_phandle_with_args(%struct.device_node* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %7)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %3, align 4
  br label %89

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %45 = getelementptr inbounds %struct.ti_sci_handle, %struct.ti_sci_handle* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.ti_sci_handle*, i32)*, i32 (%struct.ti_sci_handle*, i32)** %47, align 8
  %49 = load %struct.ti_sci_handle*, %struct.ti_sci_handle** %9, align 8
  %50 = load i32, i32* %12, align 4
  %51 = call i32 %48(%struct.ti_sci_handle* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %89

57:                                               ; preds = %39
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call %struct.ti_sci_genpd_dev_data* @kzalloc(i32 8, i32 %58)
  store %struct.ti_sci_genpd_dev_data* %59, %struct.ti_sci_genpd_dev_data** %10, align 8
  %60 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  %61 = icmp ne %struct.ti_sci_genpd_dev_data* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %89

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  %68 = getelementptr inbounds %struct.ti_sci_genpd_dev_data, %struct.ti_sci_genpd_dev_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @TI_SCI_PD_EXCLUSIVE, align 4
  %70 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  %71 = getelementptr inbounds %struct.ti_sci_genpd_dev_data, %struct.ti_sci_genpd_dev_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %7, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1
  %81 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  %82 = getelementptr inbounds %struct.ti_sci_genpd_dev_data, %struct.ti_sci_genpd_dev_data* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %75, %65
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device* %84)
  store %struct.generic_pm_domain_data* %85, %struct.generic_pm_domain_data** %11, align 8
  %86 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  %87 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %11, align 8
  %88 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %87, i32 0, i32 0
  store %struct.ti_sci_genpd_dev_data* %86, %struct.ti_sci_genpd_dev_data** %88, align 8
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %62, %54, %36, %26
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.ti_sci_pm_domain* @genpd_to_ti_sci_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.ti_sci_genpd_dev_data* @kzalloc(i32, i32) #1

declare dso_local %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
