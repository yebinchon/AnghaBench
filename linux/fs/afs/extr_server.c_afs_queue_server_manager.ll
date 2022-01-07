; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_queue_server_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_queue_server_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }

@afs_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_net*)* @afs_queue_server_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_queue_server_manager(%struct.afs_net* %0) #0 {
  %2 = alloca %struct.afs_net*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %2, align 8
  %3 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %4 = call i32 @afs_inc_servers_outstanding(%struct.afs_net* %3)
  %5 = load i32, i32* @afs_wq, align 4
  %6 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %7 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %6, i32 0, i32 0
  %8 = call i32 @queue_work(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.afs_net*, %struct.afs_net** %2, align 8
  %12 = call i32 @afs_dec_servers_outstanding(%struct.afs_net* %11)
  br label %13

13:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @afs_inc_servers_outstanding(%struct.afs_net*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @afs_dec_servers_outstanding(%struct.afs_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
