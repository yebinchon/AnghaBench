; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_irq_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_irq_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lp8788_charger = type { i64, i32 }

@LP8788_CHG_IRQ = common dso_local global i8* null, align 8
@LP8788_PRSW_IRQ = common dso_local global i8* null, align 8
@LP8788_BATT_IRQ = common dso_local global i8* null, align 8
@lp8788_charger_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"irq setup failed: %s\0A\00", align 1
@LP8788_MAX_CHG_IRQS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid total number of irqs: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.lp8788_charger*)* @lp8788_irq_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_irq_register(%struct.platform_device* %0, %struct.lp8788_charger* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.lp8788_charger*, align 8
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.lp8788_charger* %1, %struct.lp8788_charger** %5, align 8
  %9 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %10 = load i8*, i8** @LP8788_CHG_IRQ, align 8
  store i8* %10, i8** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 1
  %12 = load i8*, i8** @LP8788_PRSW_IRQ, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %11, i64 1
  %14 = load i8*, i8** @LP8788_BATT_IRQ, align 8
  store i8* %14, i8** %13, align 8
  %15 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %16 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %15, i32 0, i32 1
  %17 = load i32, i32* @lp8788_charger_event, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %20 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %2
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i8** %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %21
  %27 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %28 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @lp8788_set_irqs(%struct.platform_device* %27, %struct.lp8788_charger* %28, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %51 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LP8788_MAX_CHG_IRQS, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load %struct.lp8788_charger*, %struct.lp8788_charger** %5, align 8
  %59 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %55, %36
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @lp8788_set_irqs(%struct.platform_device*, %struct.lp8788_charger*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
