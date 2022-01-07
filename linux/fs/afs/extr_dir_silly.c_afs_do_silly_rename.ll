; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_do_silly_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_do_silly_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, %struct.key*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dentry = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_fs_cursor = type { i32 }
%struct.afs_status_cb = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%pd,%pd\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@AFS_VNODE_DIR_VALID = common dso_local global i32 0, align 4
@afs_edit_dir_for_silly_0 = common dso_local global i32 0, align 4
@afs_edit_dir_for_silly_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.afs_vnode*, %struct.dentry*, %struct.dentry*, %struct.key*)* @afs_do_silly_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_silly_rename(%struct.afs_vnode* %0, %struct.afs_vnode* %1, %struct.dentry* %2, %struct.dentry* %3, %struct.key* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.afs_fs_cursor, align 4
  %13 = alloca %struct.afs_status_cb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %7, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %8, align 8
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store %struct.key* %4, %struct.key** %11, align 8
  %16 = load i32, i32* @ERESTARTSYS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.dentry*, %struct.dentry** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %10, align 8
  %20 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dentry* %18, %struct.dentry* %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %21)
  store %struct.afs_status_cb* %22, %struct.afs_status_cb** %13, align 8
  %23 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %24 = icmp ne %struct.afs_status_cb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %129

28:                                               ; preds = %5
  %29 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %30 = call i32 @trace_afs_silly_rename(%struct.afs_vnode* %29, i32 0)
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %32 = load %struct.key*, %struct.key** %11, align 8
  %33 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %12, %struct.afs_vnode* %31, %struct.key* %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %28
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %37 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %15, align 8
  br label %41

41:                                               ; preds = %44, %35
  %42 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %12)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %46 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %45)
  %47 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %12, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %58 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %59 = call i32 @afs_fs_rename(%struct.afs_fs_cursor* %12, i32 %51, %struct.afs_vnode* %52, i32 %56, %struct.afs_status_cb* %57, %struct.afs_status_cb* %58)
  br label %41

60:                                               ; preds = %41
  %61 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %62 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %65 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %12, %struct.afs_vnode* %61, i32 %63, i64* %15, %struct.afs_status_cb* %64)
  %66 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %12)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %60, %28
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %123

70:                                               ; preds = %67
  %71 = load %struct.dentry*, %struct.dentry** %9, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %75 = load %struct.dentry*, %struct.dentry** %9, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.dentry*, %struct.dentry** %9, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %83 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %82, i32 0, i32 2
  %84 = load %struct.key*, %struct.key** %83, align 8
  %85 = load %struct.key*, %struct.key** %11, align 8
  %86 = icmp ne %struct.key* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %70
  %88 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %89 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %88, i32 0, i32 2
  %90 = load %struct.key*, %struct.key** %89, align 8
  %91 = call i32 @key_put(%struct.key* %90)
  %92 = load %struct.key*, %struct.key** %11, align 8
  %93 = call %struct.key* @key_get(%struct.key* %92)
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %95 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %94, i32 0, i32 2
  store %struct.key* %93, %struct.key** %95, align 8
  br label %96

96:                                               ; preds = %87, %70
  %97 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %98 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %99 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %104 = load %struct.dentry*, %struct.dentry** %9, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 0
  %106 = load i32, i32* @afs_edit_dir_for_silly_0, align 4
  %107 = call i32 @afs_edit_dir_remove(%struct.afs_vnode* %103, %struct.TYPE_5__* %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %110 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %111 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %110, i32 0, i32 1
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %116 = load %struct.dentry*, %struct.dentry** %10, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 0
  %118 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %119 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %118, i32 0, i32 0
  %120 = load i32, i32* @afs_edit_dir_for_silly_1, align 4
  %121 = call i32 @afs_edit_dir_add(%struct.afs_vnode* %115, %struct.TYPE_5__* %117, i32* %119, i32 %120)
  br label %122

122:                                              ; preds = %114, %108
  br label %123

123:                                              ; preds = %122, %67
  %124 = load %struct.afs_status_cb*, %struct.afs_status_cb** %13, align 8
  %125 = call i32 @kfree(%struct.afs_status_cb* %124)
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %123, %25
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @_enter(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_afs_silly_rename(%struct.afs_vnode*, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_rename(%struct.afs_fs_cursor*, i32, %struct.afs_vnode*, i32, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i64*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @key_get(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @afs_edit_dir_remove(%struct.afs_vnode*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @afs_edit_dir_add(%struct.afs_vnode*, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
