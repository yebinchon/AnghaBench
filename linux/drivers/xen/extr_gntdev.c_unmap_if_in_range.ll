; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_unmap_if_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_unmap_if_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"map %d+%d (%lx %lx), range %lx %lx, mrange %lx %lx\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_grant_map*, i64, i64, i32)* @unmap_if_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unmap_if_in_range(%struct.gntdev_grant_map* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gntdev_grant_map*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.gntdev_grant_map* %0, %struct.gntdev_grant_map** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @in_range(%struct.gntdev_grant_map* %13, i64 %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %79

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @EAGAIN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %28 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @max(i64 %26, i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %35 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @min(i64 %33, i32 %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %41 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %44 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %47 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %52 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i64 %50, i32 %55, i64 %56, i64 %57, i64 %58, i64 %59)
  %61 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %6, align 8
  %64 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %62, %67
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = lshr i64 %68, %69
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = lshr i64 %73, %74
  %76 = call i32 @unmap_grant_pages(%struct.gntdev_grant_map* %61, i64 %70, i64 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @WARN_ON(i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %25, %22, %18
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @in_range(%struct.gntdev_grant_map*, i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @unmap_grant_pages(%struct.gntdev_grant_map*, i64, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
