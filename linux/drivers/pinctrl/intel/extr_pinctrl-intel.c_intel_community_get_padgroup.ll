; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_community_get_padgroup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_community_get_padgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_padgroup = type { i32, i32 }
%struct.intel_community = type { i32, %struct.intel_padgroup* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_padgroup* (%struct.intel_community*, i32)* @intel_community_get_padgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_padgroup* @intel_community_get_padgroup(%struct.intel_community* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_padgroup*, align 8
  %4 = alloca %struct.intel_community*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_padgroup*, align 8
  store %struct.intel_community* %0, %struct.intel_community** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.intel_community*, %struct.intel_community** %4, align 8
  %11 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %8
  %15 = load %struct.intel_community*, %struct.intel_community** %4, align 8
  %16 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %15, i32 0, i32 1
  %17 = load %struct.intel_padgroup*, %struct.intel_padgroup** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %17, i64 %19
  store %struct.intel_padgroup* %20, %struct.intel_padgroup** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %23 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp uge i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %29 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %32 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %30, %33
  %35 = icmp ult i32 %27, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  store %struct.intel_padgroup* %37, %struct.intel_padgroup** %3, align 8
  br label %43

38:                                               ; preds = %26, %14
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  store %struct.intel_padgroup* null, %struct.intel_padgroup** %3, align 8
  br label %43

43:                                               ; preds = %42, %36
  %44 = load %struct.intel_padgroup*, %struct.intel_padgroup** %3, align 8
  ret %struct.intel_padgroup* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
