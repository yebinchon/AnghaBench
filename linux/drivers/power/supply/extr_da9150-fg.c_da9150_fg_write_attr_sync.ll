; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_write_attr_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_write_attr_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32, i32 }

@DA9150_QIF_SYNC = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_RETRIES = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout waiting for existing QIF sync!\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error performing QIF sync write for code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9150_fg*, i32, i32, i64)* @da9150_fg_write_attr_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9150_fg_write_attr_sync(%struct.da9150_fg* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.da9150_fg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.da9150_fg* %0, %struct.da9150_fg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %13 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %16 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %17 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %18 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %15, i32 %16, i32 %17)
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %29, %4
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @DA9150_QIF_SYNC_RETRIES, align 4
  %26 = icmp slt i32 %23, %25
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i1 [ false, %19 ], [ %26, %22 ]
  br i1 %28, label %29, label %38

29:                                               ; preds = %27
  %30 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %31 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %32 = mul nsw i32 %31, 2
  %33 = call i32 @usleep_range(i32 %30, i32 %32)
  %34 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %35 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %36 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %37 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %34, i32 %35, i32 %36)
  store i64 %37, i64* %10, align 8
  br label %19

38:                                               ; preds = %27
  %39 = load i64, i64* %10, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %43 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %47 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %46, i32 0, i32 1
  %48 = call i32 @mutex_unlock(i32* %47)
  br label %90

49:                                               ; preds = %38
  %50 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @da9150_fg_write_attr(%struct.da9150_fg* %50, i32 %51, i32 %52, i64 %53)
  store i32 0, i32* %9, align 4
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %67, %49
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* @DA9150_QIF_SYNC_RETRIES, align 4
  %64 = icmp slt i32 %61, %63
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br i1 %66, label %67, label %76

67:                                               ; preds = %65
  %68 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %69 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %70 = mul nsw i32 %69, 2
  %71 = call i32 @usleep_range(i32 %68, i32 %70)
  %72 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %73 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %74 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %75 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %72, i32 %73, i32 %74)
  store i64 %75, i64* %10, align 8
  br label %56

76:                                               ; preds = %65
  %77 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %78 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = add nsw i64 %81, 1
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.da9150_fg*, %struct.da9150_fg** %5, align 8
  %86 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %87, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %41, %84, %76
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @da9150_fg_read_attr(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @da9150_fg_write_attr(%struct.da9150_fg*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
