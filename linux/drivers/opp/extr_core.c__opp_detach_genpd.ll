; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_detach_genpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__opp_detach_genpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_table = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.opp_table*)* @_opp_detach_genpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_opp_detach_genpd(%struct.opp_table* %0) #0 {
  %2 = alloca %struct.opp_table*, align 8
  %3 = alloca i32, align 4
  store %struct.opp_table* %0, %struct.opp_table** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %35, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %7 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %12 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %35

20:                                               ; preds = %10
  %21 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %22 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dev_pm_domain_detach(i32* %27, i32 0)
  %29 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %30 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %20, %19
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %4

38:                                               ; preds = %4
  %39 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %40 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = call i32 @kfree(i32** %41)
  %43 = load %struct.opp_table*, %struct.opp_table** %2, align 8
  %44 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %43, i32 0, i32 1
  store i32** null, i32*** %44, align 8
  ret void
}

declare dso_local i32 @dev_pm_domain_detach(i32*, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
