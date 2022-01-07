; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_clk_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_slim_rproc.c_slim_clk_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_slim_rproc = type { i32** }
%struct.device = type { i32 }

@ST_SLIM_MAX_CLK = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_slim_rproc*, %struct.device*)* @slim_clk_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_clk_get(%struct.st_slim_rproc* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_slim_rproc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.st_slim_rproc* %0, %struct.st_slim_rproc** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %55, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @ST_SLIM_MAX_CLK, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @of_clk_get(i32 %15, i32 %16)
  %18 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %19 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  store i32* %17, i32** %23, align 8
  %24 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %25 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %12
  %34 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %35 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @PTR_ERR(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @EPROBE_DEFER, align 4
  %44 = sub nsw i32 0, %43
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %59

47:                                               ; preds = %33
  %48 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %49 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  br label %58

54:                                               ; preds = %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %8

58:                                               ; preds = %47, %8
  store i32 0, i32* %3, align 4
  br label %75

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.st_slim_rproc*, %struct.st_slim_rproc** %4, align 8
  %66 = getelementptr inbounds %struct.st_slim_rproc, %struct.st_slim_rproc* %65, i32 0, i32 0
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @clk_put(i32* %71)
  br label %60

73:                                               ; preds = %60
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %58
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32* @of_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @clk_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
