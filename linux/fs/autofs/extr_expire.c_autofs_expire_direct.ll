; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_expire_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.vfsmount = type { i32 }
%struct.autofs_sb_info = type { i64, i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_INF_PENDING = common dso_local global i32 0, align 4
@AUTOFS_INF_WANT_EXPIRE = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32)* @autofs_expire_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs_expire_direct(%struct.super_block* %0, %struct.vfsmount* %1, %struct.autofs_sb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.autofs_info*, align 8
  %12 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.dentry* @dget(i32 %15)
  store %struct.dentry* %16, %struct.dentry** %10, align 8
  %17 = load %struct.dentry*, %struct.dentry** %10, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %95

20:                                               ; preds = %4
  %21 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %22 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %10, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @autofs_direct_busy(%struct.vfsmount* %24, %struct.dentry* %25, i64 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %91, label %30

30:                                               ; preds = %20
  %31 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %32 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %31, i32 0, i32 1
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.dentry*, %struct.dentry** %10, align 8
  %35 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %34)
  store %struct.autofs_info* %35, %struct.autofs_info** %11, align 8
  %36 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %37 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AUTOFS_INF_PENDING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %30
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 1
  %45 = call i32 @spin_unlock(i32* %44)
  br label %92

46:                                               ; preds = %30
  %47 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %48 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %49 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = call i32 (...) @synchronize_rcu()
  %56 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %57 = load %struct.dentry*, %struct.dentry** %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @autofs_direct_busy(%struct.vfsmount* %56, %struct.dentry* %57, i64 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %46
  %63 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %64 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %63, i32 0, i32 1
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %67 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %68 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %72 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %71, i32 0, i32 1
  %73 = call i32 @init_completion(i32* %72)
  %74 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %75 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %77, %struct.dentry** %5, align 8
  br label %95

78:                                               ; preds = %46
  %79 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %80 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %79, i32 0, i32 1
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %85 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %89 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  br label %91

91:                                               ; preds = %78, %20
  br label %92

92:                                               ; preds = %91, %42
  %93 = load %struct.dentry*, %struct.dentry** %10, align 8
  %94 = call i32 @dput(%struct.dentry* %93)
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %95

95:                                               ; preds = %92, %62, %19
  %96 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %96
}

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @autofs_direct_busy(%struct.vfsmount*, %struct.dentry*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
