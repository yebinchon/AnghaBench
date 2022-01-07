; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_do_silly_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_silly.c_afs_do_silly_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.TYPE_11__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.dentry = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_fs_cursor = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.afs_status_cb = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFS_SERVER_FL_IS_YFS = common dso_local global i32 0, align 4
@AFS_SERVER_FL_NO_RM2 = common dso_local global i32 0, align 4
@ECONNABORTED = common dso_local global i32 0, align 4
@RXGEN_OPCODE = common dso_local global i64 0, align 8
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4
@AFS_VNODE_DIR_VALID = common dso_local global i32 0, align 4
@afs_edit_dir_for_unlink = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.afs_vnode*, %struct.dentry*, %struct.key*)* @afs_do_silly_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_silly_unlink(%struct.afs_vnode* %0, %struct.afs_vnode* %1, %struct.dentry* %2, %struct.key* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_vnode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_fs_cursor, align 8
  %11 = alloca %struct.afs_status_cb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.afs_vnode* %0, %struct.afs_vnode** %6, align 8
  store %struct.afs_vnode* %1, %struct.afs_vnode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store %struct.key* %3, %struct.key** %9, align 8
  %14 = load i32, i32* @ERESTARTSYS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %12, align 4
  %16 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.afs_status_cb* @kcalloc(i32 2, i32 4, i32 %17)
  store %struct.afs_status_cb* %18, %struct.afs_status_cb** %11, align 8
  %19 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %20 = icmp ne %struct.afs_status_cb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %153

24:                                               ; preds = %4
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %26 = call i32 @trace_afs_silly_rename(%struct.afs_vnode* %25, i32 1)
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %28 = load %struct.key*, %struct.key** %9, align 8
  %29 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %10, %struct.afs_vnode* %27, %struct.key* %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %147

31:                                               ; preds = %24
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %93, %84, %31
  %38 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %10)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %37
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %42 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %41)
  %43 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* @AFS_SERVER_FL_IS_YFS, align 4
  %45 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i64 @test_bit(i32 %44, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %93

52:                                               ; preds = %40
  %53 = load i32, i32* @AFS_SERVER_FL_NO_RM2, align 4
  %54 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %53, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %52
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %63 = load %struct.dentry*, %struct.dentry** %8, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %68 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %67, i64 0
  %69 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %70 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %69, i64 1
  %71 = call i32 @yfs_fs_remove_file2(%struct.afs_fs_cursor* %10, %struct.afs_vnode* %62, i32 %66, %struct.afs_status_cb* %68, %struct.afs_status_cb* %70)
  %72 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ECONNABORTED, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @RXGEN_OPCODE, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %61
  br label %37

85:                                               ; preds = %78
  %86 = load i32, i32* @AFS_SERVER_FL_NO_RM2, align 4
  %87 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 1
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %86, i32* %91)
  br label %93

93:                                               ; preds = %85, %52, %40
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %100 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %99, i64 0
  %101 = call i32 @afs_fs_remove(%struct.afs_fs_cursor* %10, %struct.afs_vnode* %94, i32 %98, i32 0, %struct.afs_status_cb* %100)
  br label %37

102:                                              ; preds = %37
  %103 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %104 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %107 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %106, i64 0
  %108 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %10, %struct.afs_vnode* %103, i32 %105, i64* %13, %struct.afs_status_cb* %107)
  %109 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %10)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %102
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 1
  %115 = call i32 @drop_nlink(%struct.TYPE_11__* %114)
  %116 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %117 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %112
  %122 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %123 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %124 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  %126 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %127 = load %struct.afs_vnode*, %struct.afs_vnode** %7, align 8
  %128 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %127, i32 0, i32 0
  %129 = call i32 @clear_bit(i32 %126, i32* %128)
  br label %130

130:                                              ; preds = %121, %112
  br label %131

131:                                              ; preds = %130, %102
  %132 = load i32, i32* %12, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %136 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %137 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %136, i32 0, i32 0
  %138 = call i64 @test_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %142 = load %struct.dentry*, %struct.dentry** %8, align 8
  %143 = getelementptr inbounds %struct.dentry, %struct.dentry* %142, i32 0, i32 0
  %144 = load i32, i32* @afs_edit_dir_for_unlink, align 4
  %145 = call i32 @afs_edit_dir_remove(%struct.afs_vnode* %141, %struct.TYPE_12__* %143, i32 %144)
  br label %146

146:                                              ; preds = %140, %134, %131
  br label %147

147:                                              ; preds = %146, %24
  %148 = load %struct.afs_status_cb*, %struct.afs_status_cb** %11, align 8
  %149 = call i32 @kfree(%struct.afs_status_cb* %148)
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %5, align 4
  br label %153

153:                                              ; preds = %147, %21
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_status_cb* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @trace_afs_silly_rename(%struct.afs_vnode*, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @yfs_fs_remove_file2(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, %struct.afs_status_cb*, %struct.afs_status_cb*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @afs_fs_remove(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i64*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @drop_nlink(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @afs_edit_dir_remove(%struct.afs_vnode*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
