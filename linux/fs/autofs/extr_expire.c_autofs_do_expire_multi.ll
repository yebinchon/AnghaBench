; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_do_expire_multi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_do_expire_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.vfsmount = type { i32 }
%struct.autofs_sb_info = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.autofs_info = type { i32, i32, i32 }
%struct.path = type { %struct.dentry*, %struct.vfsmount* }

@EAGAIN = common dso_local global i32 0, align 4
@NFY_EXPIRE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@AUTOFS_INF_WANT_EXPIRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_do_expire_multi(%struct.super_block* %0, %struct.vfsmount* %1, %struct.autofs_sb_info* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.autofs_info*, align 8
  %12 = alloca %struct.path, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %6, align 8
  store %struct.autofs_sb_info* %2, %struct.autofs_sb_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %16 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @autofs_type_trigger(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.super_block*, %struct.super_block** %5, align 8
  %22 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.dentry* @autofs_expire_direct(%struct.super_block* %21, %struct.vfsmount* %22, %struct.autofs_sb_info* %23, i32 %24)
  store %struct.dentry* %25, %struct.dentry** %9, align 8
  br label %32

26:                                               ; preds = %4
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %29 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.dentry* @autofs_expire_indirect(%struct.super_block* %27, %struct.vfsmount* %28, %struct.autofs_sb_info* %29, i32 %30)
  store %struct.dentry* %31, %struct.dentry** %9, align 8
  br label %32

32:                                               ; preds = %26, %20
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %36)
  store %struct.autofs_info* %37, %struct.autofs_info** %11, align 8
  %38 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %39 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %39, %struct.dentry** %38, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 1
  %41 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  store %struct.vfsmount* %41, %struct.vfsmount** %40, align 8
  %42 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %43 = load i32, i32* @NFY_EXPIRE, align 4
  %44 = call i32 @autofs_wait(%struct.autofs_sb_info* %42, %struct.path* %12, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %46 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %45, i32 0, i32 0
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load i32, i32* @jiffies, align 4
  %49 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %50 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %52 = load i32, i32* @AUTOFS_INF_WANT_EXPIRE, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %56 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %60 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %59, i32 0, i32 1
  %61 = call i32 @complete_all(i32* %60)
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call i32 @dput(%struct.dentry* %65)
  br label %67

67:                                               ; preds = %35, %32
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i64 @autofs_type_trigger(i32) #1

declare dso_local %struct.dentry* @autofs_expire_direct(%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32) #1

declare dso_local %struct.dentry* @autofs_expire_indirect(%struct.super_block*, %struct.vfsmount*, %struct.autofs_sb_info*, i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs_wait(%struct.autofs_sb_info*, %struct.path*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
