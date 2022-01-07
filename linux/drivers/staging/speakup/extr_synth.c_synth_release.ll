; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_synth_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c_synth_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (...)*, %struct.var_t*, %struct.TYPE_4__, i64, i32 }
%struct.var_t = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@synth = common dso_local global %struct.TYPE_5__* null, align 8
@speakup_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [20 x i8] c"releasing synth %s\0A\00", align 1
@thread_timer = common dso_local global i32 0, align 4
@speakup_kobj = common dso_local global i32 0, align 4
@MAXVARS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synth_release() #0 {
  %1 = alloca %struct.var_t*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %4 = icmp ne %struct.TYPE_5__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %51

6:                                                ; preds = %0
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = call i32 @del_timer(i32* @thread_timer)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i32, i32* @speakup_kobj, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = call i32 @sysfs_remove_group(i32 %24, %struct.TYPE_4__* %26)
  br label %28

28:                                               ; preds = %23, %6
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load %struct.var_t*, %struct.var_t** %30, align 8
  store %struct.var_t* %31, %struct.var_t** %1, align 8
  br label %32

32:                                               ; preds = %43, %28
  %33 = load %struct.var_t*, %struct.var_t** %1, align 8
  %34 = getelementptr inbounds %struct.var_t, %struct.var_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MAXVARS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.var_t*, %struct.var_t** %1, align 8
  %40 = getelementptr inbounds %struct.var_t, %struct.var_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @speakup_unregister_var(i64 %41)
  br label %43

43:                                               ; preds = %38
  %44 = load %struct.var_t*, %struct.var_t** %1, align 8
  %45 = getelementptr inbounds %struct.var_t, %struct.var_t* %44, i32 1
  store %struct.var_t* %45, %struct.var_t** %1, align 8
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @synth, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32 (...)*, i32 (...)** %48, align 8
  %50 = call i32 (...) %49()
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @synth, align 8
  br label %51

51:                                               ; preds = %46, %5
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sysfs_remove_group(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @speakup_unregister_var(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
