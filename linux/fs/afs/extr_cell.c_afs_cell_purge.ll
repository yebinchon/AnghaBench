; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_cell_purge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cell.c_afs_cell_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, i32, i32, i32 }
%struct.afs_cell = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"del timer\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"kick mgr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wait\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_cell_purge(%struct.afs_net* %0) #0 {
  %2 = alloca %struct.afs_net*, align 8
  %3 = alloca %struct.afs_cell*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %2, align 8
  %4 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %6 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %5, i32 0, i32 2
  %7 = call i32 @write_seqlock(i32* %6)
  %8 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %9 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.afs_cell* @rcu_access_pointer(i32 %10)
  store %struct.afs_cell* %11, %struct.afs_cell** %3, align 8
  %12 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %13 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @RCU_INIT_POINTER(i32 %14, i32* null)
  %16 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %17 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %16, i32 0, i32 2
  %18 = call i32 @write_sequnlock(i32* %17)
  %19 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %20 = load %struct.afs_cell*, %struct.afs_cell** %3, align 8
  %21 = call i32 @afs_put_cell(%struct.afs_net* %19, %struct.afs_cell* %20)
  %22 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %24 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %23, i32 0, i32 1
  %25 = call i64 @del_timer_sync(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %29 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %28, i32 0, i32 0
  %30 = call i32 @atomic_dec(i32* %29)
  br label %31

31:                                               ; preds = %27, %1
  %32 = call i32 @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %34 = call i32 @afs_queue_cell_manager(%struct.afs_net* %33)
  %35 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %37 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %36, i32 0, i32 0
  %38 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %39 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_var_event(i32* %37, i32 %43)
  %45 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local %struct.afs_cell* @rcu_access_pointer(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @afs_put_cell(%struct.afs_net*, %struct.afs_cell*) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @afs_queue_cell_manager(%struct.afs_net*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
