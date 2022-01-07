; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_inuse.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_daemon.c_cachefiles_daemon_inuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cachefiles_cache = type { i32 }
%struct.path = type { i32 }
%struct.cred = type { i32 }

@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inuse applied to unready cache\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CACHEFILES_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"inuse applied to dead cache\0A\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"inuse command requires dirfd to be a directory\0A\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"inuse command requires dirfd and filename\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, i8*)* @cachefiles_daemon_inuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_daemon_inuse(%struct.cachefiles_cache* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cachefiles_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @strchr(i8* %9, i8 signext 47)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* @CACHEFILES_READY, align 4
  %15 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %16 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %13
  %24 = load i32, i32* @CACHEFILES_DEAD, align 4
  %25 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %26 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %65

33:                                               ; preds = %23
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @get_fs_pwd(i32 %36, %struct.path* %6)
  %38 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @d_can_lookup(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %45 = call i32 @cachefiles_begin_secure(%struct.cachefiles_cache* %44, %struct.cred** %7)
  %46 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %47 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @cachefiles_check_in_use(%struct.cachefiles_cache* %46, i32 %48, i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %4, align 8
  %52 = load %struct.cred*, %struct.cred** %7, align 8
  %53 = call i32 @cachefiles_end_secure(%struct.cachefiles_cache* %51, %struct.cred* %52)
  %54 = call i32 @path_put(%struct.path* %6)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %65

56:                                               ; preds = %42
  %57 = call i32 @path_put(%struct.path* %6)
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ENOTDIR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %65

61:                                               ; preds = %12
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %56, %43, %29, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @get_fs_pwd(i32, %struct.path*) #1

declare dso_local i32 @d_can_lookup(i32) #1

declare dso_local i32 @cachefiles_begin_secure(%struct.cachefiles_cache*, %struct.cred**) #1

declare dso_local i32 @cachefiles_check_in_use(%struct.cachefiles_cache*, i32, i8*) #1

declare dso_local i32 @cachefiles_end_secure(%struct.cachefiles_cache*, %struct.cred*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
