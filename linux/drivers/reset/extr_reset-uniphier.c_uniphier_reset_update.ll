; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.uniphier_reset_priv = type { i32, i32, %struct.uniphier_reset_data* }
%struct.uniphier_reset_data = type { i64, i32, i32, i32 }

@UNIPHIER_RESET_ID_END = common dso_local global i64 0, align 8
@UNIPHIER_RESET_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"reset_id=%lu was not handled\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @uniphier_reset_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_reset_update(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reset_controller_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uniphier_reset_priv*, align 8
  %9 = alloca %struct.uniphier_reset_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %13 = call %struct.uniphier_reset_priv* @to_uniphier_reset_priv(%struct.reset_controller_dev* %12)
  store %struct.uniphier_reset_priv* %13, %struct.uniphier_reset_priv** %8, align 8
  %14 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %8, align 8
  %15 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %14, i32 0, i32 2
  %16 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %15, align 8
  store %struct.uniphier_reset_data* %16, %struct.uniphier_reset_data** %9, align 8
  br label %17

17:                                               ; preds = %62, %3
  %18 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %19 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @UNIPHIER_RESET_ID_END, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %17
  %24 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %25 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %62

30:                                               ; preds = %23
  %31 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %32 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @BIT(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %11, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = xor i32 %40, -1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %37
  %43 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %44 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UNIPHIER_RESET_ACTIVE_LOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = xor i32 %50, -1
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %8, align 8
  %54 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %57 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @regmap_write_bits(i32 %55, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %73

62:                                               ; preds = %29
  %63 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %9, align 8
  %64 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %63, i32 1
  store %struct.uniphier_reset_data* %64, %struct.uniphier_reset_data** %9, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %8, align 8
  %67 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %52
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.uniphier_reset_priv* @to_uniphier_reset_priv(%struct.reset_controller_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
