; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_of_get_resets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_of_get_resets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_powergate = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"failed to get device resets: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to acquire resets: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_powergate*, %struct.device_node*, i32)* @tegra_powergate_of_get_resets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_powergate_of_get_resets(%struct.tegra_powergate* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_powergate*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_powergate* %0, %struct.tegra_powergate** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_reset_control_array_get_exclusive_released(%struct.device_node* %15)
  %17 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %20 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.device*, %struct.device** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %3
  %34 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reset_control_acquire(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %65

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @reset_control_assert(i32 %49)
  store i32 %50, i32* %9, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @reset_control_deassert(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %65

59:                                               ; preds = %51
  %60 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @reset_control_release(i32 %62)
  br label %64

64:                                               ; preds = %59, %46
  br label %65

65:                                               ; preds = %64, %58, %40
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @reset_control_release(i32 %71)
  %73 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @reset_control_put(i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %24
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @of_reset_control_array_get_exclusive_released(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @reset_control_acquire(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @reset_control_release(i32) #1

declare dso_local i32 @reset_control_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
