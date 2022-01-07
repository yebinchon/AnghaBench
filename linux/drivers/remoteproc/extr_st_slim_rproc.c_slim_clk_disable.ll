; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_slim_rproc = type { i64* }

@ST_SLIM_MAX_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_slim_rproc*)* @slim_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slim_clk_disable(%struct.st_slim_rproc* %0) #0 {
  %2 = alloca %struct.st_slim_rproc*, align 8
  %3 = alloca i32, align 4
  store %struct.st_slim_rproc* %0, %struct.st_slim_rproc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %28, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ST_SLIM_MAX_CLK, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %10 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %8, %4
  %18 = phi i1 [ false, %4 ], [ %16, %8 ]
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %21 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i64 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %4

31:                                               ; preds = %17
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
