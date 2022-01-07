; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_free_net.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio.c_rio_free_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_net = type { i32, i32 (%struct.rio_net*)*, i32 }

@rio_global_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rio_free_net(%struct.rio_net* %0) #0 {
  %2 = alloca %struct.rio_net*, align 8
  store %struct.rio_net* %0, %struct.rio_net** %2, align 8
  %3 = call i32 @spin_lock(i32* @rio_global_list_lock)
  %4 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %5 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %4, i32 0, i32 2
  %6 = call i32 @list_empty(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %10 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %9, i32 0, i32 2
  %11 = call i32 @list_del(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = call i32 @spin_unlock(i32* @rio_global_list_lock)
  %14 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %15 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %14, i32 0, i32 1
  %16 = load i32 (%struct.rio_net*)*, i32 (%struct.rio_net*)** %15, align 8
  %17 = icmp ne i32 (%struct.rio_net*)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %20 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %19, i32 0, i32 1
  %21 = load i32 (%struct.rio_net*)*, i32 (%struct.rio_net*)** %20, align 8
  %22 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %23 = call i32 %21(%struct.rio_net* %22)
  br label %24

24:                                               ; preds = %18, %12
  %25 = load %struct.rio_net*, %struct.rio_net** %2, align 8
  %26 = getelementptr inbounds %struct.rio_net, %struct.rio_net* %25, i32 0, i32 0
  %27 = call i32 @device_unregister(i32* %26)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
