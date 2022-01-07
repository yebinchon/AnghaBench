; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_algorithm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_ab8500_fg_algorithm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"[FG_DATA] %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @ab8500_fg_algorithm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_fg_algorithm(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %3 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %4 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %3, i32 0, i32 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %10 = call i32 @ab8500_fg_algorithm_calibrate(%struct.ab8500_fg* %9)
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %13 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %19 = call i32 @ab8500_fg_algorithm_charging(%struct.ab8500_fg* %18)
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %22 = call i32 @ab8500_fg_algorithm_discharging(%struct.ab8500_fg* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %24

24:                                               ; preds = %23, %8
  %25 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %26 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %29 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %33 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %37 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %41 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %40, i32 0, i32 9
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %45 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %49 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %53 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %57 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %56, i32 0, i32 9
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %61 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %64 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %67 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %70 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %73 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %77 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %80 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %83 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %86 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %35, i32 %39, i32 %43, i32 %47, i32 %51, i32 %55, i32 %59, i32 %62, i32 %65, i32 %68, i32 %71, i64 %75, i32 %78, i32 %81, i32 %84, i32 %87)
  ret void
}

declare dso_local i32 @ab8500_fg_algorithm_calibrate(%struct.ab8500_fg*) #1

declare dso_local i32 @ab8500_fg_algorithm_charging(%struct.ab8500_fg*) #1

declare dso_local i32 @ab8500_fg_algorithm_discharging(%struct.ab8500_fg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
