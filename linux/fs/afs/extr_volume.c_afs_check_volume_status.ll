; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_check_volume_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_volume.c_afs_check_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_volume = type { i64, i32 }
%struct.key = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_VOLUME_NEEDS_UPDATE = common dso_local global i32 0, align 4
@AFS_VOLUME_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@AFS_VOLUME_UPDATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" = 0 [no wait]\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c" = -ESTALE\00", align 1
@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_check_volume_status(%struct.afs_volume* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_volume*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.afs_volume* %0, %struct.afs_volume** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %9 = call i64 (...) @ktime_get_real_seconds()
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %12 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @AFS_VOLUME_NEEDS_UPDATE, align 4
  %18 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %19 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %2
  br label %22

22:                                               ; preds = %92, %21
  %23 = load i32, i32* @AFS_VOLUME_NEEDS_UPDATE, align 4
  %24 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %25 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %24, i32 0, i32 1
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @AFS_VOLUME_WAIT, align 4
  %30 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %31 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %30, i32 0, i32 1
  %32 = call i32 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  %35 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

36:                                               ; preds = %28, %22
  %37 = load i32, i32* @AFS_VOLUME_UPDATING, align 4
  %38 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %39 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %38, i32 0, i32 1
  %40 = call i32 @test_and_set_bit_lock(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %36
  %43 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %44 = load %struct.key*, %struct.key** %5, align 8
  %45 = call i32 @afs_update_volume_status(%struct.afs_volume* %43, %struct.key* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @AFS_VOLUME_WAIT, align 4
  %47 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %48 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %47, i32 0, i32 1
  %49 = call i32 @clear_bit_unlock(i32 %46, i32* %48)
  %50 = load i32, i32* @AFS_VOLUME_UPDATING, align 4
  %51 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %52 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %51, i32 0, i32 1
  %53 = call i32 @clear_bit_unlock(i32 %50, i32* %52)
  %54 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %55 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %54, i32 0, i32 1
  %56 = load i32, i32* @AFS_VOLUME_WAIT, align 4
  %57 = call i32 @wake_up_bit(i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %93

61:                                               ; preds = %36
  %62 = load i32, i32* @AFS_VOLUME_WAIT, align 4
  %63 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %64 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %93

69:                                               ; preds = %61
  %70 = load %struct.afs_volume*, %struct.afs_volume** %4, align 8
  %71 = getelementptr inbounds %struct.afs_volume, %struct.afs_volume* %70, i32 0, i32 1
  %72 = load i32, i32* @AFS_VOLUME_WAIT, align 4
  %73 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %74 = call i32 @wait_on_bit(i32* %71, i32 %72, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ERESTARTSYS, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %93

83:                                               ; preds = %69
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @ESTALE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %83
  br label %22

93:                                               ; preds = %88, %79, %67, %42, %34
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @afs_update_volume_status(%struct.afs_volume*, %struct.key*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
