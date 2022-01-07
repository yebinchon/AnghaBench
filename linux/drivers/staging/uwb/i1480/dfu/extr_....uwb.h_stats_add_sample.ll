; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_....uwb.h_stats_add_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_....uwb.h_stats_add_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stats*, i32)* @stats_add_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stats_add_sample(%struct.stats* %0, i32 %1) #0 {
  %3 = alloca %struct.stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stats* %0, %struct.stats** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.stats*, %struct.stats** %3, align 8
  %10 = getelementptr inbounds %struct.stats, %struct.stats* %9, i32 0, i32 3
  %11 = call i32 @atomic_read(i32* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 127, i32* %5, align 4
  store i32 -128, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.stats*, %struct.stats** %3, align 8
  %17 = getelementptr inbounds %struct.stats, %struct.stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.stats*, %struct.stats** %3, align 8
  %20 = getelementptr inbounds %struct.stats, %struct.stats* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.stats*, %struct.stats** %3, align 8
  %23 = getelementptr inbounds %struct.stats, %struct.stats* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %31
  br label %38

38:                                               ; preds = %37, %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.stats*, %struct.stats** %3, align 8
  %44 = getelementptr inbounds %struct.stats, %struct.stats* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.stats*, %struct.stats** %3, align 8
  %47 = getelementptr inbounds %struct.stats, %struct.stats* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.stats*, %struct.stats** %3, align 8
  %50 = getelementptr inbounds %struct.stats, %struct.stats* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.stats*, %struct.stats** %3, align 8
  %52 = getelementptr inbounds %struct.stats, %struct.stats* %51, i32 0, i32 3
  %53 = call i32 @atomic_add_return(i32 1, i32* %52)
  %54 = icmp sgt i32 %53, 255
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %56, 256
  %58 = load %struct.stats*, %struct.stats** %3, align 8
  %59 = getelementptr inbounds %struct.stats, %struct.stats* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.stats*, %struct.stats** %3, align 8
  %61 = getelementptr inbounds %struct.stats, %struct.stats* %60, i32 0, i32 3
  %62 = call i32 @atomic_set(i32* %61, i32 1)
  br label %63

63:                                               ; preds = %55, %38
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
