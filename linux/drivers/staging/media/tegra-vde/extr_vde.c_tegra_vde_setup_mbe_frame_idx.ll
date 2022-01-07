; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_mbe_frame_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_mbe_frame_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_vde*, i32, i32)* @tegra_vde_setup_mbe_frame_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_setup_mbe_frame_idx(%struct.tegra_vde* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_vde*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %14 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @tegra_vde_writel(%struct.tegra_vde* %13, i32 -805306368, i32 %16, i32 128)
  %18 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %19 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %20 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tegra_vde_writel(%struct.tegra_vde* %18, i32 -803209216, i32 %21, i32 128)
  %23 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %24 = call i32 @tegra_vde_wait_mbe(%struct.tegra_vde* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %4, align 4
  br label %99

29:                                               ; preds = %3
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %99

33:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %93, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %34
  %39 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 %40, 23
  %42 = or i32 -805306368, %41
  %43 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tegra_vde_writel(%struct.tegra_vde* %39, i32 %42, i32 %45, i32 128)
  %47 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 23
  %50 = or i32 -803209216, %49
  %51 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @tegra_vde_writel(%struct.tegra_vde* %47, i32 %50, i32 %53, i32 128)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = urem i32 %56, 4
  %58 = mul i32 6, %57
  %59 = shl i32 %55, %58
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %11, align 4
  %63 = urem i32 %62, 4
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %70, label %65

65:                                               ; preds = %38
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %65, %38
  store i32 -1073741824, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = lshr i32 %71, 2
  %73 = shl i32 %72, 24
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %9, align 4
  %79 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @tegra_vde_writel(%struct.tegra_vde* %79, i32 %80, i32 %83, i32 128)
  %85 = load %struct.tegra_vde*, %struct.tegra_vde** %5, align 8
  %86 = call i32 @tegra_vde_wait_mbe(%struct.tegra_vde* %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %70
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %99

91:                                               ; preds = %70
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %34

98:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %89, %32, %27
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @tegra_vde_writel(%struct.tegra_vde*, i32, i32, i32) #1

declare dso_local i32 @tegra_vde_wait_mbe(%struct.tegra_vde*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
