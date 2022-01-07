; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c___unmap_grant_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c___unmap_grant_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { %struct.TYPE_4__*, i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.gntab_unmap_queue_data = type { i32, i32*, i32*, %struct.TYPE_4__* }

@UNMAP_NOTIFY_CLEAR_BYTE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@use_ptemod = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unmap handle=%d st=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_grant_map*, i32, i32)* @__unmap_grant_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__unmap_grant_pages(%struct.gntdev_grant_map* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gntdev_grant_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gntab_unmap_queue_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.gntdev_grant_map* %0, %struct.gntdev_grant_map** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %14 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UNMAP_NOTIFY_CLEAR_BYTE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %3
  %21 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %22 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %20
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %30
  %37 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %38 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @page_to_pfn(i32 %43)
  %45 = call i64* @pfn_to_kaddr(i32 %44)
  store i64* %45, i64** %12, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %48 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %46, i64 %54
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @UNMAP_NOTIFY_CLEAR_BYTE, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %59 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, %57
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %36, %30, %20
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %66 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %69
  %71 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %10, i32 0, i32 3
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %71, align 8
  %72 = load i64, i64* @use_ptemod, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %76 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  br label %82

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %74
  %83 = phi i32* [ %80, %74 ], [ null, %81 ]
  %84 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %10, i32 0, i32 2
  store i32* %83, i32** %84, align 8
  %85 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %86 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %10, i32 0, i32 1
  store i32* %90, i32** %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds %struct.gntab_unmap_queue_data, %struct.gntab_unmap_queue_data* %10, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = call i32 @gnttab_unmap_refs_sync(%struct.gntab_unmap_queue_data* %10)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %155

99:                                               ; preds = %82
  store i32 0, i32* %8, align 4
  br label %100

100:                                              ; preds = %150, %99
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %100
  %105 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %106 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %104
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %104
  %120 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %121 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %131 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %129, i64 %139)
  %141 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %5, align 8
  %142 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %141, i32 0, i32 0
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i32 -1, i32* %149, align 8
  br label %150

150:                                              ; preds = %119
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %100

153:                                              ; preds = %100
  %154 = load i32, i32* %9, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %153, %97
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i64* @pfn_to_kaddr(i32) #1

declare dso_local i32 @page_to_pfn(i32) #1

declare dso_local i32 @gnttab_unmap_refs_sync(%struct.gntab_unmap_queue_data*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
