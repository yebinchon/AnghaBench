; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_free_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_free_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { i32, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, %struct.gntdev_grant_map*, i32, i32, i64, i32 }

@GNTDEV_DMA_FLAG_COHERENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gntdev_grant_map*)* @gntdev_free_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gntdev_free_map(%struct.gntdev_grant_map* %0) #0 {
  %2 = alloca %struct.gntdev_grant_map*, align 8
  store %struct.gntdev_grant_map* %0, %struct.gntdev_grant_map** %2, align 8
  %3 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %4 = icmp eq %struct.gntdev_grant_map* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %46

6:                                                ; preds = %1
  %7 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %8 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %7, i32 0, i32 6
  %9 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %10 = icmp ne %struct.gntdev_grant_map* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %13 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %16 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %15, i32 0, i32 6
  %17 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %16, align 8
  %18 = call i32 @gnttab_free_pages(i32 %14, %struct.gntdev_grant_map* %17)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %21 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %20, i32 0, i32 6
  %22 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %21, align 8
  %23 = call i32 @kfree(%struct.gntdev_grant_map* %22)
  %24 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %25 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %24, i32 0, i32 5
  %26 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %25, align 8
  %27 = call i32 @kfree(%struct.gntdev_grant_map* %26)
  %28 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %29 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %28, i32 0, i32 4
  %30 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %29, align 8
  %31 = call i32 @kfree(%struct.gntdev_grant_map* %30)
  %32 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %33 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %32, i32 0, i32 3
  %34 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %33, align 8
  %35 = call i32 @kfree(%struct.gntdev_grant_map* %34)
  %36 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %37 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %36, i32 0, i32 2
  %38 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %37, align 8
  %39 = call i32 @kfree(%struct.gntdev_grant_map* %38)
  %40 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %41 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %40, i32 0, i32 1
  %42 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %41, align 8
  %43 = call i32 @kfree(%struct.gntdev_grant_map* %42)
  %44 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %2, align 8
  %45 = call i32 @kfree(%struct.gntdev_grant_map* %44)
  br label %46

46:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @gnttab_free_pages(i32, %struct.gntdev_grant_map*) #1

declare dso_local i32 @kfree(%struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
