; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_messaging.c_ecryptfs_spawn_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_messaging.c_ecryptfs_spawn_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_daemon = type { i32, i64, i32, i32, i32, %struct.file* }
%struct.file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ecryptfs_daemon_hash = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_spawn_daemon(%struct.ecryptfs_daemon** %0, %struct.file* %1) #0 {
  %3 = alloca %struct.ecryptfs_daemon**, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.ecryptfs_daemon** %0, %struct.ecryptfs_daemon*** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.ecryptfs_daemon* @kzalloc(i32 40, i32 %6)
  %8 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  store %struct.ecryptfs_daemon* %7, %struct.ecryptfs_daemon** %8, align 8
  %9 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %10 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %9, align 8
  %11 = icmp ne %struct.ecryptfs_daemon* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %18 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %17, align 8
  %19 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %18, i32 0, i32 5
  store %struct.file* %16, %struct.file** %19, align 8
  %20 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %21 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %20, align 8
  %22 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %21, i32 0, i32 4
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %25 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %24, align 8
  %26 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %25, i32 0, i32 3
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %29 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %28, align 8
  %30 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %29, i32 0, i32 2
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %33 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %32, align 8
  %34 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.ecryptfs_daemon**, %struct.ecryptfs_daemon*** %3, align 8
  %36 = load %struct.ecryptfs_daemon*, %struct.ecryptfs_daemon** %35, align 8
  %37 = getelementptr inbounds %struct.ecryptfs_daemon, %struct.ecryptfs_daemon* %36, i32 0, i32 0
  %38 = load i32*, i32** @ecryptfs_daemon_hash, align 8
  %39 = call i64 (...) @ecryptfs_current_euid_hash()
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @hlist_add_head(i32* %37, i32* %40)
  br label %42

42:                                               ; preds = %15, %12
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local %struct.ecryptfs_daemon* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @ecryptfs_current_euid_hash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
