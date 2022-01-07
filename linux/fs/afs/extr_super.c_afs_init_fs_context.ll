; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_super.c_afs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.afs_fs_context*, i32 }
%struct.afs_fs_context = type { %struct.afs_cell*, i32, i32 }
%struct.afs_cell = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AFSVL_ROVOL = common dso_local global i32 0, align 4
@afs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @afs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.afs_fs_context*, align 8
  %5 = alloca %struct.afs_cell*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.afs_fs_context* @kzalloc(i32 16, i32 %6)
  store %struct.afs_fs_context* %7, %struct.afs_fs_context** %4, align 8
  %8 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %9 = icmp ne %struct.afs_fs_context* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load i32, i32* @AFSVL_ROVOL, align 4
  %15 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %16 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %18 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @afs_net(i32 %19)
  %21 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %25 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.afs_cell* @afs_lookup_cell_rcu(i32 %26, i32* null, i32 0)
  store %struct.afs_cell* %27, %struct.afs_cell** %5, align 8
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %30 = call i64 @IS_ERR(%struct.afs_cell* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  store %struct.afs_cell* null, %struct.afs_cell** %5, align 8
  br label %33

33:                                               ; preds = %32, %13
  %34 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %35 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %36 = getelementptr inbounds %struct.afs_fs_context, %struct.afs_fs_context* %35, i32 0, i32 0
  store %struct.afs_cell* %34, %struct.afs_cell** %36, align 8
  %37 = load %struct.afs_fs_context*, %struct.afs_fs_context** %4, align 8
  %38 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 1
  store %struct.afs_fs_context* %37, %struct.afs_fs_context** %39, align 8
  %40 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 0
  store i32* @afs_context_ops, i32** %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %33, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.afs_fs_context* @kzalloc(i32, i32) #1

declare dso_local i32 @afs_net(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.afs_cell* @afs_lookup_cell_rcu(i32, i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @IS_ERR(%struct.afs_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
