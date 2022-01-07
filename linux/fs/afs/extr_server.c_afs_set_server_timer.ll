; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_set_server_timer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_server.c_afs_set_server_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.afs_net*, i32)* @afs_set_server_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @afs_set_server_timer(%struct.afs_net* %0, i32 %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %6 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %11 = call i32 @afs_inc_servers_outstanding(%struct.afs_net* %10)
  %12 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %13 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %12, i32 0, i32 0
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = call i64 @timer_reduce(i32* %13, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %24 = call i32 @afs_dec_servers_outstanding(%struct.afs_net* %23)
  br label %25

25:                                               ; preds = %22, %9
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local i32 @afs_inc_servers_outstanding(%struct.afs_net*) #1

declare dso_local i64 @timer_reduce(i32*, i64) #1

declare dso_local i32 @afs_dec_servers_outstanding(%struct.afs_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
