; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_remove_one_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_remove_one_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { %struct.TYPE_3__*, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"failed to remove domain '%s' : %d - state may be inconsistent\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pm_domain*)* @rockchip_pm_remove_one_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pm_remove_one_domain(%struct.rockchip_pm_domain* %0) #0 {
  %2 = alloca %struct.rockchip_pm_domain*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %2, align 8
  %4 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %5 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %4, i32 0, i32 3
  %6 = call i32 @pm_genpd_remove(%struct.TYPE_4__* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %11 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %16 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %9, %1
  %22 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %23 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %26 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_bulk_unprepare(i64 %24, i32 %27)
  %29 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %30 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %33 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_bulk_put(i64 %31, i32 %34)
  %36 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %37 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %42 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %44 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  ret void
}

declare dso_local i32 @pm_genpd_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_bulk_unprepare(i64, i32) #1

declare dso_local i32 @clk_bulk_put(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
