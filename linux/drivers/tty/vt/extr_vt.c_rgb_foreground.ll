; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_foreground.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_foreground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32 }
%struct.rgb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.rgb*)* @rgb_foreground to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_foreground(%struct.vc_data* %0, %struct.rgb* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.rgb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.rgb* %1, %struct.rgb** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.rgb*, %struct.rgb** %4, align 8
  %8 = getelementptr inbounds %struct.rgb, %struct.rgb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.rgb*, %struct.rgb** %4, align 8
  %11 = getelementptr inbounds %struct.rgb, %struct.rgb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rgb*, %struct.rgb** %4, align 8
  %14 = getelementptr inbounds %struct.rgb, %struct.rgb* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @max3(i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rgb*, %struct.rgb** %4, align 8
  %18 = getelementptr inbounds %struct.rgb, %struct.rgb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.rgb*, %struct.rgb** %4, align 8
  %28 = getelementptr inbounds %struct.rgb, %struct.rgb* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.rgb*, %struct.rgb** %4, align 8
  %38 = getelementptr inbounds %struct.rgb, %struct.rgb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 85
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  %53 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 0
  store i32 2, i32* %54, align 4
  br label %65

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 170
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 0
  store i32 2, i32* %60, align 4
  br label %64

61:                                               ; preds = %55
  %62 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  br label %65

65:                                               ; preds = %64, %52
  %66 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 240
  %70 = load i32, i32* %5, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %73 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @max3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
