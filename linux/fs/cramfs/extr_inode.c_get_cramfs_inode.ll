; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_get_cramfs_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_get_cramfs_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.TYPE_3__, i32*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32 }
%struct.cramfs_inode = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@get_cramfs_inode.zerotime = internal global %struct.timespec64 zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@generic_ro_fops = common dso_local global i32 0, align 4
@cramfs_aops = common dso_local global i32 0, align 4
@CONFIG_CRAMFS_MTD = common dso_local global i32 0, align 4
@CRAMFS_FLAG_EXT_BLOCK_POINTERS = common dso_local global i32 0, align 4
@cramfs_physmem_fops = common dso_local global i32 0, align 4
@cramfs_dir_inode_operations = common dso_local global i32 0, align 4
@cramfs_directory_operations = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.cramfs_inode*, i32)* @get_cramfs_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @get_cramfs_inode(%struct.super_block* %0, %struct.cramfs_inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.cramfs_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.cramfs_inode* %1, %struct.cramfs_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @cramino(%struct.cramfs_inode* %10, i32 %11)
  %13 = call %struct.inode* @iget_locked(%struct.super_block* %9, i32 %12)
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.inode* @ERR_PTR(i32 %18)
  store %struct.inode* %19, %struct.inode** %4, align 8
  br label %135

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %28, %struct.inode** %4, align 8
  br label %135

29:                                               ; preds = %20
  %30 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %31 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFMT, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %75 [
    i32 128, label %35
    i32 130, label %62
    i32 129, label %67
  ]

35:                                               ; preds = %29
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 10
  store i32* @generic_ro_fops, i32** %37, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32* @cramfs_aops, i32** %40, align 8
  %41 = load i32, i32* @CONFIG_CRAMFS_MTD, align 4
  %42 = call i32 @IS_ENABLED(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call %struct.TYPE_4__* @CRAMFS_SB(%struct.super_block* %45)
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CRAMFS_FLAG_EXT_BLOCK_POINTERS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call %struct.TYPE_4__* @CRAMFS_SB(%struct.super_block* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 10
  store i32* @cramfs_physmem_fops, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %52, %44, %35
  br label %85

62:                                               ; preds = %29
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 9
  store i32* @cramfs_dir_inode_operations, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 10
  store i32* @cramfs_directory_operations, i32** %66, align 8
  br label %85

67:                                               ; preds = %29
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 9
  store i32* @page_symlink_inode_operations, i32** %69, align 8
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i32 @inode_nohighmem(%struct.inode* %70)
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* @cramfs_aops, i32** %74, align 8
  br label %85

75:                                               ; preds = %29
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %78 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %81 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @old_decode_dev(i32 %82)
  %84 = call i32 @init_special_inode(%struct.inode* %76, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %75, %67, %62, %61
  %86 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %87 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %93 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @i_uid_write(%struct.inode* %91, i32 %94)
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %98 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @i_gid_write(%struct.inode* %96, i32 %99)
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 3
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %85
  %107 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %108 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.cramfs_inode*, %struct.cramfs_inode** %6, align 8
  %113 = getelementptr inbounds %struct.cramfs_inode, %struct.cramfs_inode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sdiv i32 %115, 512
  %117 = add nsw i32 %116, 1
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %106, %85
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 7
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 6
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 5
  %127 = bitcast %struct.timespec64* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %127, i8* align 4 bitcast (%struct.timespec64* @get_cramfs_inode.zerotime to i8*), i64 4, i1 false)
  %128 = bitcast %struct.timespec64* %124 to i8*
  %129 = bitcast %struct.timespec64* %126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 4 %129, i64 4, i1 false)
  %130 = bitcast %struct.timespec64* %122 to i8*
  %131 = bitcast %struct.timespec64* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 8 %131, i64 4, i1 false)
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = call i32 @unlock_new_inode(%struct.inode* %132)
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %134, %struct.inode** %4, align 8
  br label %135

135:                                              ; preds = %120, %27, %16
  %136 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %136
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @cramino(%struct.cramfs_inode*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local %struct.TYPE_4__* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @old_decode_dev(i32) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
