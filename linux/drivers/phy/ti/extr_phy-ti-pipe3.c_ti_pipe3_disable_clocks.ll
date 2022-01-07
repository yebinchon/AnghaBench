; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_disable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_disable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_pipe3*)* @ti_pipe3_disable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_pipe3_disable_clocks(%struct.ti_pipe3* %0) #0 {
  %2 = alloca %struct.ti_pipe3*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %2, align 8
  %3 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %4 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @IS_ERR(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %10 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_disable_unprepare(i32 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %15 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @IS_ERR(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  %20 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %21 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_disable_unprepare(i32 %22)
  %24 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %25 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %30 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  %33 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %34 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %19
  br label %36

36:                                               ; preds = %35, %13
  %37 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %38 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IS_ERR(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.ti_pipe3*, %struct.ti_pipe3** %2, align 8
  %44 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_disable_unprepare(i32 %45)
  br label %47

47:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
