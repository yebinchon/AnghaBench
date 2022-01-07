; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_find_grant_ptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_find_grant_ptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { i32, i32, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GNTMAP_application_map = common dso_local global i32 0, align 4
@GNTMAP_contains_pte = common dso_local global i32 0, align 4
@XENFEAT_gnttab_map_avail_bits = common dso_local global i32 0, align 4
@_GNTMAP_guest_avail0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*)* @find_grant_ptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_grant_ptes(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gntdev_grant_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.gntdev_grant_map*
  store %struct.gntdev_grant_map* %13, %struct.gntdev_grant_map** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %16 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %14, %19
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = lshr i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %25 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GNTMAP_application_map, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GNTMAP_contains_pte, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %33 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp uge i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @arbitrary_virt_to_machine(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @XENFEAT_gnttab_map_avail_bits, align 4
  %44 = call i64 @xen_feature(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %3
  %47 = load i32, i32* @_GNTMAP_guest_avail0, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %3
  %52 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %53 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %61 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %60, i32 0, i32 3
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %69 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @gnttab_set_map_op(i32* %57, i32 %58, i32 %59, i32 %67, i32 %75)
  %77 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %7, align 8
  %78 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @gnttab_set_unmap_op(i32* %82, i32 %83, i32 %84, i32 -1)
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @arbitrary_virt_to_machine(i32*) #1

declare dso_local i64 @xen_feature(i32) #1

declare dso_local i32 @gnttab_set_map_op(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @gnttab_set_unmap_op(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
