; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_gc_servers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_gc_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, i32, i32 }
%struct.afs_server = type { i32, i32, i32, i32, i32, %struct.afs_server* }

@afs_server_trace_gc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_net*, %struct.afs_server*)* @afs_gc_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_gc_servers(%struct.afs_net* %0, %struct.afs_server* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_server*, align 8
  %5 = alloca %struct.afs_server*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_server* %1, %struct.afs_server** %4, align 8
  br label %8

8:                                                ; preds = %70, %2
  %9 = load %struct.afs_server*, %struct.afs_server** %4, align 8
  store %struct.afs_server* %9, %struct.afs_server** %5, align 8
  %10 = icmp ne %struct.afs_server* %9, null
  br i1 %10, label %11, label %71

11:                                               ; preds = %8
  %12 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %13 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %12, i32 0, i32 5
  %14 = load %struct.afs_server*, %struct.afs_server** %13, align 8
  store %struct.afs_server* %14, %struct.afs_server** %4, align 8
  %15 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %16 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %15, i32 0, i32 1
  %17 = call i32 @write_seqlock(i32* %16)
  store i32 1, i32* %7, align 4
  %18 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %19 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %18, i32 0, i32 4
  %20 = call i32 @atomic_try_cmpxchg(i32* %19, i32* %7, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @afs_server_trace_gc, align 4
  %24 = call i32 @trace_afs_server(%struct.afs_server* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %11
  %28 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %29 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %28, i32 0, i32 3
  %30 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %31 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %30, i32 0, i32 2
  %32 = call i32 @rb_erase(i32* %29, i32* %31)
  %33 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %34 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %33, i32 0, i32 2
  %35 = call i32 @hlist_del_rcu(i32* %34)
  br label %36

36:                                               ; preds = %27, %11
  %37 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %38 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %37, i32 0, i32 1
  %39 = call i32 @write_sequnlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %44 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %43, i32 0, i32 0
  %45 = call i32 @write_seqlock(i32* %44)
  %46 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %47 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %46, i32 0, i32 1
  %48 = call i32 @hlist_unhashed(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %52 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %51, i32 0, i32 1
  %53 = call i32 @hlist_del_rcu(i32* %52)
  br label %54

54:                                               ; preds = %50, %42
  %55 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %56 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %55, i32 0, i32 0
  %57 = call i32 @hlist_unhashed(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %54
  %60 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %61 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %60, i32 0, i32 0
  %62 = call i32 @hlist_del_rcu(i32* %61)
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %65 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %64, i32 0, i32 0
  %66 = call i32 @write_sequnlock(i32* %65)
  %67 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %68 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %69 = call i32 @afs_destroy_server(%struct.afs_net* %67, %struct.afs_server* %68)
  br label %70

70:                                               ; preds = %63, %36
  br label %8

71:                                               ; preds = %8
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @atomic_try_cmpxchg(i32*, i32*, i32) #1

declare dso_local i32 @trace_afs_server(%struct.afs_server*, i32, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @afs_destroy_server(%struct.afs_net*, %struct.afs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
