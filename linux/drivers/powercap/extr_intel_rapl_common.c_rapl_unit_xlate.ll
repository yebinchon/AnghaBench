; ModuleID = '/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_unit_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/powercap/extr_intel_rapl_common.c_rapl_unit_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.rapl_package*, i32, i32)* }
%struct.rapl_package = type { i32, i32 }
%struct.rapl_domain = type { i32, %struct.rapl_package* }

@ENERGY_UNIT_SCALE = common dso_local global i32 0, align 4
@rapl_defaults = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rapl_domain*, i32, i32, i32)* @rapl_unit_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_unit_xlate(%struct.rapl_domain* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rapl_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rapl_package*, align 8
  %12 = alloca i32, align 4
  store %struct.rapl_domain* %0, %struct.rapl_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %13 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %14 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %13, i32 0, i32 1
  %15 = load %struct.rapl_package*, %struct.rapl_package** %14, align 8
  store %struct.rapl_package* %15, %struct.rapl_package** %11, align 8
  store i32 1, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %45 [
    i32 129, label %17
    i32 130, label %21
    i32 128, label %36
    i32 131, label %44
  ]

17:                                               ; preds = %4
  %18 = load %struct.rapl_package*, %struct.rapl_package** %11, align 8
  %19 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load i32, i32* @ENERGY_UNIT_SCALE, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %24 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.rapl_domain*, %struct.rapl_domain** %6, align 8
  %29 = getelementptr inbounds %struct.rapl_domain, %struct.rapl_domain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.rapl_package*, %struct.rapl_package** %11, align 8
  %33 = getelementptr inbounds %struct.rapl_package, %struct.rapl_package* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %47

36:                                               ; preds = %4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_defaults, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.rapl_package*, i32, i32)*, i32 (%struct.rapl_package*, i32, i32)** %38, align 8
  %40 = load %struct.rapl_package*, %struct.rapl_package** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 %39(%struct.rapl_package* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %4
  br label %45

45:                                               ; preds = %4, %44
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %5, align 4
  br label %63

47:                                               ; preds = %35, %17
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @div64_u64(i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %5, align 4
  br label %63

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @div64_u64(i32 %60, i32 %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %56, %50, %45, %36
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
