; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_from_256.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_rgb_from_256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rgb = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rgb*)* @rgb_from_256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb_from_256(i32 %0, %struct.rgb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rgb*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rgb* %1, %struct.rgb** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %29

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 170, i32 0
  %13 = load %struct.rgb*, %struct.rgb** %4, align 8
  %14 = getelementptr inbounds %struct.rgb, %struct.rgb* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 170, i32 0
  %20 = load %struct.rgb*, %struct.rgb** %4, align 8
  %21 = getelementptr inbounds %struct.rgb, %struct.rgb* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 170, i32 0
  %27 = load %struct.rgb*, %struct.rgb** %4, align 8
  %28 = getelementptr inbounds %struct.rgb, %struct.rgb* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  br label %92

29:                                               ; preds = %2
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 255, i32 85
  %38 = load %struct.rgb*, %struct.rgb** %4, align 8
  %39 = getelementptr inbounds %struct.rgb, %struct.rgb* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 2
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 255, i32 85
  %45 = load %struct.rgb*, %struct.rgb** %4, align 8
  %46 = getelementptr inbounds %struct.rgb, %struct.rgb* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 255, i32 85
  %52 = load %struct.rgb*, %struct.rgb** %4, align 8
  %53 = getelementptr inbounds %struct.rgb, %struct.rgb* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %91

54:                                               ; preds = %29
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 232
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 %58, 16
  %60 = sdiv i32 %59, 36
  %61 = mul nsw i32 %60, 85
  %62 = sdiv i32 %61, 2
  %63 = load %struct.rgb*, %struct.rgb** %4, align 8
  %64 = getelementptr inbounds %struct.rgb, %struct.rgb* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %65, 16
  %67 = sdiv i32 %66, 6
  %68 = srem i32 %67, 6
  %69 = mul nsw i32 %68, 85
  %70 = sdiv i32 %69, 2
  %71 = load %struct.rgb*, %struct.rgb** %4, align 8
  %72 = getelementptr inbounds %struct.rgb, %struct.rgb* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %3, align 4
  %74 = sub nsw i32 %73, 16
  %75 = srem i32 %74, 6
  %76 = mul nsw i32 %75, 85
  %77 = sdiv i32 %76, 2
  %78 = load %struct.rgb*, %struct.rgb** %4, align 8
  %79 = getelementptr inbounds %struct.rgb, %struct.rgb* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %90

80:                                               ; preds = %54
  %81 = load i32, i32* %3, align 4
  %82 = mul nsw i32 %81, 10
  %83 = sub nsw i32 %82, 2312
  %84 = load %struct.rgb*, %struct.rgb** %4, align 8
  %85 = getelementptr inbounds %struct.rgb, %struct.rgb* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rgb*, %struct.rgb** %4, align 8
  %87 = getelementptr inbounds %struct.rgb, %struct.rgb* %86, i32 0, i32 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.rgb*, %struct.rgb** %4, align 8
  %89 = getelementptr inbounds %struct.rgb, %struct.rgb* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %57
  br label %91

91:                                               ; preds = %90, %32
  br label %92

92:                                               ; preds = %91, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
