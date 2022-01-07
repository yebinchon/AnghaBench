; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_st_remoteproc.c_st_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.st_rproc* }
%struct.st_rproc = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to assert S/W Reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to assert Power Reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @st_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.st_rproc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %6 = load %struct.rproc*, %struct.rproc** %2, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load %struct.st_rproc*, %struct.st_rproc** %7, align 8
  store %struct.st_rproc* %8, %struct.st_rproc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.st_rproc*, %struct.st_rproc** %3, align 8
  %10 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.st_rproc*, %struct.st_rproc** %3, align 8
  %17 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @reset_control_assert(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.rproc*, %struct.rproc** %2, align 8
  %24 = getelementptr inbounds %struct.rproc, %struct.rproc* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %15
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.st_rproc*, %struct.st_rproc** %3, align 8
  %29 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.st_rproc*, %struct.st_rproc** %3, align 8
  %36 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @reset_control_assert(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.rproc*, %struct.rproc** %2, align 8
  %43 = getelementptr inbounds %struct.rproc, %struct.rproc* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.st_rproc*, %struct.st_rproc** %3, align 8
  %48 = getelementptr inbounds %struct.st_rproc, %struct.st_rproc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @clk_disable(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ %51, %53 ], [ %55, %54 ]
  ret i32 %57
}

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
