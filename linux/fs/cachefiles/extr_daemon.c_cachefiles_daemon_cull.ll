; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_cull.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_cull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cachefiles_cache = type { i32 }
%struct.path = type { i32 }
%struct.cred = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cull applied to unready cache\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CACHEFILES_DEAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"cull applied to dead cache\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"cull command requires dirfd to be a directory\0A\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"cull command requires dirfd and filename\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_cull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_cull(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @_enter(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strchr(i8* %11, i8 signext 47)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %65

15:                                               ; preds = %2
  %16 = load i32, i32* @CACHEFILES_READY, align 4
  %17 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %18 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %15
  %26 = load i32, i32* @CACHEFILES_DEAD, align 4
  %27 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %28 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %25
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_fs_pwd(i32 %38, %struct.path* %6)
  %40 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @d_can_lookup(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %60

45:                                               ; preds = %35
  %46 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %47 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %46, %struct.cred** %7)
  %48 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %49 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @cachefiles_cull(%struct.cachefiles_cache* %48, i32 %50, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %54 = load %struct.cred*, %struct.cred** %7, align 8
  %55 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %53, %struct.cred* %54)
  %56 = call i32 @path_put(%struct.path* %6)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %44
  %61 = call i32 @path_put(%struct.path* %6)
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @ENOTDIR, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %14
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %60, %45, %31, %21
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @_enter(i8*, i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_fs_pwd(i32, %struct.path*) #1

declare dso_local i32 @d_can_lookup(i32) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @cachefiles_cull(%struct.cachefiles_cache*, i32, i8*) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
