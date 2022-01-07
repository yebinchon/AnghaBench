; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_setlk_check.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_flock.c_afs_do_setlk_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32 }
%struct.key = type { i32 }

@AFS_LOCK_READ = common dso_local global i64 0, align 8
@AFS_ACE_INSERT = common dso_local global i32 0, align 4
@AFS_ACE_WRITE = common dso_local global i32 0, align 4
@AFS_ACE_LOCK = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.key*, i32, i64)* @afs_do_setlk_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_do_setlk_check(%struct.afs_vnode* %0, %struct.key* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %13 = load %struct.key*, %struct.key** %7, align 8
  %14 = call i32 @afs_validate(%struct.afs_vnode* %12, %struct.key* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %56

19:                                               ; preds = %4
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %21 = load %struct.key*, %struct.key** %7, align 8
  %22 = call i32 @afs_check_permit(%struct.afs_vnode* %20, %struct.key* %21, i32* %10)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %56

27:                                               ; preds = %19
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @AFS_LOCK_READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @AFS_ACE_INSERT, align 4
  %34 = load i32, i32* @AFS_ACE_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AFS_ACE_LOCK, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %32, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %56

43:                                               ; preds = %31
  br label %55

44:                                               ; preds = %27
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @AFS_ACE_INSERT, align 4
  %47 = load i32, i32* @AFS_ACE_WRITE, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %44
  %52 = load i32, i32* @EACCES, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %43
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51, %40, %25, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @afs_validate(%struct.afs_vnode*, %struct.key*) #1

declare dso_local i32 @afs_check_permit(%struct.afs_vnode*, %struct.key*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
