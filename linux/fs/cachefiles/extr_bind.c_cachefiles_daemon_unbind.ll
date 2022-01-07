; ModuleID = '/home/carl/AnghaBench/linux/fs/cachefiles/extr_bind.c_cachefiles_daemon_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cachefiles/extr_bind.c_cachefiles_daemon_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CACHEFILES_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"File cache on %s unregistering\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cachefiles_daemon_unbind(%struct.cachefiles_cache* %0) #0 {
  %2 = alloca %struct.cachefiles_cache*, align 8
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %2, align 8
  %3 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @CACHEFILES_READY, align 4
  %5 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %6 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %5, i32 0, i32 6
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %11 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %16 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %15, i32 0, i32 5
  %17 = call i32 @fscache_withdraw_cache(%struct.TYPE_2__* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %20 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dput(i32 %21)
  %23 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %24 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mntput(i32 %25)
  %27 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %28 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  %31 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %32 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %2, align 8
  %36 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @fscache_withdraw_cache(%struct.TYPE_2__*) #1

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @mntput(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
