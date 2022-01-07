; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_new_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_bman.c_bman_new_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bman_pool = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bman_pool* @bman_new_pool() #0 {
  %1 = alloca %struct.bman_pool*, align 8
  %2 = alloca %struct.bman_pool*, align 8
  %3 = alloca i32, align 4
  store %struct.bman_pool* null, %struct.bman_pool** %2, align 8
  %4 = call i64 @bm_alloc_bpid_range(i32* %3, i32 1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store %struct.bman_pool* null, %struct.bman_pool** %1, align 8
  br label %23

7:                                                ; preds = %0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bman_pool* @kmalloc(i32 4, i32 %8)
  store %struct.bman_pool* %9, %struct.bman_pool** %2, align 8
  %10 = load %struct.bman_pool*, %struct.bman_pool** %2, align 8
  %11 = icmp ne %struct.bman_pool* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  br label %18

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.bman_pool*, %struct.bman_pool** %2, align 8
  %16 = getelementptr inbounds %struct.bman_pool, %struct.bman_pool* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bman_pool*, %struct.bman_pool** %2, align 8
  store %struct.bman_pool* %17, %struct.bman_pool** %1, align 8
  br label %23

18:                                               ; preds = %12
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @bm_release_bpid(i32 %19)
  %21 = load %struct.bman_pool*, %struct.bman_pool** %2, align 8
  %22 = call i32 @kfree(%struct.bman_pool* %21)
  store %struct.bman_pool* null, %struct.bman_pool** %1, align 8
  br label %23

23:                                               ; preds = %18, %13, %6
  %24 = load %struct.bman_pool*, %struct.bman_pool** %1, align 8
  ret %struct.bman_pool* %24
}

declare dso_local i64 @bm_alloc_bpid_range(i32*, i32) #1

declare dso_local %struct.bman_pool* @kmalloc(i32, i32) #1

declare dso_local i32 @bm_release_bpid(i32) #1

declare dso_local i32 @kfree(%struct.bman_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
