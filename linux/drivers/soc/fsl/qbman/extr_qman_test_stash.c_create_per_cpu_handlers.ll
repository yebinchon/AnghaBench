; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_create_per_cpu_handlers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman_test_stash.c_create_per_cpu_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp_handler = type { i32, i32, i32, i32 }
%struct.hp_cpu = type { i32, i32, i32 }

@hp_cpus = common dso_local global i32 0, align 4
@hp_lock = common dso_local global i32 0, align 4
@hp_cpu_list = common dso_local global i32 0, align 4
@hp_cpu_list_length = common dso_local global i32 0, align 4
@HP_PER_CPU = common dso_local global i32 0, align 4
@hp_handler_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"kmem_cache_alloc() failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@frame_dma = common dso_local global i32 0, align 4
@frame_ptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_per_cpu_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_per_cpu_handlers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hp_handler*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hp_cpu*, align 8
  %5 = call %struct.hp_cpu* @this_cpu_ptr(i32* @hp_cpus)
  store %struct.hp_cpu* %5, %struct.hp_cpu** %4, align 8
  %6 = call i32 (...) @smp_processor_id()
  %7 = load %struct.hp_cpu*, %struct.hp_cpu** %4, align 8
  %8 = getelementptr inbounds %struct.hp_cpu, %struct.hp_cpu* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = call i32 @spin_lock(i32* @hp_lock)
  %10 = load %struct.hp_cpu*, %struct.hp_cpu** %4, align 8
  %11 = getelementptr inbounds %struct.hp_cpu, %struct.hp_cpu* %10, i32 0, i32 2
  %12 = call i32 @list_add_tail(i32* %11, i32* @hp_cpu_list)
  %13 = load i32, i32* @hp_cpu_list_length, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @hp_cpu_list_length, align 4
  %15 = call i32 @spin_unlock(i32* @hp_lock)
  %16 = load %struct.hp_cpu*, %struct.hp_cpu** %4, align 8
  %17 = getelementptr inbounds %struct.hp_cpu, %struct.hp_cpu* %16, i32 0, i32 0
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %51, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @HP_PER_CPU, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i32, i32* @hp_handler_slab, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.hp_handler* @kmem_cache_alloc(i32 %24, i32 %25)
  store %struct.hp_handler* %26, %struct.hp_handler** %2, align 8
  %27 = load %struct.hp_handler*, %struct.hp_handler** %2, align 8
  %28 = icmp ne %struct.hp_handler* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = call i32 @pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @WARN_ON(i32 1)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %1, align 4
  br label %55

34:                                               ; preds = %23
  %35 = load %struct.hp_cpu*, %struct.hp_cpu** %4, align 8
  %36 = getelementptr inbounds %struct.hp_cpu, %struct.hp_cpu* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hp_handler*, %struct.hp_handler** %2, align 8
  %39 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @frame_dma, align 4
  %41 = load %struct.hp_handler*, %struct.hp_handler** %2, align 8
  %42 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @frame_ptr, align 4
  %44 = load %struct.hp_handler*, %struct.hp_handler** %2, align 8
  %45 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hp_handler*, %struct.hp_handler** %2, align 8
  %47 = getelementptr inbounds %struct.hp_handler, %struct.hp_handler* %46, i32 0, i32 0
  %48 = load %struct.hp_cpu*, %struct.hp_cpu** %4, align 8
  %49 = getelementptr inbounds %struct.hp_cpu, %struct.hp_cpu* %48, i32 0, i32 0
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %34
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %54, %29
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

declare dso_local %struct.hp_cpu* @this_cpu_ptr(i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.hp_handler* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @pr_crit(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
