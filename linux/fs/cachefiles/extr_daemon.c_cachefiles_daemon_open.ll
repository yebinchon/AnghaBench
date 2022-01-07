; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.cachefiles_cache* }
%struct.cachefiles_cache = type { i32, i32, i32, i32, i32, i32, %struct.file*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@cachefiles_open = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @cachefiles_daemon_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cachefiles_cache*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = call i32 @xchg(i64* @cachefiles_open, i32 1)
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %14
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cachefiles_cache* @kzalloc(i32 48, i32 %21)
  store %struct.cachefiles_cache* %22, %struct.cachefiles_cache** %6, align 8
  %23 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %24 = icmp ne %struct.cachefiles_cache* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  store i64 0, i64* @cachefiles_open, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %59

28:                                               ; preds = %20
  %29 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %30 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %29, i32 0, i32 10
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load i32, i32* @RB_ROOT, align 4
  %33 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %34 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %33, i32 0, i32 9
  store i32 %32, i32* %34, align 8
  %35 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %36 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %35, i32 0, i32 8
  %37 = call i32 @rwlock_init(i32* %36)
  %38 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %39 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %38, i32 0, i32 7
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %42 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %41, i32 0, i32 0
  store i32 7, i32* %42, align 8
  %43 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %44 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %43, i32 0, i32 1
  store i32 5, i32* %44, align 4
  %45 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %46 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %48 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %47, i32 0, i32 3
  store i32 7, i32* %48, align 4
  %49 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %50 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %49, i32 0, i32 4
  store i32 5, i32* %50, align 8
  %51 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %52 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  store %struct.cachefiles_cache* %53, %struct.cachefiles_cache** %55, align 8
  %56 = load %struct.file*, %struct.file** %5, align 8
  %57 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %58 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %57, i32 0, i32 6
  store %struct.file* %56, %struct.file** %58, align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %28, %25, %17, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @xchg(i64*, i32) #1

declare dso_local %struct.cachefiles_cache* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
