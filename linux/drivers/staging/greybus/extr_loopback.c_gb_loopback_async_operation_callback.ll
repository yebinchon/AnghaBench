; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_operation_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_loopback.c_gb_loopback_async_operation_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i32 }
%struct.gb_loopback_async_operation = type { i32 (%struct.gb_loopback_async_operation*)*, %struct.gb_loopback*, i32 }
%struct.gb_loopback = type { i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"complete operation %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_operation*)* @gb_loopback_async_operation_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_loopback_async_operation_callback(%struct.gb_operation* %0) #0 {
  %2 = alloca %struct.gb_operation*, align 8
  %3 = alloca %struct.gb_loopback_async_operation*, align 8
  %4 = alloca %struct.gb_loopback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %2, align 8
  %7 = call i32 (...) @ktime_get()
  store i32 %7, i32* %5, align 4
  %8 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %9 = call i32 @gb_operation_result(%struct.gb_operation* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %11 = call %struct.gb_loopback_async_operation* @gb_operation_get_data(%struct.gb_operation* %10)
  store %struct.gb_loopback_async_operation* %11, %struct.gb_loopback_async_operation** %3, align 8
  %12 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %13 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %12, i32 0, i32 1
  %14 = load %struct.gb_loopback*, %struct.gb_loopback** %13, align 8
  store %struct.gb_loopback* %14, %struct.gb_loopback** %4, align 8
  %15 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %16 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %15, i32 0, i32 3
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %22 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %21, i32 0, i32 0
  %23 = load i32 (%struct.gb_loopback_async_operation*)*, i32 (%struct.gb_loopback_async_operation*)** %22, align 8
  %24 = icmp ne i32 (%struct.gb_loopback_async_operation*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %27 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %26, i32 0, i32 0
  %28 = load i32 (%struct.gb_loopback_async_operation*)*, i32 (%struct.gb_loopback_async_operation*)** %27, align 8
  %29 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %30 = call i32 %28(%struct.gb_loopback_async_operation* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %25, %20, %1
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %36 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @gb_loopback_calc_latency(i32 %37, i32 %38)
  %40 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %41 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  br label %57

42:                                               ; preds = %31
  %43 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %44 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %53 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %59 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @gb_loopback_calculate_stats(%struct.gb_loopback* %62, i32 %63)
  %65 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %66 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %65, i32 0, i32 3
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %69 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %75 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %79 = getelementptr inbounds %struct.gb_loopback_async_operation, %struct.gb_loopback_async_operation* %78, i32 0, i32 1
  %80 = load %struct.gb_loopback*, %struct.gb_loopback** %79, align 8
  %81 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %80, i32 0, i32 1
  %82 = call i32 @atomic_dec(i32* %81)
  %83 = load %struct.gb_loopback*, %struct.gb_loopback** %4, align 8
  %84 = getelementptr inbounds %struct.gb_loopback, %struct.gb_loopback* %83, i32 0, i32 0
  %85 = call i32 @wake_up(i32* %84)
  %86 = load %struct.gb_operation*, %struct.gb_operation** %2, align 8
  %87 = call i32 @gb_operation_put(%struct.gb_operation* %86)
  %88 = load %struct.gb_loopback_async_operation*, %struct.gb_loopback_async_operation** %3, align 8
  %89 = call i32 @kfree(%struct.gb_loopback_async_operation* %88)
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @gb_operation_result(%struct.gb_operation*) #1

declare dso_local %struct.gb_loopback_async_operation* @gb_operation_get_data(%struct.gb_operation*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_loopback_calc_latency(i32, i32) #1

declare dso_local i32 @gb_loopback_calculate_stats(%struct.gb_loopback*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @gb_operation_put(%struct.gb_operation*) #1

declare dso_local i32 @kfree(%struct.gb_loopback_async_operation*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
