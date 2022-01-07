; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_register_adapter_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_airq.c_register_adapter_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_struct = type { i64, i32, i32, i32, i64, i32 }

@MAX_ISC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AIRQ_PTR_ALLOCATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rairq:%p\00", align 1
@airq_lists_lock = common dso_local global i32 0, align 4
@airq_lists = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_adapter_interrupt(%struct.airq_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airq_struct*, align 8
  %4 = alloca [32 x i8], align 16
  store %struct.airq_struct* %0, %struct.airq_struct** %3, align 8
  %5 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %6 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %11 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_ISC, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %69

18:                                               ; preds = %9
  %19 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %20 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @kzalloc(i32 1, i32 %24)
  %26 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %27 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %29 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %23
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %69

35:                                               ; preds = %23
  %36 = load i32, i32* @AIRQ_PTR_ALLOCATED, align 4
  %37 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %38 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %18
  %42 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %43 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %48 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %47, i32 0, i32 1
  store i32 255, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %51 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %52 = call i32 @snprintf(i8* %50, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.airq_struct* %51)
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %54 = call i32 @CIO_TRACE_EVENT(i32 4, i8* %53)
  %55 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %56 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @isc_register(i64 %57)
  %59 = call i32 @spin_lock(i32* @airq_lists_lock)
  %60 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %61 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %60, i32 0, i32 2
  %62 = load i32*, i32** @airq_lists, align 8
  %63 = load %struct.airq_struct*, %struct.airq_struct** %3, align 8
  %64 = getelementptr inbounds %struct.airq_struct, %struct.airq_struct* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @hlist_add_head_rcu(i32* %61, i32* %66)
  %68 = call i32 @spin_unlock(i32* @airq_lists_lock)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %49, %32, %15
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, %struct.airq_struct*) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @isc_register(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
