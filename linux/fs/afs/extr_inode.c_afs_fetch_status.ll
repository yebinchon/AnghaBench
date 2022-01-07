; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_fetch_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_fetch_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_7__, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_status_cb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.afs_fs_cursor = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"%s,{%llx:%llu.%u,S=%lx}\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fetch_status(%struct.afs_vnode* %0, %struct.key* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.afs_status_cb*, align 8
  %11 = alloca %struct.afs_fs_cursor, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %20 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %24 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %32 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @_enter(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %26, i32 %30, i32 %33)
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.afs_status_cb* @kzalloc(i32 4, i32 %35)
  store %struct.afs_status_cb* %36, %struct.afs_status_cb** %10, align 8
  %37 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %38 = icmp ne %struct.afs_status_cb* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %119

42:                                               ; preds = %4
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %46 = load %struct.key*, %struct.key** %7, align 8
  %47 = call i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor* %11, %struct.afs_vnode* %45, %struct.key* %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %42
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %51 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %57, %49
  %55 = call i64 @afs_select_fileserver(%struct.afs_fs_cursor* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %59 = call i32 @afs_calc_vnode_cb_break(%struct.afs_vnode* %58)
  %60 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %62 = call i32 @afs_fs_fetch_file_status(%struct.afs_fs_cursor* %11, %struct.afs_status_cb* %61, i32* null)
  br label %54

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %97

68:                                               ; preds = %63
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %73 = load %struct.key*, %struct.key** %7, align 8
  %74 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %77 = call i32 @afs_inode_init_from_status(%struct.afs_vnode* %72, %struct.key* %73, i32 %75, i32* null, %struct.afs_status_cb* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %84 = load %struct.key*, %struct.key** %7, align 8
  %85 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %88 = call i32 @afs_cache_permit(%struct.afs_vnode* %83, %struct.key* %84, i32 %86, %struct.afs_status_cb* %87)
  br label %89

89:                                               ; preds = %82, %71
  br label %96

90:                                               ; preds = %68
  %91 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %92 = getelementptr inbounds %struct.afs_fs_cursor, %struct.afs_fs_cursor* %11, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %95 = call i32 @afs_vnode_commit_status(%struct.afs_fs_cursor* %11, %struct.afs_vnode* %91, i32 %93, i32* %13, %struct.afs_status_cb* %94)
  br label %96

96:                                               ; preds = %90, %89
  br label %97

97:                                               ; preds = %96, %67
  %98 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %99 = call i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor* %11, %struct.afs_vnode* %98)
  %100 = call i32 @afs_end_vnode_operation(%struct.afs_fs_cursor* %11)
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %97, %42
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %109 = getelementptr inbounds %struct.afs_status_cb, %struct.afs_status_cb* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %107, %104, %101
  %114 = load %struct.afs_status_cb*, %struct.afs_status_cb** %10, align 8
  %115 = call i32 @kfree(%struct.afs_status_cb* %114)
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %113, %39
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.afs_status_cb* @kzalloc(i32, i32) #1

declare dso_local i64 @afs_begin_vnode_operation(%struct.afs_fs_cursor*, %struct.afs_vnode*, %struct.key*, i32) #1

declare dso_local i64 @afs_select_fileserver(%struct.afs_fs_cursor*) #1

declare dso_local i32 @afs_calc_vnode_cb_break(%struct.afs_vnode*) #1

declare dso_local i32 @afs_fs_fetch_file_status(%struct.afs_fs_cursor*, %struct.afs_status_cb*, i32*) #1

declare dso_local i32 @afs_inode_init_from_status(%struct.afs_vnode*, %struct.key*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_cache_permit(%struct.afs_vnode*, %struct.key*, i32, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_vnode_commit_status(%struct.afs_fs_cursor*, %struct.afs_vnode*, i32, i32*, %struct.afs_status_cb*) #1

declare dso_local i32 @afs_check_for_remote_deletion(%struct.afs_fs_cursor*, %struct.afs_vnode*) #1

declare dso_local i32 @afs_end_vnode_operation(%struct.afs_fs_cursor*) #1

declare dso_local i32 @kfree(%struct.afs_status_cb*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
