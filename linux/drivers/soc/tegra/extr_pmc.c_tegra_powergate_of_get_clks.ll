; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_of_get_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_of_get_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_powergate = type { i32, i32* }
%struct.device_node = type { i32 }
%struct.clk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_powergate*, %struct.device_node*)* @tegra_powergate_of_get_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_powergate_of_get_clks(%struct.tegra_powergate* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_powergate*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_powergate* %0, %struct.tegra_powergate** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 @of_clk_get_parent_count(%struct.device_node* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kcalloc(i32 %18, i32 8, i32 %19)
  %21 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %91

30:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %64, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %31
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @of_clk_get(%struct.device_node* %36, i32 %37)
  %39 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @IS_ERR(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %35
  %55 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %31

67:                                               ; preds = %31
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %91

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @clk_put(i32 %83)
  br label %72

85:                                               ; preds = %72
  %86 = load %struct.tegra_powergate*, %struct.tegra_powergate** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %67, %27, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @of_clk_get_parent_count(%struct.device_node*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_clk_get(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
