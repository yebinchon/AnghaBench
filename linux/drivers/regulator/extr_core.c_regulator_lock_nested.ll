; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_lock_nested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_lock_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i64, i32, i32 }
%struct.ww_acquire_ctx = type { i32 }

@regulator_nesting_mutex = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, %struct.ww_acquire_ctx*)* @regulator_lock_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regulator_lock_nested(%struct.regulator_dev* %0, %struct.ww_acquire_ctx* %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.ww_acquire_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store %struct.ww_acquire_ctx* %1, %struct.ww_acquire_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* @regulator_nesting_mutex)
  %8 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %4, align 8
  %9 = icmp ne %struct.ww_acquire_ctx* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %11, i32 0, i32 2
  %13 = call i32 @ww_mutex_trylock(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @current, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  br label %27

26:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = call i32 @mutex_unlock(i32* @regulator_nesting_mutex)
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 2
  %34 = load %struct.ww_acquire_ctx*, %struct.ww_acquire_ctx** %4, align 8
  %35 = call i32 @ww_mutex_lock(i32* %33, %struct.ww_acquire_ctx* %34)
  store i32 %35, i32* %6, align 4
  %36 = call i32 @mutex_lock(i32* @regulator_nesting_mutex)
  br label %37

37:                                               ; preds = %30, %27
  br label %39

38:                                               ; preds = %10
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EDEADLK, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* @current, align 8
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %42, %39
  %56 = call i32 @mutex_unlock(i32* @regulator_nesting_mutex)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ww_mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ww_mutex_lock(i32*, %struct.ww_acquire_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
