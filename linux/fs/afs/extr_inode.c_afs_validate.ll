; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_validate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_inode.c_afs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"{v={%llx:%llu} fl=%lx},%x\00", align 1
@AFS_VNODE_DELETED = common dso_local global i32 0, align 4
@AFS_VNODE_CB_PROMISED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"not promised\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"new promise [fl=%lx]\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"file already deleted\00", align 1
@AFS_VNODE_ZAP_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_validate(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %9 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %13 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.key*, %struct.key** %5, align 8
  %20 = call i32 @key_serial(%struct.key* %19)
  %21 = call i32 @_enter(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18, i32 %20)
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %24 = call i32 @afs_check_validity(%struct.afs_vnode* %23)
  store i32 %24, i32* %6, align 4
  %25 = call i32 (...) @rcu_read_unlock()
  %26 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %33 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %32, i32 0, i32 2
  %34 = call i32 @clear_nlink(i32* %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %96

39:                                               ; preds = %35
  %40 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %41 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %40, i32 0, i32 0
  %42 = call i32 @down_write(i32* %41)
  %43 = load i32, i32* @AFS_VNODE_CB_PROMISED, align 4
  %44 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %45 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %44, i32 0, i32 1
  %46 = call i64 @test_bit(i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %39
  %49 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %51 = load %struct.key*, %struct.key** %5, align 8
  %52 = call i32 @afs_fetch_status(%struct.afs_vnode* %50, %struct.key* %51, i32 0, i32* null)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %63 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %62, i32 0, i32 1
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = load i32, i32* @ESTALE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %60, %55
  br label %98

68:                                               ; preds = %48
  %69 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %70 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %39
  %74 = load i32, i32* @AFS_VNODE_DELETED, align 4
  %75 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %76 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %75, i32 0, i32 1
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i32, i32* @ESTALE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %98

83:                                               ; preds = %73
  %84 = load i32, i32* @AFS_VNODE_ZAP_DATA, align 4
  %85 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %86 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %85, i32 0, i32 1
  %87 = call i64 @test_and_clear_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %91 = call i32 @afs_zap_data(%struct.afs_vnode* %90)
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %94 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %93, i32 0, i32 0
  %95 = call i32 @up_write(i32* %94)
  br label %96

96:                                               ; preds = %92, %38
  %97 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %105

98:                                               ; preds = %79, %67
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = call i32 @up_write(i32* %100)
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %98, %96
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @afs_check_validity(%struct.afs_vnode*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_nlink(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @afs_fetch_status(%struct.afs_vnode*, %struct.key*, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @afs_zap_data(%struct.afs_vnode*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
