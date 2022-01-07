; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_unregister_adapter_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_unregister_adapter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_struct = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"urairq:%p\00", align 1
@airq_lists_lock = common dso_local global i32 0, align 4
@AIRQ_PTR_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_adapter_interrupt(%struct.airq_struct* %0) #0 {
  %2 = alloca %struct.airq_struct*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct.airq_struct* %0, %struct.airq_struct** %2, align 8
  %4 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %5 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %4, i32 0, i32 3
  %6 = call i64 @hlist_unhashed(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %11 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %12 = call i32 @snprintf(i8* %10, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.airq_struct* %11)
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %14 = call i32 @CIO_TRACE_EVENT(i32 4, i8* %13)
  %15 = call i32 @spin_lock(i32* @airq_lists_lock)
  %16 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %17 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %16, i32 0, i32 3
  %18 = call i32 @hlist_del_rcu(i32* %17)
  %19 = call i32 @spin_unlock(i32* @airq_lists_lock)
  %20 = call i32 (...) @synchronize_rcu()
  %21 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %22 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @isc_unregister(i32 %23)
  %25 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %26 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AIRQ_PTR_ALLOCATED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %9
  %32 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %33 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %37 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load i32, i32* @AIRQ_PTR_ALLOCATED, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.airq_struct*, %struct.airq_struct** %2, align 8
  %41 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %8, %31, %9
  ret void
}

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.airq_struct*) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @isc_unregister(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
