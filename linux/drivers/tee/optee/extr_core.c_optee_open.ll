; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tee_context = type { %struct.optee_context_data*, %struct.tee_device* }
%struct.optee_context_data = type { i32, i32 }
%struct.tee_device = type { i32 }
%struct.optee = type { %struct.TYPE_2__, %struct.tee_device* }
%struct.TYPE_2__ = type { i32, %struct.tee_context* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tee_context*)* @optee_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optee_open(%struct.tee_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tee_context*, align 8
  %4 = alloca %struct.optee_context_data*, align 8
  %5 = alloca %struct.tee_device*, align 8
  %6 = alloca %struct.optee*, align 8
  %7 = alloca i32, align 4
  store %struct.tee_context* %0, %struct.tee_context** %3, align 8
  %8 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %9 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %8, i32 0, i32 1
  %10 = load %struct.tee_device*, %struct.tee_device** %9, align 8
  store %struct.tee_device* %10, %struct.tee_device** %5, align 8
  %11 = load %struct.tee_device*, %struct.tee_device** %5, align 8
  %12 = call %struct.optee* @tee_get_drvdata(%struct.tee_device* %11)
  store %struct.optee* %12, %struct.optee** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.optee_context_data* @kzalloc(i32 8, i32 %13)
  store %struct.optee_context_data* %14, %struct.optee_context_data** %4, align 8
  %15 = load %struct.optee_context_data*, %struct.optee_context_data** %4, align 8
  %16 = icmp ne %struct.optee_context_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %64

20:                                               ; preds = %1
  %21 = load %struct.tee_device*, %struct.tee_device** %5, align 8
  %22 = load %struct.optee*, %struct.optee** %6, align 8
  %23 = getelementptr inbounds %struct.optee, %struct.optee* %22, i32 0, i32 1
  %24 = load %struct.tee_device*, %struct.tee_device** %23, align 8
  %25 = icmp eq %struct.tee_device* %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  %27 = load %struct.optee*, %struct.optee** %6, align 8
  %28 = getelementptr inbounds %struct.optee, %struct.optee* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.optee*, %struct.optee** %6, align 8
  %32 = getelementptr inbounds %struct.optee, %struct.optee* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load %struct.tee_context*, %struct.tee_context** %33, align 8
  %35 = icmp ne %struct.tee_context* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  %37 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %38 = load %struct.optee*, %struct.optee** %6, align 8
  %39 = getelementptr inbounds %struct.optee, %struct.optee* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.tee_context* %37, %struct.tee_context** %40, align 8
  br label %41

41:                                               ; preds = %36, %26
  %42 = load %struct.optee*, %struct.optee** %6, align 8
  %43 = getelementptr inbounds %struct.optee, %struct.optee* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.optee_context_data*, %struct.optee_context_data** %4, align 8
  %50 = call i32 @kfree(%struct.optee_context_data* %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %20
  %55 = load %struct.optee_context_data*, %struct.optee_context_data** %4, align 8
  %56 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %55, i32 0, i32 1
  %57 = call i32 @mutex_init(i32* %56)
  %58 = load %struct.optee_context_data*, %struct.optee_context_data** %4, align 8
  %59 = getelementptr inbounds %struct.optee_context_data, %struct.optee_context_data* %58, i32 0, i32 0
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  %61 = load %struct.optee_context_data*, %struct.optee_context_data** %4, align 8
  %62 = load %struct.tee_context*, %struct.tee_context** %3, align 8
  %63 = getelementptr inbounds %struct.tee_context, %struct.tee_context* %62, i32 0, i32 0
  store %struct.optee_context_data* %61, %struct.optee_context_data** %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %54, %48, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.optee* @tee_get_drvdata(%struct.tee_device*) #1

declare dso_local %struct.optee_context_data* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.optee_context_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
