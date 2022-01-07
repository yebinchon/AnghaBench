; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_frameid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_setup_frameid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_vde = type { i32 }
%struct.video_frame = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_vde*, %struct.video_frame*, i32, i32, i32)* @tegra_vde_setup_frameid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_vde_setup_frameid(%struct.tegra_vde* %0, %struct.video_frame* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tegra_vde*, align 8
  %7 = alloca %struct.video_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tegra_vde* %0, %struct.tegra_vde** %6, align 8
  store %struct.video_frame* %1, %struct.video_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %17 = icmp ne %struct.video_frame* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %20 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i32 [ %21, %18 ], [ 1826532608, %22 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %26 = icmp ne %struct.video_frame* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %29 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  br label %32

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 1826532608, %31 ]
  store i32 %33, i32* %12, align 4
  %34 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %35 = icmp ne %struct.video_frame* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %38 = getelementptr inbounds %struct.video_frame, %struct.video_frame* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 1826532608, %40 ]
  store i32 %42, i32* %13, align 4
  %43 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %44 = icmp ne %struct.video_frame* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  br label %51

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ %49, %45 ], [ 0, %50 ]
  store i32 %52, i32* %14, align 4
  %53 = load %struct.video_frame*, %struct.video_frame** %7, align 8
  %54 = icmp ne %struct.video_frame* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = ashr i32 %57, 1
  %59 = shl i32 %58, 6
  %60 = or i32 %59, 1
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %55
  %63 = phi i32 [ %60, %55 ], [ 0, %61 ]
  store i32 %63, i32* %15, align 4
  %64 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 8
  %67 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %68 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = mul i32 %70, 4
  %72 = add i32 0, %71
  %73 = call i32 @tegra_vde_writel(%struct.tegra_vde* %64, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = ashr i32 %75, 8
  %77 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = mul i32 %80, 4
  %82 = add i32 256, %81
  %83 = call i32 @tegra_vde_writel(%struct.tegra_vde* %74, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = ashr i32 %85, 8
  %87 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %88 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul i32 %90, 4
  %92 = add i32 384, %91
  %93 = call i32 @tegra_vde_writel(%struct.tegra_vde* %84, i32 %86, i32 %89, i32 %92)
  %94 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %97 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = mul i32 %99, 4
  %101 = add i32 128, %100
  %102 = call i32 @tegra_vde_writel(%struct.tegra_vde* %94, i32 %95, i32 %98, i32 %101)
  %103 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.tegra_vde*, %struct.tegra_vde** %6, align 8
  %106 = getelementptr inbounds %struct.tegra_vde, %struct.tegra_vde* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = mul i32 %108, 4
  %110 = add i32 640, %109
  %111 = call i32 @tegra_vde_writel(%struct.tegra_vde* %103, i32 %104, i32 %107, i32 %110)
  ret void
}

declare dso_local i32 @tegra_vde_writel(%struct.tegra_vde*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
