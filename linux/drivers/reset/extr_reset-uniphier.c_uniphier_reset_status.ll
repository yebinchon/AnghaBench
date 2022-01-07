; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.uniphier_reset_priv = type { i32, i32, %struct.uniphier_reset_data* }
%struct.uniphier_reset_data = type { i64, i32, i32, i32 }

@UNIPHIER_RESET_ID_END = common dso_local global i64 0, align 8
@UNIPHIER_RESET_ACTIVE_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"reset_id=%lu was not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @uniphier_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_reset_status(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uniphier_reset_priv*, align 8
  %7 = alloca %struct.uniphier_reset_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %4, align 8
  %12 = call %struct.uniphier_reset_priv* @to_uniphier_reset_priv(%struct.reset_controller_dev* %11)
  store %struct.uniphier_reset_priv* %12, %struct.uniphier_reset_priv** %6, align 8
  %13 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %6, align 8
  %14 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %13, i32 0, i32 2
  %15 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %14, align 8
  store %struct.uniphier_reset_data* %15, %struct.uniphier_reset_data** %7, align 8
  br label %16

16:                                               ; preds = %65, %2
  %17 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %18 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UNIPHIER_RESET_ID_END, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %24 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %65

29:                                               ; preds = %22
  %30 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %6, align 8
  %31 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %34 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regmap_read(i32 %32, i32 %35, i32* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %76

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %44 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %53 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @UNIPHIER_RESET_ACTIVE_LOW, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %58, %41
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %76

65:                                               ; preds = %28
  %66 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %67 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %66, i32 1
  store %struct.uniphier_reset_data* %67, %struct.uniphier_reset_data** %7, align 8
  br label %16

68:                                               ; preds = %16
  %69 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %6, align 8
  %70 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %68, %63, %39
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.uniphier_reset_priv* @to_uniphier_reset_priv(%struct.reset_controller_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
