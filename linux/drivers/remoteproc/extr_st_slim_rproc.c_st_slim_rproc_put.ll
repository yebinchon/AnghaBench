; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_st_slim_rproc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_st_slim_rproc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_slim_rproc = type { i32, i64* }

@ST_SLIM_MAX_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @st_slim_rproc_put(%struct.st_slim_rproc* %0) #0 {
  %2 = alloca %struct.st_slim_rproc*, align 8
  %3 = alloca i32, align 4
  store %struct.st_slim_rproc* %0, %struct.st_slim_rproc** %2, align 8
  %4 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %5 = icmp ne %struct.st_slim_rproc* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %46

7:                                                ; preds = %1
  %8 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %9 = call i32 @slim_clk_disable(%struct.st_slim_rproc* %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ST_SLIM_MAX_CLK, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %16 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %14, %10
  %24 = phi i1 [ false, %10 ], [ %22, %14 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %27 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @clk_put(i64 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %23
  %38 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %39 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @rproc_del(i32 %40)
  %42 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %2, align 8
  %43 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rproc_free(i32 %44)
  br label %46

46:                                               ; preds = %37, %6
  ret void
}

declare dso_local i32 @slim_clk_disable(%struct.st_slim_rproc*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @rproc_del(i32) #1

declare dso_local i32 @rproc_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
