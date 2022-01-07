; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_destroy_server.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_destroy_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_server = type { i32, i32, i32, i32, i32 }
%struct.afs_addr_list = type { i32 }
%struct.afs_addr_cursor = type { i32, i32, %struct.afs_addr_list* }

@afs_server_trace_give_up_cb = common dso_local global i32 0, align 4
@AFS_SERVER_FL_MAY_HAVE_CB = common dso_local global i32 0, align 4
@afs_server_trace_destroy = common dso_local global i32 0, align 4
@afs_server_rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_net*, %struct.afs_server*)* @afs_destroy_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_destroy_server(%struct.afs_net* %0, %struct.afs_server* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_addr_list*, align 8
  %6 = alloca %struct.afs_addr_cursor, align 8
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_server* %1, %struct.afs_server** %4, align 8
  %7 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %8 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.afs_addr_list* @rcu_access_pointer(i32 %9)
  store %struct.afs_addr_list* %10, %struct.afs_addr_list** %5, align 8
  %11 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %6, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %6, i32 0, i32 1
  %13 = load %struct.afs_addr_list*, %struct.afs_addr_list** %5, align 8
  %14 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.afs_addr_cursor, %struct.afs_addr_cursor* %6, i32 0, i32 2
  %17 = load %struct.afs_addr_list*, %struct.afs_addr_list** %5, align 8
  store %struct.afs_addr_list* %17, %struct.afs_addr_list** %16, align 8
  %18 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %19 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %20 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %19, i32 0, i32 1
  %21 = call i64 @atomic_read(i32* %20)
  %22 = load i32, i32* @afs_server_trace_give_up_cb, align 4
  %23 = call i32 @trace_afs_server(%struct.afs_server* %18, i64 %21, i32 %22)
  %24 = load i32, i32* @AFS_SERVER_FL_MAY_HAVE_CB, align 4
  %25 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %26 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %25, i32 0, i32 3
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %31 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %32 = call i32 @afs_fs_give_up_all_callbacks(%struct.afs_net* %30, %struct.afs_server* %31, %struct.afs_addr_cursor* %6, i32* null)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %35 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %34, i32 0, i32 2
  %36 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %37 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %36, i32 0, i32 2
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_var_event(i32* %35, i32 %40)
  %42 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %43 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %44 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %43, i32 0, i32 1
  %45 = call i64 @atomic_read(i32* %44)
  %46 = load i32, i32* @afs_server_trace_destroy, align 4
  %47 = call i32 @trace_afs_server(%struct.afs_server* %42, i64 %45, i32 %46)
  %48 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  %49 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %48, i32 0, i32 0
  %50 = load i32, i32* @afs_server_rcu, align 4
  %51 = call i32 @call_rcu(i32* %49, i32 %50)
  %52 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %53 = call i32 @afs_dec_servers_outstanding(%struct.afs_net* %52)
  ret void
}

declare dso_local %struct.afs_addr_list* @rcu_access_pointer(i32) #1

declare dso_local i32 @trace_afs_server(%struct.afs_server*, i64, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @afs_fs_give_up_all_callbacks(%struct.afs_net*, %struct.afs_server*, %struct.afs_addr_cursor*, i32*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @afs_dec_servers_outstanding(%struct.afs_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
