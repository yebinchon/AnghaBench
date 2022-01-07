; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_INF_WANT_EXPIRE = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"waiting for expire %p name=%pd\0A\00", align 1
@NFY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"expire done status=%d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_expire_wait(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca %struct.autofs_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.autofs_sb_info* @autofs_sbi(i32 %16)
  store %struct.autofs_sb_info* %17, %struct.autofs_sb_info** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %18)
  store %struct.autofs_info* %19, %struct.autofs_info** %8, align 8
  %20 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %21 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ECHILD, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %88

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %48, %33
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %39 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %42 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %50 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %52, 10
  %54 = call i32 @schedule_timeout_uninterruptible(i32 %53)
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %55
  %61 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %62 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = load %struct.dentry*, %struct.dentry** %6, align 8
  %66 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.dentry* %64, %struct.dentry* %65)
  %67 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %68 = load %struct.path*, %struct.path** %4, align 8
  %69 = load i32, i32* @NFY_NONE, align 4
  %70 = call i32 @autofs_wait(%struct.autofs_sb_info* %67, %struct.path* %68, i32 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.autofs_info*, %struct.autofs_info** %8, align 8
  %72 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %71, i32 0, i32 1
  %73 = call i32 @wait_for_completion(i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = call i64 @d_unhashed(%struct.dentry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %60
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %88

82:                                               ; preds = %60
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %88

84:                                               ; preds = %55
  %85 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %86 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %85, i32 0, i32 0
  %87 = call i32 @spin_unlock(i32* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %82, %79, %30, %26
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @autofs_wait(%struct.autofs_sb_info*, %struct.path*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
