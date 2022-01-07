; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/android/ion/extr_ion_page_pool.c_ion_page_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ion_page_pool = type { i32, i32, i32, i32, i32, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ion_page_pool* @ion_page_pool_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.ion_page_pool*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ion_page_pool*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ion_page_pool* @kmalloc(i32 40, i32 %7)
  store %struct.ion_page_pool* %8, %struct.ion_page_pool** %6, align 8
  %9 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %10 = icmp ne %struct.ion_page_pool* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ion_page_pool* null, %struct.ion_page_pool** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %14 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %16 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %18 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %17, i32 0, i32 5
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %21 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @__GFP_COMP, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %27 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %30 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %32 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %31, i32 0, i32 3
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  %35 = getelementptr inbounds %struct.ion_page_pool, %struct.ion_page_pool* %34, i32 0, i32 2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @plist_node_init(i32* %35, i32 %36)
  %38 = load %struct.ion_page_pool*, %struct.ion_page_pool** %6, align 8
  store %struct.ion_page_pool* %38, %struct.ion_page_pool** %3, align 8
  br label %39

39:                                               ; preds = %12, %11
  %40 = load %struct.ion_page_pool*, %struct.ion_page_pool** %3, align 8
  ret %struct.ion_page_pool* %40
}

declare dso_local %struct.ion_page_pool* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @plist_node_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
