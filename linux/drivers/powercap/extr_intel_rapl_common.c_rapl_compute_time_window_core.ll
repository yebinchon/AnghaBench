; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_compute_time_window_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_compute_time_window_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rapl_package = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_package*, i32, i32)* @rapl_compute_time_window_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_compute_time_window_core(%struct.rapl_package* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rapl_package*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rapl_package* %0, %struct.rapl_package** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 96
  %14 = ashr i32 %13, 5
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 31
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 4, %19
  %21 = mul nsw i32 %18, %20
  %22 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %23 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %5, align 4
  br label %49

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.rapl_package*, %struct.rapl_package** %4, align 8
  %30 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @do_div(i32 %28, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ilog2(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %35, %37
  %39 = mul nsw i32 4, %38
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 1, %40
  %42 = call i32 @div64_u64(i32 %39, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 31
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 3
  %47 = shl i32 %46, 5
  %48 = or i32 %44, %47
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %27, %11
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
