; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.super_block = type { %struct.afs_super_info* }
%struct.afs_super_info = type { i32 }
%struct.key = type { i32 }
%struct.afs_iget_data = type { i32, %struct.afs_fid }
%struct.afs_fid = type { i32, i32, i32 }
%struct.afs_status_cb = type { i32 }
%struct.afs_cb_interest = type { i32 }
%struct.afs_vnode = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c",{%llx:%llu.%u},,\00", align 1
@afs_iget5_test = common dso_local global i32 0, align 4
@afs_iget5_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"GOT INODE %p { vl=%llx vn=%llx, u=%x }\00", align 1
@I_NEW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@AFS_VNODE_UNSET = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" = %d [bad]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @afs_iget(%struct.super_block* %0, %struct.key* %1, %struct.afs_iget_data* %2, %struct.afs_status_cb* %3, %struct.afs_cb_interest* %4, %struct.afs_vnode* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_iget_data*, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca %struct.afs_cb_interest*, align 8
  %13 = alloca %struct.afs_vnode*, align 8
  %14 = alloca %struct.afs_super_info*, align 8
  %15 = alloca %struct.afs_vnode*, align 8
  %16 = alloca %struct.afs_fid*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.key* %1, %struct.key** %9, align 8
  store %struct.afs_iget_data* %2, %struct.afs_iget_data** %10, align 8
  store %struct.afs_status_cb* %3, %struct.afs_status_cb** %11, align 8
  store %struct.afs_cb_interest* %4, %struct.afs_cb_interest** %12, align 8
  store %struct.afs_vnode* %5, %struct.afs_vnode** %13, align 8
  %19 = load %struct.afs_iget_data*, %struct.afs_iget_data** %10, align 8
  %20 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %19, i32 0, i32 1
  store %struct.afs_fid* %20, %struct.afs_fid** %16, align 8
  %21 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %22 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %25 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %28 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_enter(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.super_block*, %struct.super_block** %8, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load %struct.afs_super_info*, %struct.afs_super_info** %32, align 8
  store %struct.afs_super_info* %33, %struct.afs_super_info** %14, align 8
  %34 = load %struct.afs_super_info*, %struct.afs_super_info** %14, align 8
  %35 = getelementptr inbounds %struct.afs_super_info, %struct.afs_super_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.afs_iget_data*, %struct.afs_iget_data** %10, align 8
  %38 = getelementptr inbounds %struct.afs_iget_data, %struct.afs_iget_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_block*, %struct.super_block** %8, align 8
  %40 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %41 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @afs_iget5_test, align 4
  %44 = load i32, i32* @afs_iget5_set, align 4
  %45 = load %struct.afs_iget_data*, %struct.afs_iget_data** %10, align 8
  %46 = call %struct.inode* @iget5_locked(%struct.super_block* %39, i32 %42, i32 %43, i32 %44, %struct.afs_iget_data* %45)
  store %struct.inode* %46, %struct.inode** %17, align 8
  %47 = load %struct.inode*, %struct.inode** %17, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %6
  %50 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.inode* @ERR_PTR(i32 %52)
  store %struct.inode* %53, %struct.inode** %7, align 8
  br label %124

54:                                               ; preds = %6
  %55 = load %struct.inode*, %struct.inode** %17, align 8
  %56 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %57 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %60 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %63 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %55, i32 %58, i32 %61, i32 %64)
  %66 = load %struct.inode*, %struct.inode** %17, align 8
  %67 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %66)
  store %struct.afs_vnode* %67, %struct.afs_vnode** %15, align 8
  %68 = load %struct.inode*, %struct.inode** %17, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @I_NEW, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %54
  %75 = load %struct.inode*, %struct.inode** %17, align 8
  %76 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %75)
  %77 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %77, %struct.inode** %7, align 8
  br label %124

78:                                               ; preds = %54
  %79 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %80 = icmp ne %struct.afs_status_cb* %79, null
  br i1 %80, label %89, label %81

81:                                               ; preds = %78
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %83 = load %struct.key*, %struct.key** %9, align 8
  %84 = call i32 @afs_fetch_status(%struct.afs_vnode* %82, %struct.key* %83, i32 1, i32* null)
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %18, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %117

88:                                               ; preds = %81
  br label %100

89:                                               ; preds = %78
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %91 = load %struct.key*, %struct.key** %9, align 8
  %92 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %12, align 8
  %93 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %94 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %95 = call i32 @afs_inode_init_from_status(%struct.afs_vnode* %90, %struct.key* %91, %struct.afs_cb_interest* %92, %struct.afs_vnode* %93, %struct.afs_status_cb* %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %117

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %88
  %101 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %102 = call i32 @afs_get_inode_cache(%struct.afs_vnode* %101)
  %103 = load i32, i32* @AFS_VNODE_UNSET, align 4
  %104 = load %struct.afs_vnode*, %struct.afs_vnode** %15, align 8
  %105 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %104, i32 0, i32 0
  %106 = call i32 @clear_bit(i32 %103, i32* %105)
  %107 = load i32, i32* @S_NOATIME, align 4
  %108 = load %struct.inode*, %struct.inode** %17, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load %struct.inode*, %struct.inode** %17, align 8
  %113 = call i32 @unlock_new_inode(%struct.inode* %112)
  %114 = load %struct.inode*, %struct.inode** %17, align 8
  %115 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.inode* %114)
  %116 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %116, %struct.inode** %7, align 8
  br label %124

117:                                              ; preds = %98, %87
  %118 = load %struct.inode*, %struct.inode** %17, align 8
  %119 = call i32 @iget_failed(%struct.inode* %118)
  %120 = load i32, i32* %18, align 4
  %121 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %18, align 4
  %123 = call %struct.inode* @ERR_PTR(i32 %122)
  store %struct.inode* %123, %struct.inode** %7, align 8
  br label %124

124:                                              ; preds = %117, %100, %74, %49
  %125 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %125
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.afs_iget_data*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @_debug(i8*, %struct.inode*, i32, i32, i32) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @afs_fetch_status(%struct.afs_vnode*, %struct.key*, i32, i32*) #1

declare dso_local i32 @afs_inode_init_from_status(%struct.afs_vnode*, %struct.key*, %struct.afs_cb_interest*, %struct.afs_vnode*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_get_inode_cache(%struct.afs_vnode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
