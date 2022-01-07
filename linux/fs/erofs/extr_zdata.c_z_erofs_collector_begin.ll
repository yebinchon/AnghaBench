; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_collector_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_zdata.c_z_erofs_collector_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_erofs_collector = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.erofs_map_blocks = type { i32 }
%struct.z_erofs_collection = type { i32, i32 }

@Z_EROFS_PCLUSTER_NIL = common dso_local global i64 0, align 8
@Z_EROFS_PCLUSTER_TAIL_CLOSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@Z_EROFS_NR_INLINE_PAGEVECS = common dso_local global i32 0, align 4
@COLLECT_PRIMARY = common dso_local global i64 0, align 8
@Z_EROFS_CLUSTER_MAX_PAGES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_erofs_collector*, %struct.inode*, %struct.erofs_map_blocks*)* @z_erofs_collector_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_erofs_collector_begin(%struct.z_erofs_collector* %0, %struct.inode* %1, %struct.erofs_map_blocks* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.z_erofs_collector*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.erofs_map_blocks*, align 8
  %8 = alloca %struct.z_erofs_collection*, align 8
  store %struct.z_erofs_collector* %0, %struct.z_erofs_collector** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.erofs_map_blocks* %2, %struct.erofs_map_blocks** %7, align 8
  %9 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %10 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @DBG_BUGON(i32 %11)
  %13 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %14 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @Z_EROFS_PCLUSTER_NIL, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @DBG_BUGON(i32 %18)
  %20 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %21 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @Z_EROFS_PCLUSTER_TAIL_CLOSED, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @DBG_BUGON(i32 %25)
  %27 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %28 = getelementptr inbounds %struct.erofs_map_blocks, %struct.erofs_map_blocks* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PAGE_ALIGNED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = call i32 @DBG_BUGON(i32 1)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %95

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %54, %36
  %38 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %41 = call %struct.z_erofs_collection* @cllookup(%struct.z_erofs_collector* %38, %struct.inode* %39, %struct.erofs_map_blocks* %40)
  store %struct.z_erofs_collection* %41, %struct.z_erofs_collection** %8, align 8
  %42 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %43 = icmp ne %struct.z_erofs_collection* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.erofs_map_blocks*, %struct.erofs_map_blocks** %7, align 8
  %48 = call %struct.z_erofs_collection* @clregister(%struct.z_erofs_collector* %45, %struct.inode* %46, %struct.erofs_map_blocks* %47)
  store %struct.z_erofs_collection* %48, %struct.z_erofs_collection** %8, align 8
  %49 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.z_erofs_collection* @ERR_PTR(i32 %51)
  %53 = icmp eq %struct.z_erofs_collection* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %37

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %58 = call i64 @IS_ERR(%struct.z_erofs_collection* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %62 = call i32 @PTR_ERR(%struct.z_erofs_collection* %61)
  store i32 %62, i32* %4, align 4
  br label %95

63:                                               ; preds = %56
  %64 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %65 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %64, i32 0, i32 5
  %66 = load i32, i32* @Z_EROFS_NR_INLINE_PAGEVECS, align 4
  %67 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %68 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.z_erofs_collection*, %struct.z_erofs_collection** %8, align 8
  %71 = getelementptr inbounds %struct.z_erofs_collection, %struct.z_erofs_collection* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @z_erofs_pagevec_ctor_init(i32* %65, i32 %66, i32 %69, i32 %72)
  %74 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %75 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %80 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  %81 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %82 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @COLLECT_PRIMARY, align 8
  %85 = icmp sle i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %63
  %87 = load i64, i64* @Z_EROFS_CLUSTER_MAX_PAGES, align 8
  %88 = load %struct.z_erofs_collector*, %struct.z_erofs_collector** %5, align 8
  %89 = getelementptr inbounds %struct.z_erofs_collector, %struct.z_erofs_collector* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %87
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  br label %94

94:                                               ; preds = %86, %63
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %60, %32
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @DBG_BUGON(i32) #1

declare dso_local i32 @PAGE_ALIGNED(i32) #1

declare dso_local %struct.z_erofs_collection* @cllookup(%struct.z_erofs_collector*, %struct.inode*, %struct.erofs_map_blocks*) #1

declare dso_local %struct.z_erofs_collection* @clregister(%struct.z_erofs_collector*, %struct.inode*, %struct.erofs_map_blocks*) #1

declare dso_local %struct.z_erofs_collection* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR(%struct.z_erofs_collection*) #1

declare dso_local i32 @PTR_ERR(%struct.z_erofs_collection*) #1

declare dso_local i32 @z_erofs_pagevec_ctor_init(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
