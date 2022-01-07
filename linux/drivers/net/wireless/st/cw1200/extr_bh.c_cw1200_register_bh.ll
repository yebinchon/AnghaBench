; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_register_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_bh.c_cw1200_register_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"cw1200_bh\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_CPU_INTENSIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cw1200_bh_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"[BH] register.\0A\00", align 1
@CW1200_BH_RESUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_register_bh(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %6 = load i32, i32* @WQ_HIGHPRI, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @WQ_CPU_INTENSIVE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i32 1)
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %65

20:                                               ; preds = %1
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 0
  %23 = load i32, i32* @cw1200_bh_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %27 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %26, i32 0, i32 11
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 10
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 9
  %34 = call i32 @atomic_set(i32* %33, i32 0)
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 8
  %37 = load i32, i32* @CW1200_BH_RESUMED, align 4
  %38 = call i32 @atomic_set(i32* %36, i32 %37)
  %39 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %40 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %39, i32 0, i32 7
  store i64 0, i64* %40, align 8
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %44 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 4
  store i64 0, i64* %46, align 8
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 3
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %51 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %50, i32 0, i32 2
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 0
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @WARN_ON(i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %20, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
