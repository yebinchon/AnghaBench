; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_alloc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_gntdev.c_gntdev_alloc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_grant_map = type { i32, i32, i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32*, i32, i32, i8*, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.gntdev_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GNTDEV_DMA_FLAG_COHERENT = common dso_local global i32 0, align 4
@GNTDEV_DMA_FLAG_WC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gntdev_grant_map* @gntdev_alloc_map(%struct.gntdev_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gntdev_grant_map*, align 8
  %5 = alloca %struct.gntdev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gntdev_grant_map*, align 8
  %9 = alloca i32, align 4
  store %struct.gntdev_priv* %0, %struct.gntdev_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gntdev_grant_map* @kzalloc(i32 96, i32 %10)
  store %struct.gntdev_grant_map* %11, %struct.gntdev_grant_map** %8, align 8
  %12 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %13 = icmp eq %struct.gntdev_grant_map* null, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.gntdev_grant_map* null, %struct.gntdev_grant_map** %4, align 8
  br label %140

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %21 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %20, i32 0, i32 13
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kcalloc(i32 %22, i32 4, i32 %23)
  %25 = bitcast i8* %24 to %struct.TYPE_5__*
  %26 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %27 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %26, i32 0, i32 7
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  %32 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %33 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %32, i32 0, i32 6
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = bitcast i8* %36 to %struct.TYPE_7__*
  %38 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %39 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %38, i32 0, i32 5
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @kcalloc(i32 %40, i32 4, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_8__*
  %44 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %45 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %44, i32 0, i32 4
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %51 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %50, i32 0, i32 8
  store i32* %49, i32** %51, align 8
  %52 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %53 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %52, i32 0, i32 13
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* null, %54
  br i1 %55, label %81, label %56

56:                                               ; preds = %15
  %57 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %58 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %57, i32 0, i32 7
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = icmp eq %struct.TYPE_5__* null, %59
  br i1 %60, label %81, label %61

61:                                               ; preds = %56
  %62 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %63 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %62, i32 0, i32 6
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp eq %struct.TYPE_6__* null, %64
  br i1 %65, label %81, label %66

66:                                               ; preds = %61
  %67 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %68 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %67, i32 0, i32 5
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = icmp eq %struct.TYPE_7__* null, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %66
  %72 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %73 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = icmp eq %struct.TYPE_8__* null, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %78 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %77, i32 0, i32 8
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* null, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %71, %66, %61, %56, %15
  br label %137

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %85 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %84, i32 0, i32 8
  %86 = load i32*, i32** %85, align 8
  %87 = call i64 @gnttab_alloc_pages(i32 %83, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %137

90:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %124, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %97 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %96, i32 0, i32 7
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 4
  %103 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %104 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %103, i32 0, i32 6
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 -1, i32* %109, align 4
  %110 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %111 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %110, i32 0, i32 5
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 4
  %117 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %118 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %117, i32 0, i32 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 4
  br label %124

124:                                              ; preds = %95
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %91

127:                                              ; preds = %91
  %128 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %129 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %132 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %134 = getelementptr inbounds %struct.gntdev_grant_map, %struct.gntdev_grant_map* %133, i32 0, i32 2
  %135 = call i32 @refcount_set(i32* %134, i32 1)
  %136 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  store %struct.gntdev_grant_map* %136, %struct.gntdev_grant_map** %4, align 8
  br label %140

137:                                              ; preds = %89, %81
  %138 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %8, align 8
  %139 = call i32 @gntdev_free_map(%struct.gntdev_grant_map* %138)
  store %struct.gntdev_grant_map* null, %struct.gntdev_grant_map** %4, align 8
  br label %140

140:                                              ; preds = %137, %127, %14
  %141 = load %struct.gntdev_grant_map*, %struct.gntdev_grant_map** %4, align 8
  ret %struct.gntdev_grant_map* %141
}

declare dso_local %struct.gntdev_grant_map* @kzalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @gnttab_alloc_pages(i32, i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @gntdev_free_map(%struct.gntdev_grant_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
