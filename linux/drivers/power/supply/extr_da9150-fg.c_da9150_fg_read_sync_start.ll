; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_read_sync_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-fg.c_da9150_fg_read_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_fg = type { i32, i32 }

@DA9150_QIF_SYNC = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_SIZE = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_RETRIES = common dso_local global i32 0, align 4
@DA9150_QIF_SYNC_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to perform QIF read sync!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9150_fg*)* @da9150_fg_read_sync_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9150_fg_read_sync_start(%struct.da9150_fg* %0) #0 {
  %2 = alloca %struct.da9150_fg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.da9150_fg* %0, %struct.da9150_fg** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %6 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %9 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %10 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %11 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %8, i32 %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %16 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %17 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %18 = call i32 @da9150_fg_write_attr(%struct.da9150_fg* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14, %1
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %30, %19
  %21 = load i64, i64* %4, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @DA9150_QIF_SYNC_RETRIES, align 4
  %27 = icmp slt i32 %24, %26
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi i1 [ false, %20 ], [ %27, %23 ]
  br i1 %29, label %30, label %39

30:                                               ; preds = %28
  %31 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %32 = load i32, i32* @DA9150_QIF_SYNC_TIMEOUT, align 4
  %33 = mul nsw i32 %32, 2
  %34 = call i32 @usleep_range(i32 %31, i32 %33)
  %35 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %36 = load i32, i32* @DA9150_QIF_SYNC, align 4
  %37 = load i32, i32* @DA9150_QIF_SYNC_SIZE, align 4
  %38 = call i64 @da9150_fg_read_attr(%struct.da9150_fg* %35, i32 %36, i32 %37)
  store i64 %38, i64* %4, align 8
  br label %20

39:                                               ; preds = %28
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.da9150_fg*, %struct.da9150_fg** %2, align 8
  %44 = getelementptr inbounds %struct.da9150_fg, %struct.da9150_fg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %42, %39
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @da9150_fg_read_attr(%struct.da9150_fg*, i32, i32) #1

declare dso_local i32 @da9150_fg_write_attr(%struct.da9150_fg*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
