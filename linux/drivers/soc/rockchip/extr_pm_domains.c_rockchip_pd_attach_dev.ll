; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pd_attach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pd_attach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"attaching to power domain '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pm_clk_create failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"adding clock '%pC' to list of PM clocks\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"pm_clk_add_clk failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, %struct.device*)* @rockchip_pd_attach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pd_attach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %11 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %10, i32 0, i32 0
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  %13 = call i32 @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.clk* %12)
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @pm_clk_create(%struct.device* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = call %struct.clk* @of_clk_get(i32 %27, i32 %28)
  store %struct.clk* %30, %struct.clk** %6, align 8
  %31 = icmp ne %struct.clk* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.clk*, %struct.clk** %6, align 8
  %34 = call i32 @IS_ERR(%struct.clk* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ false, %24 ], [ %36, %32 ]
  br i1 %38, label %39, label %58

39:                                               ; preds = %37
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.clk*, %struct.clk** %6, align 8
  %42 = call i32 @dev_dbg(%struct.device* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.clk* %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.clk*, %struct.clk** %6, align 8
  %45 = call i32 @pm_clk_add_clk(%struct.device* %43, %struct.clk* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  %52 = load %struct.clk*, %struct.clk** %6, align 8
  %53 = call i32 @clk_put(%struct.clk* %52)
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = call i32 @pm_clk_destroy(%struct.device* %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %39
  br label %24

58:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %48, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.clk*) #1

declare dso_local i32 @pm_clk_create(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.clk* @of_clk_get(i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pm_clk_add_clk(%struct.device*, %struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @pm_clk_destroy(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
