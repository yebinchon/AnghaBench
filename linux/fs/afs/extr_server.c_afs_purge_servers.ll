; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_purge_servers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_purge_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_purge_servers(%struct.afs_net* %0) #0 {
  %2 = alloca %struct.afs_net*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %2, align 8
  %3 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %5 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %4, i32 0, i32 1
  %6 = call i64 @del_timer_sync(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %10 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %9, i32 0, i32 0
  %11 = call i32 @atomic_dec(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %14 = call i32 @afs_queue_server_manager(%struct.afs_net* %13)
  %15 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %17 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %16, i32 0, i32 0
  %18 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %19 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_var_event(i32* %17, i32 %23)
  %25 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @afs_queue_server_manager(%struct.afs_net*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
