; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_file.c_afs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, %struct.afs_file* }
%struct.afs_file = type { %struct.key* }
%struct.key = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%llx:%llu},\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@AFS_VNODE_NEW_CONTENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.afs_file*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %10)
  store %struct.afs_vnode* %11, %struct.afs_vnode** %6, align 8
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @_enter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.key* @afs_request_key(i32 %25)
  store %struct.key* %26, %struct.key** %8, align 8
  %27 = load %struct.key*, %struct.key** %8, align 8
  %28 = call i64 @IS_ERR(%struct.key* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.key*, %struct.key** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.key* %31)
  store i32 %32, i32* %9, align 4
  br label %89

33:                                               ; preds = %2
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.afs_file* @kzalloc(i32 8, i32 %34)
  store %struct.afs_file* %35, %struct.afs_file** %7, align 8
  %36 = load %struct.afs_file*, %struct.afs_file** %7, align 8
  %37 = icmp ne %struct.afs_file* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %86

41:                                               ; preds = %33
  %42 = load %struct.key*, %struct.key** %8, align 8
  %43 = load %struct.afs_file*, %struct.afs_file** %7, align 8
  %44 = getelementptr inbounds %struct.afs_file, %struct.afs_file* %43, i32 0, i32 0
  store %struct.key* %42, %struct.key** %44, align 8
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %46 = load %struct.key*, %struct.key** %8, align 8
  %47 = call i32 @afs_validate(%struct.afs_vnode* %45, %struct.key* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %83

51:                                               ; preds = %41
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FMODE_WRITE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %60 = load %struct.afs_file*, %struct.afs_file** %7, align 8
  %61 = call i32 @afs_cache_wb_key(%struct.afs_vnode* %59, %struct.afs_file* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %83

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = getelementptr inbounds %struct.file, %struct.file* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @O_TRUNC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @AFS_VNODE_NEW_CONTENT, align 4
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 0
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.afs_file*, %struct.afs_file** %7, align 8
  %80 = load %struct.file*, %struct.file** %5, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 2
  store %struct.afs_file* %79, %struct.afs_file** %81, align 8
  %82 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

83:                                               ; preds = %64, %50
  %84 = load %struct.afs_file*, %struct.afs_file** %7, align 8
  %85 = call i32 @kfree(%struct.afs_file* %84)
  br label %86

86:                                               ; preds = %83, %38
  %87 = load %struct.key*, %struct.key** %8, align 8
  %88 = call i32 @key_put(%struct.key* %87)
  br label %89

89:                                               ; preds = %86, %30
  %90 = load i32, i32* %9, align 4
  %91 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %78
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local %struct.key* @afs_request_key(i32) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.afs_file* @kzalloc(i32, i32) #1

declare dso_local i32 @afs_validate(%struct.afs_vnode*, %struct.key*) #1

declare dso_local i32 @afs_cache_wb_key(%struct.afs_vnode*, %struct.afs_file*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @kfree(%struct.afs_file*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
