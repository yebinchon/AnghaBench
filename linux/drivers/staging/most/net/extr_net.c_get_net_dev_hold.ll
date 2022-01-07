; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_get_net_dev_hold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/net/extr_net.c_get_net_dev_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_dev_context = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.most_interface = type { i32 }

@list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_dev_context* (%struct.most_interface*)* @get_net_dev_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_dev_context* @get_net_dev_hold(%struct.most_interface* %0) #0 {
  %2 = alloca %struct.most_interface*, align 8
  %3 = alloca %struct.net_dev_context*, align 8
  %4 = alloca i64, align 8
  store %struct.most_interface* %0, %struct.most_interface** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %5)
  %7 = load %struct.most_interface*, %struct.most_interface** %2, align 8
  %8 = call %struct.net_dev_context* @get_net_dev(%struct.most_interface* %7)
  store %struct.net_dev_context* %8, %struct.net_dev_context** %3, align 8
  %9 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %10 = icmp ne %struct.net_dev_context* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %13 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %19 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  %25 = getelementptr inbounds %struct.net_dev_context, %struct.net_dev_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_hold(i32 %26)
  br label %29

28:                                               ; preds = %17, %11, %1
  store %struct.net_dev_context* null, %struct.net_dev_context** %3, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %30)
  %32 = load %struct.net_dev_context*, %struct.net_dev_context** %3, align 8
  ret %struct.net_dev_context* %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.net_dev_context* @get_net_dev(%struct.most_interface*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
