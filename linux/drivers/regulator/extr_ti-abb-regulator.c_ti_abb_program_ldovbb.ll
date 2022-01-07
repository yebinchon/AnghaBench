; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ti-abb-regulator.c_ti_abb_program_ldovbb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ti-abb-regulator.c_ti_abb_program_ldovbb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ti_abb = type { i32, i32, i32 }
%struct.ti_abb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.ti_abb*, %struct.ti_abb_info*)* @ti_abb_program_ldovbb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_abb_program_ldovbb(%struct.device* %0, %struct.ti_abb* %1, %struct.ti_abb_info* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ti_abb*, align 8
  %6 = alloca %struct.ti_abb_info*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.ti_abb* %1, %struct.ti_abb** %5, align 8
  store %struct.ti_abb_info* %2, %struct.ti_abb_info** %6, align 8
  %8 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %9 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %13 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %16 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %23 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %41 [
    i32 128, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %3, %3
  %26 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %27 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ti_abb_info*, %struct.ti_abb_info** %6, align 8
  %32 = getelementptr inbounds %struct.ti_abb_info, %struct.ti_abb_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %35 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @__ffs(i32 %36)
  %38 = shl i32 %33, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %3, %25
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.ti_abb*, %struct.ti_abb** %5, align 8
  %44 = getelementptr inbounds %struct.ti_abb, %struct.ti_abb* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel(i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
