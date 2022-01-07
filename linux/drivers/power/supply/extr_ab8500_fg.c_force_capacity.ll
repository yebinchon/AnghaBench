; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_force_capacity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_force_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Remaining cap %d can't be bigger than total %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ab8500_fg*)* @force_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_capacity(%struct.ab8500_fg* %0) #0 {
  %2 = alloca %struct.ab8500_fg*, align 8
  %3 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %2, align 8
  %4 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %5 = call i32 @ab8500_fg_clear_cap_samples(%struct.ab8500_fg* %4)
  %6 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %7 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %12 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %10, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %18 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %22 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %27 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %16, %1
  %31 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %32 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %33 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ab8500_fg_fill_cap_sample(%struct.ab8500_fg* %31, i32 %35)
  %37 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg* %37, i32 %38)
  %40 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %41 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %45 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 4
  %47 = load %struct.ab8500_fg*, %struct.ab8500_fg** %2, align 8
  %48 = call i32 @ab8500_fg_check_capacity_limits(%struct.ab8500_fg* %47, i32 1)
  ret void
}

declare dso_local i32 @ab8500_fg_clear_cap_samples(%struct.ab8500_fg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ab8500_fg_fill_cap_sample(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @ab8500_fg_convert_mah_to_permille(%struct.ab8500_fg*, i32) #1

declare dso_local i32 @ab8500_fg_check_capacity_limits(%struct.ab8500_fg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
