; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rmobile-sysc.c___rmobile_pd_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rmobile-sysc.c___rmobile_pd_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmobile_pm_domain = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PSTR = common dso_local global i64 0, align 8
@SWUCR = common dso_local global i64 0, align 8
@PSTR_RETRIES = common dso_local global i32 0, align 4
@PSTR_DELAY_US = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Power on, 0x%08x -> PSTR = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rmobile_pm_domain*)* @__rmobile_pd_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rmobile_pd_power_up(%struct.rmobile_pm_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rmobile_pm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rmobile_pm_domain* %0, %struct.rmobile_pm_domain** %3, align 8
  %7 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %8 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BIT(i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %12 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PSTR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @__raw_readl(i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %79

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %25 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SWUCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @__raw_writel(i32 %23, i64 %28)
  %30 = load i32, i32* @PSTR_RETRIES, align 4
  %31 = mul nsw i32 2, %30
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %56, %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %37 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SWUCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @__raw_readl(i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %59

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @PSTR_RETRIES, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @PSTR_DELAY_US, align 4
  %52 = call i32 @udelay(i32 %51)
  br label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @cpu_relax()
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %5, align 4
  br label %32

59:                                               ; preds = %45, %32
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %67 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %3, align 8
  %72 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PSTR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @__raw_readl(i64 %75)
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %65, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
