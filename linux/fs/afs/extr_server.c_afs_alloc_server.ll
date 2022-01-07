; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_alloc_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_alloc_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.afs_net = type { i32 }
%struct.afs_addr_list = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@afs_server_debug_id = common dso_local global i32 0, align 4
@afs_server_update_delay = common dso_local global i64 0, align 8
@afs_server_trace_alloc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" = NULL [nomem]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afs_server* (%struct.afs_net*, i32*, %struct.afs_addr_list*)* @afs_alloc_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afs_server* @afs_alloc_server(%struct.afs_net* %0, i32* %1, %struct.afs_addr_list* %2) #0 {
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_net*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.afs_addr_list*, align 8
  %8 = alloca %struct.afs_server*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.afs_addr_list* %2, %struct.afs_addr_list** %7, align 8
  %9 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.afs_server* @kzalloc(i32 56, i32 %10)
  store %struct.afs_server* %11, %struct.afs_server** %8, align 8
  %12 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %13 = icmp ne %struct.afs_server* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %64

15:                                               ; preds = %3
  %16 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %17 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %16, i32 0, i32 10
  %18 = call i32 @atomic_set(i32* %17, i32 1)
  %19 = call i32 @atomic_inc_return(i32* @afs_server_debug_id)
  %20 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %21 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %20, i32 0, i32 9
  store i32 %19, i32* %21, align 4
  %22 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %23 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.afs_addr_list*, %struct.afs_addr_list** %7, align 8
  %26 = call i32 @RCU_INIT_POINTER(i32 %24, %struct.afs_addr_list* %25)
  %27 = load %struct.afs_addr_list*, %struct.afs_addr_list** %7, align 8
  %28 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %31 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %35 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = call i64 (...) @ktime_get_real_seconds()
  %37 = load i64, i64* @afs_server_update_delay, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %40 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %42 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %41, i32 0, i32 4
  %43 = call i32 @rwlock_init(i32* %42)
  %44 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %45 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %44, i32 0, i32 3
  %46 = call i32 @INIT_HLIST_HEAD(i32* %45)
  %47 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %48 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %47, i32 0, i32 2
  %49 = call i32 @rwlock_init(i32* %48)
  %50 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %51 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %50, i32 0, i32 1
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %54 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %57 = call i32 @afs_inc_servers_outstanding(%struct.afs_net* %56)
  %58 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %59 = load i32, i32* @afs_server_trace_alloc, align 4
  %60 = call i32 @trace_afs_server(%struct.afs_server* %58, i32 1, i32 %59)
  %61 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %62 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.afs_server* %61)
  %63 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  store %struct.afs_server* %63, %struct.afs_server** %4, align 8
  br label %66

64:                                               ; preds = %14
  %65 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.afs_server* null, %struct.afs_server** %4, align 8
  br label %66

66:                                               ; preds = %64, %15
  %67 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  ret %struct.afs_server* %67
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_server* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.afs_addr_list*) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @afs_inc_servers_outstanding(%struct.afs_net*) #1

declare dso_local i32 @trace_afs_server(%struct.afs_server*, i32, i32) #1

declare dso_local i32 @_leave(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
