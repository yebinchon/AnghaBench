; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pad_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_pad_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pinctrl = type { i32 }
%struct.intel_community = type { i32, i64 }
%struct.intel_padgroup = type { i32 }

@PAD_UNLOCKED = common dso_local global i32 0, align 4
@PAD_LOCKED_FULL = common dso_local global i32 0, align 4
@PAD_LOCKED = common dso_local global i32 0, align 4
@PAD_LOCKED_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pinctrl*, i32)* @intel_pad_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pad_locked(%struct.intel_pinctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_community*, align 8
  %7 = alloca %struct.intel_padgroup*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_pinctrl* %0, %struct.intel_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @PAD_UNLOCKED, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.intel_community* @intel_get_community(%struct.intel_pinctrl* %13, i32 %14)
  store %struct.intel_community* %15, %struct.intel_community** %6, align 8
  %16 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %17 = icmp ne %struct.intel_community* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @PAD_LOCKED_FULL, align 4
  store i32 %19, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %22 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @PAD_UNLOCKED, align 4
  store i32 %26, i32* %3, align 4
  br label %92

27:                                               ; preds = %20
  %28 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.intel_padgroup* @intel_community_get_padgroup(%struct.intel_community* %28, i32 %29)
  store %struct.intel_padgroup* %30, %struct.intel_padgroup** %7, align 8
  %31 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %32 = icmp ne %struct.intel_padgroup* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @PAD_LOCKED_FULL, align 4
  store i32 %34, i32* %3, align 4
  br label %92

35:                                               ; preds = %27
  %36 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @padgroup_offset(%struct.intel_padgroup* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %40 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 0
  %43 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %44 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 8
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %49 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %35
  %61 = load i32, i32* @PAD_LOCKED, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %60, %35
  %65 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %66 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 4
  %69 = load %struct.intel_padgroup*, %struct.intel_padgroup** %7, align 8
  %70 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, 8
  %73 = add nsw i32 %68, %72
  store i32 %73, i32* %8, align 4
  %74 = load %struct.intel_community*, %struct.intel_community** %6, align 8
  %75 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = call i32 @readl(i64 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %64
  %87 = load i32, i32* @PAD_LOCKED_TX, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %86, %64
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %33, %25, %18
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.intel_community* @intel_get_community(%struct.intel_pinctrl*, i32) #1

declare dso_local %struct.intel_padgroup* @intel_community_get_padgroup(%struct.intel_community*, i32) #1

declare dso_local i32 @padgroup_offset(%struct.intel_padgroup*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
