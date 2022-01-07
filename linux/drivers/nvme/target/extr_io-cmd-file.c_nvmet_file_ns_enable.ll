; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_ns_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_ns_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_ns = type { i64, i64, i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kstat = type { i64 }
%struct.TYPE_7__ = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to open file %s: (%ld)\0A\00", align 1
@STATX_SIZE = common dso_local global i32 0, align 4
@AT_STATX_FORCE_SYNC = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"nvmet-bvec\00", align 1
@NVMET_MAX_MPOOL_BVEC = common dso_local global i32 0, align 4
@SLAB_HWCACHE_ALIGN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVMET_MIN_MPOOL_OBJ = common dso_local global i32 0, align 4
@mempool_alloc_slab = common dso_local global i32 0, align 4
@mempool_free_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmet_file_ns_enable(%struct.nvmet_ns* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_ns*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kstat, align 8
  %6 = alloca i32, align 4
  store %struct.nvmet_ns* %0, %struct.nvmet_ns** %3, align 8
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = load i32, i32* @O_LARGEFILE, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %11 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @O_DIRECT, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %20 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_6__* @filp_open(i32 %21, i32 %22, i32 0)
  %24 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %25 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %24, i32 0, i32 4
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %25, align 8
  %26 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_6__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %18
  %32 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %33 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %36 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @PTR_ERR(%struct.TYPE_6__* %37)
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  %40 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %41 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @PTR_ERR(%struct.TYPE_6__* %42)
  store i32 %43, i32* %2, align 4
  br label %112

44:                                               ; preds = %18
  %45 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %46 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* @STATX_SIZE, align 4
  %50 = load i32, i32* @AT_STATX_FORCE_SYNC, align 4
  %51 = call i32 @vfs_getattr(i32* %48, %struct.kstat* %5, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %104

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %5, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %59 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @u8, align 4
  %61 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %62 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %61, i32 0, i32 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call %struct.TYPE_7__* @file_inode(%struct.TYPE_6__* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @min_t(i32 %60, i32 %66, i32 12)
  %68 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %69 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load i32, i32* @NVMET_MAX_MPOOL_BVEC, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* @SLAB_HWCACHE_ALIGN, align 4
  %75 = call i32 @kmem_cache_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 0, i32 %74, i32* null)
  %76 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %77 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %79 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %55
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %104

85:                                               ; preds = %55
  %86 = load i32, i32* @NVMET_MIN_MPOOL_OBJ, align 4
  %87 = load i32, i32* @mempool_alloc_slab, align 4
  %88 = load i32, i32* @mempool_free_slab, align 4
  %89 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %90 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mempool_create(i32 %86, i32 %87, i32 %88, i32 %91)
  %93 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %94 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %96 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %104

102:                                              ; preds = %85
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %112

104:                                              ; preds = %99, %82, %54
  %105 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %106 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %108 = getelementptr inbounds %struct.nvmet_ns, %struct.nvmet_ns* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.nvmet_ns*, %struct.nvmet_ns** %3, align 8
  %110 = call i32 @nvmet_file_ns_disable(%struct.nvmet_ns* %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %104, %102, %31
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_6__* @filp_open(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_6__*) #1

declare dso_local i32 @vfs_getattr(i32*, %struct.kstat*, i32, i32) #1

declare dso_local i64 @min_t(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @file_inode(%struct.TYPE_6__*) #1

declare dso_local i32 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @mempool_create(i32, i32, i32, i32) #1

declare dso_local i32 @nvmet_file_ns_disable(%struct.nvmet_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
