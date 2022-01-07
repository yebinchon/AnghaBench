; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_put_vlserverlist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_list.c_afs_put_vlserverlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { i32 }
%struct.afs_vlserver_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_put_vlserverlist(%struct.afs_net* %0, %struct.afs_vlserver_list* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_vlserver_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_vlserver_list* %1, %struct.afs_vlserver_list** %4, align 8
  %7 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %8 = icmp ne %struct.afs_vlserver_list* %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %11 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %10, i32 0, i32 2
  %12 = call i32 @atomic_dec_return(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %19 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %24 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %25 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @afs_put_vlserver(%struct.afs_net* %23, i32 %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %38 = load i32, i32* @rcu, align 4
  %39 = call i32 @kfree_rcu(%struct.afs_vlserver_list* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %9
  br label %41

41:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @afs_put_vlserver(%struct.afs_net*, i32) #1

declare dso_local i32 @kfree_rcu(%struct.afs_vlserver_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
