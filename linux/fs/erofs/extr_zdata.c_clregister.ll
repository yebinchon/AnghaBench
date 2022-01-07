; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_clregister.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_clregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_collection = type { i32, i32 }
%struct.z_erofs_collector = type { %struct.z_erofs_collection*, %struct.z_erofs_pcluster*, i32****, %struct.z_erofs_pcluster*, i32 }
%struct.z_erofs_pcluster = type { i32, i32, i32***, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.erofs_map_blocks = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@pcluster_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@Z_EROFS_PCLUSTER_LENGTH_BIT = common dso_local global i32 0, align 4
@EROFS_MAP_FULL_MAPPED = common dso_local global i32 0, align 4
@Z_EROFS_PCLUSTER_FULL_LENGTH = common dso_local global i32 0, align 4
@EROFS_MAP_ZIPPED = common dso_local global i32 0, align 4
@Z_EROFS_COMPRESSION_LZ4 = common dso_local global i32 0, align 4
@Z_EROFS_COMPRESSION_SHIFTED = common dso_local global i32 0, align 4
@COLLECT_PRIMARY_FOLLOWED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@Z_EROFS_PCLUSTER_TAIL = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.z_erofs_collection* (%struct.z_erofs_collector*, %struct.inode*, %struct.erofs_map_blocks*)* @clregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.z_erofs_collection* @clregister(%struct.z_erofs_collector* %0, %struct.inode* %1, %struct.erofs_map_blocks* %2) #0 {
  %4 = alloca %struct.z_erofs_collection*, align 8
  %5 = alloca %struct.z_erofs_collector*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.erofs_map_blocks*, align 8
  %8 = alloca %struct.z_erofs_pcluster*, align 8
  %9 = alloca %struct.z_erofs_collection*, align 8
  %10 = alloca i32, align 4
  store %struct.z_erofs_collector* %0, %struct.z_erofs_collector** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.erofs_map_blocks* %2, %struct.erofs_map_blocks** %7, align 8
  %11 = load i32, i32* @pcluster_cachep, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.z_erofs_pcluster* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.z_erofs_pcluster* %13, %struct.z_erofs_pcluster** %8, align 8
  %14 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %15 = icmp ne %struct.z_erofs_pcluster* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.z_erofs_collection* @ERR_PTR(i32 %18)
  store %struct.z_erofs_collection* %19, %struct.z_erofs_collection** %4, align 8
  br label %141

20:                                               ; preds = %3
  %21 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %22 = call i32 @z_erofs_pcluster_init_always(%struct.z_erofs_pcluster* %21)
  %23 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %24 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %29 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %32 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @Z_EROFS_PCLUSTER_LENGTH_BIT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %37 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @EROFS_MAP_FULL_MAPPED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %20
  %43 = load i32, i32* @Z_EROFS_PCLUSTER_FULL_LENGTH, align 4
  br label %45

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = or i32 %35, %46
  %48 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %49 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %51 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EROFS_MAP_ZIPPED, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* @Z_EROFS_COMPRESSION_LZ4, align 4
  %58 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %59 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load i32, i32* @Z_EROFS_COMPRESSION_SHIFTED, align 4
  %62 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %63 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call %struct.TYPE_4__* @EROFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %72 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %75 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %79 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %78, i32 0, i32 2
  %80 = load i32****, i32***** %79, align 8
  %81 = bitcast i32**** %80 to i32***
  %82 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %83 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %82, i32 0, i32 2
  store i32*** %81, i32**** %83, align 8
  %84 = load i32, i32* @COLLECT_PRIMARY_FOLLOWED, align 4
  %85 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %86 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %88 = call %struct.z_erofs_collection* @z_erofs_primarycollection(%struct.z_erofs_pcluster* %87)
  store %struct.z_erofs_collection* %88, %struct.z_erofs_collection** %9, align 8
  %89 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %90 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PAGE_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %9, align 8
  %96 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %9, align 8
  %98 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %97, i32 0, i32 1
  %99 = call i32 @mutex_trylock(i32* %98)
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %104 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %103, i32 0, i32 3
  %105 = call i32 @erofs_register_workgroup(i32 %102, %struct.TYPE_3__* %104, i32 0)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %64
  %109 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %9, align 8
  %110 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* @pcluster_cachep, align 4
  %113 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %114 = call i32 @kmem_cache_free(i32 %112, %struct.z_erofs_pcluster* %113)
  %115 = load i32, i32* @EAGAIN, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.z_erofs_collection* @ERR_PTR(i32 %116)
  store %struct.z_erofs_collection* %117, %struct.z_erofs_collection** %4, align 8
  br label %141

118:                                              ; preds = %64
  %119 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %120 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %119, i32 0, i32 2
  %121 = load i32****, i32***** %120, align 8
  %122 = load i32**, i32*** @Z_EROFS_PCLUSTER_TAIL, align 8
  %123 = bitcast i32** %122 to i32****
  %124 = icmp eq i32**** %121, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %127 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %128 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %127, i32 0, i32 3
  store %struct.z_erofs_pcluster* %126, %struct.z_erofs_pcluster** %128, align 8
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %131 = getelementptr inbounds %struct.z_erofs_pcluster, %struct.z_erofs_pcluster* %130, i32 0, i32 2
  %132 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %133 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %132, i32 0, i32 2
  store i32**** %131, i32***** %133, align 8
  %134 = load %struct.z_erofs_pcluster*, %struct.z_erofs_pcluster** %8, align 8
  %135 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %136 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %135, i32 0, i32 1
  store %struct.z_erofs_pcluster* %134, %struct.z_erofs_pcluster** %136, align 8
  %137 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %9, align 8
  %138 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %139 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %138, i32 0, i32 0
  store %struct.z_erofs_collection* %137, %struct.z_erofs_collection** %139, align 8
  %140 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %9, align 8
  store %struct.z_erofs_collection* %140, %struct.z_erofs_collection** %4, align 8
  br label %141

141:                                              ; preds = %129, %108, %16
  %142 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %4, align 8
  ret %struct.z_erofs_collection* %142
}

declare dso_local %struct.z_erofs_pcluster* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.z_erofs_collection* @ERR_PTR(i32) #1

declare dso_local i32 @z_erofs_pcluster_init_always(%struct.z_erofs_pcluster*) #1

declare dso_local %struct.TYPE_4__* @EROFS_I(%struct.inode*) #1

declare dso_local %struct.z_erofs_collection* @z_erofs_primarycollection(%struct.z_erofs_pcluster*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @erofs_register_workgroup(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.z_erofs_pcluster*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
