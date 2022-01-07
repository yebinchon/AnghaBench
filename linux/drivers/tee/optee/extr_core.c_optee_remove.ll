; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_core.c_optee_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee = type { %struct.TYPE_2__, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.optee*)* @optee_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @optee_remove(%struct.optee* %0) #0 {
  %2 = alloca %struct.optee*, align 8
  store %struct.optee* %0, %struct.optee** %2, align 8
  %3 = load %struct.optee*, %struct.optee** %2, align 8
  %4 = call i32 @optee_disable_shm_cache(%struct.optee* %3)
  %5 = load %struct.optee*, %struct.optee** %2, align 8
  %6 = getelementptr inbounds %struct.optee, %struct.optee* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @tee_device_unregister(i32 %7)
  %9 = load %struct.optee*, %struct.optee** %2, align 8
  %10 = getelementptr inbounds %struct.optee, %struct.optee* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tee_device_unregister(i32 %11)
  %13 = load %struct.optee*, %struct.optee** %2, align 8
  %14 = getelementptr inbounds %struct.optee, %struct.optee* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @tee_shm_pool_free(i32 %15)
  %17 = load %struct.optee*, %struct.optee** %2, align 8
  %18 = getelementptr inbounds %struct.optee, %struct.optee* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.optee*, %struct.optee** %2, align 8
  %23 = getelementptr inbounds %struct.optee, %struct.optee* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @memunmap(i64 %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.optee*, %struct.optee** %2, align 8
  %28 = getelementptr inbounds %struct.optee, %struct.optee* %27, i32 0, i32 2
  %29 = call i32 @optee_wait_queue_exit(i32* %28)
  %30 = load %struct.optee*, %struct.optee** %2, align 8
  %31 = getelementptr inbounds %struct.optee, %struct.optee* %30, i32 0, i32 1
  %32 = call i32 @optee_supp_uninit(i32* %31)
  %33 = load %struct.optee*, %struct.optee** %2, align 8
  %34 = getelementptr inbounds %struct.optee, %struct.optee* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @mutex_destroy(i32* %35)
  %37 = load %struct.optee*, %struct.optee** %2, align 8
  %38 = call i32 @kfree(%struct.optee* %37)
  ret void
}

declare dso_local i32 @optee_disable_shm_cache(%struct.optee*) #1

declare dso_local i32 @tee_device_unregister(i32) #1

declare dso_local i32 @tee_shm_pool_free(i32) #1

declare dso_local i32 @memunmap(i64) #1

declare dso_local i32 @optee_wait_queue_exit(i32*) #1

declare dso_local i32 @optee_supp_uninit(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.optee*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
