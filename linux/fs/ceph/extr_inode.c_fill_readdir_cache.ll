; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_fill_readdir_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_fill_readdir_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_readdir_cache_control = type { i32, %struct.dentry**, i32 }
%struct.ceph_mds_request = type { i64, i64 }
%struct.ceph_inode_info = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"readdir cache dn %p idx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"disable readdir cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.ceph_readdir_cache_control*, %struct.ceph_mds_request*)* @fill_readdir_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_readdir_cache(%struct.inode* %0, %struct.dentry* %1, %struct.ceph_readdir_cache_control* %2, %struct.ceph_mds_request* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ceph_readdir_cache_control*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca %struct.ceph_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.ceph_readdir_cache_control* %2, %struct.ceph_readdir_cache_control** %8, align 8
  store %struct.ceph_mds_request* %3, %struct.ceph_mds_request** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %14)
  store %struct.ceph_inode_info* %15, %struct.ceph_inode_info** %10, align 8
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %21 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %26 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = udiv i32 %27, %28
  %30 = zext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  %31 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %32 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i64, i64* %13, align 8
  %37 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %38 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @page_index(i32 %39)
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %35, %4
  %43 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %44 = call i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control* %43)
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i64, i64* %13, align 8
  %51 = call i32 @grab_cache_page(i32* %49, i64 %50)
  %52 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %53 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %61

54:                                               ; preds = %42
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @find_lock_page(i32* %56, i64 %57)
  %59 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %60 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %63 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %68 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  br label %75

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %71
  %76 = phi i32 [ %73, %71 ], [ 0, %74 ]
  store i32 %76, i32* %5, align 4
  br label %135

77:                                               ; preds = %61
  %78 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %79 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @unlock_page(i32 %80)
  %82 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %83 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.dentry** @kmap(i32 %84)
  %86 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %87 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %86, i32 0, i32 1
  store %struct.dentry** %85, %struct.dentry*** %87, align 8
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %92 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %91, i32 0, i32 1
  %93 = load %struct.dentry**, %struct.dentry*** %92, align 8
  %94 = load i32, i32* @PAGE_SIZE, align 4
  %95 = call i32 @memset(%struct.dentry** %93, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %90, %77
  br label %97

97:                                               ; preds = %96, %35
  %98 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %99 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %10, align 8
  %102 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %101, i32 0, i32 1
  %103 = call i64 @atomic64_read(i32* %102)
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %130

105:                                              ; preds = %97
  %106 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %10, align 8
  %110 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %109, i32 0, i32 0
  %111 = call i64 @atomic64_read(i32* %110)
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %105
  %114 = load %struct.dentry*, %struct.dentry** %7, align 8
  %115 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %116 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.dentry* %114, i32 %117)
  %119 = load %struct.dentry*, %struct.dentry** %7, align 8
  %120 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %121 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %120, i32 0, i32 1
  %122 = load %struct.dentry**, %struct.dentry*** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.dentry*, %struct.dentry** %122, i64 %124
  store %struct.dentry* %119, %struct.dentry** %125, align 8
  %126 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %127 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %134

130:                                              ; preds = %105, %97
  %131 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %8, align 8
  %133 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %132, i32 0, i32 0
  store i32 -1, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %113
  store i32 0, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %75
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i64 @page_index(i32) #1

declare dso_local i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control*) #1

declare dso_local i32 @grab_cache_page(i32*, i64) #1

declare dso_local i32 @find_lock_page(i32*, i64) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local %struct.dentry** @kmap(i32) #1

declare dso_local i32 @memset(%struct.dentry**, i32, i32) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @dout(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
