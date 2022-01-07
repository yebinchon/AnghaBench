; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dcache_find_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___dcache_find_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.ceph_readdir_cache_control = type { i32, %struct.dentry**, i32 }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c" page %lu not found\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, i32, %struct.ceph_readdir_cache_control*)* @__dcache_find_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__dcache_find_get_entry(%struct.dentry* %0, i32 %1, %struct.ceph_readdir_cache_control* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_readdir_cache_control*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ceph_readdir_cache_control* %2, %struct.ceph_readdir_cache_control** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 8
  %18 = sub i64 %17, 1
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @PAGE_SHIFT, align 8
  %25 = ashr i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call i64 @i_size_read(%struct.inode* %27)
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %125

31:                                               ; preds = %3
  %32 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %33 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %39 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @page_index(i32 %40)
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %36, %31
  %44 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %45 = call i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control* %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @find_lock_page(i32* %47, i64 %48)
  %50 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %51 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %53 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.dentry* @ERR_PTR(i32 %60)
  store %struct.dentry* %61, %struct.dentry** %4, align 8
  br label %125

62:                                               ; preds = %43
  %63 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %64 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @unlock_page(i32 %65)
  %67 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %68 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.dentry** @kmap(i32 %69)
  %71 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %72 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %71, i32 0, i32 1
  store %struct.dentry** %70, %struct.dentry*** %72, align 8
  br label %73

73:                                               ; preds = %62, %36
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %74, %75
  %77 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %78 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = call i32 (...) @rcu_read_lock()
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 1
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.inode*, %struct.inode** %8, align 8
  %84 = call i64 @ceph_dir_is_complete_ordered(%struct.inode* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %73
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = call i64 @i_size_read(%struct.inode* %88)
  %90 = icmp slt i64 %87, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %93 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %92, i32 0, i32 1
  %94 = load %struct.dentry**, %struct.dentry*** %93, align 8
  %95 = load %struct.ceph_readdir_cache_control*, %struct.ceph_readdir_cache_control** %7, align 8
  %96 = getelementptr inbounds %struct.ceph_readdir_cache_control, %struct.ceph_readdir_cache_control* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dentry*, %struct.dentry** %94, i64 %98
  %100 = load %struct.dentry*, %struct.dentry** %99, align 8
  store %struct.dentry* %100, %struct.dentry** %9, align 8
  br label %102

101:                                              ; preds = %86, %73
  store %struct.dentry* null, %struct.dentry** %9, align 8
  br label %102

102:                                              ; preds = %101, %91
  %103 = load %struct.dentry*, %struct.dentry** %5, align 8
  %104 = getelementptr inbounds %struct.dentry, %struct.dentry* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.dentry*, %struct.dentry** %9, align 8
  %107 = icmp ne %struct.dentry* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load %struct.dentry*, %struct.dentry** %9, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  %111 = call i32 @lockref_get_not_dead(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store %struct.dentry* null, %struct.dentry** %9, align 8
  br label %114

114:                                              ; preds = %113, %108, %102
  %115 = call i32 (...) @rcu_read_unlock()
  %116 = load %struct.dentry*, %struct.dentry** %9, align 8
  %117 = icmp ne %struct.dentry* %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @EAGAIN, align 4
  %121 = sub nsw i32 0, %120
  %122 = call %struct.dentry* @ERR_PTR(i32 %121)
  br label %123

123:                                              ; preds = %119, %118
  %124 = phi %struct.dentry* [ %116, %118 ], [ %122, %119 ]
  store %struct.dentry* %124, %struct.dentry** %4, align 8
  br label %125

125:                                              ; preds = %123, %56, %30
  %126 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %126
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @page_index(i32) #1

declare dso_local i32 @ceph_readdir_cache_release(%struct.ceph_readdir_cache_control*) #1

declare dso_local i32 @find_lock_page(i32*, i64) #1

declare dso_local i32 @dout(i8*, i64) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @unlock_page(i32) #1

declare dso_local %struct.dentry** @kmap(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @ceph_dir_is_complete_ordered(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
