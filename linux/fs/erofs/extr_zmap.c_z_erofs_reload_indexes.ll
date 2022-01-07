; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_z_erofs_reload_indexes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zmap.c_z_erofs_reload_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_maprecorder = type { i32*, %struct.erofs_map_blocks*, %struct.TYPE_2__* }
%struct.erofs_map_blocks = type { %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_maprecorder*, i32)* @z_erofs_reload_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_reload_indexes(%struct.z_erofs_maprecorder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.z_erofs_maprecorder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.erofs_map_blocks*, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.z_erofs_maprecorder* %0, %struct.z_erofs_maprecorder** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %10 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %6, align 8
  %14 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %15 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %14, i32 0, i32 1
  %16 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %15, align 8
  store %struct.erofs_map_blocks* %16, %struct.erofs_map_blocks** %7, align 8
  %17 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %18 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %17, i32 0, i32 0
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %8, align 8
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %8, align 8
  %24 = getelementptr inbounds %struct.page, %struct.page* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %30 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.page*, %struct.page** %8, align 8
  %35 = call i8* @kmap_atomic(%struct.page* %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %38 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %28
  store i32 0, i32* %3, align 4
  br label %78

40:                                               ; preds = %22
  %41 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %42 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %47 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @kunmap_atomic(i32* %48)
  %50 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %51 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.page*, %struct.page** %8, align 8
  %54 = call i32 @put_page(%struct.page* %53)
  br label %55

55:                                               ; preds = %52, %2
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.page* @erofs_get_meta_page(%struct.super_block* %56, i32 %57)
  store %struct.page* %58, %struct.page** %8, align 8
  %59 = load %struct.page*, %struct.page** %8, align 8
  %60 = call i64 @IS_ERR(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %64 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %63, i32 0, i32 0
  store %struct.page* null, %struct.page** %64, align 8
  %65 = load %struct.page*, %struct.page** %8, align 8
  %66 = call i32 @PTR_ERR(%struct.page* %65)
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %55
  %68 = load %struct.page*, %struct.page** %8, align 8
  %69 = call i8* @kmap_atomic(%struct.page* %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.z_erofs_maprecorder*, %struct.z_erofs_maprecorder** %4, align 8
  %72 = getelementptr inbounds %struct.z_erofs_maprecorder, %struct.z_erofs_maprecorder* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = call i32 @unlock_page(%struct.page* %73)
  %75 = load %struct.page*, %struct.page** %8, align 8
  %76 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %77 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %76, i32 0, i32 0
  store %struct.page* %75, %struct.page** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %67, %62, %39
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @erofs_get_meta_page(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
