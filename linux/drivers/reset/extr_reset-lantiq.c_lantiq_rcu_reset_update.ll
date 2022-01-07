; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-lantiq.c_lantiq_rcu_reset_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }
%struct.lantiq_rcu_reset_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to set reset bit %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to %s bit %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"assert\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"deassert\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64, i32)* @lantiq_rcu_reset_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lantiq_rcu_reset_update(%struct.reset_controller_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reset_controller_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lantiq_rcu_reset_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %13 = call %struct.lantiq_rcu_reset_priv* @to_lantiq_rcu_reset_priv(%struct.reset_controller_dev* %12)
  store %struct.lantiq_rcu_reset_priv* %13, %struct.lantiq_rcu_reset_priv** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = and i64 %14, 31
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @BIT(i32 %20)
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ 0, %22 ]
  store i32 %24, i32* %10, align 4
  %25 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %8, align 8
  %26 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %8, align 8
  %29 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @regmap_update_bits(i32 %27, i32 %30, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %23
  %38 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %8, align 8
  %39 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %23
  %45 = load %struct.reset_controller_dev*, %struct.reset_controller_dev** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @lantiq_rcu_reset_status_timeout(%struct.reset_controller_dev* %45, i64 %46, i32 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.lantiq_rcu_reset_priv*, %struct.lantiq_rcu_reset_priv** %8, align 8
  %53 = getelementptr inbounds %struct.lantiq_rcu_reset_priv, %struct.lantiq_rcu_reset_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %37
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.lantiq_rcu_reset_priv* @to_lantiq_rcu_reset_priv(%struct.reset_controller_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @lantiq_rcu_reset_status_timeout(%struct.reset_controller_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
