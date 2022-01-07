; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_mcast_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_mcast_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@mcast_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Multicast delivery timeout.\0A\00", align 1
@priv = common dso_local global %struct.cw1200_common* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_mcast_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.cw1200_common*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %5 = ptrtoint %struct.cw1200_common* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @mcast_timeout, align 4
  %8 = call %struct.cw1200_common* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.cw1200_common* %8, %struct.cw1200_common** %3, align 8
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %10 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wiphy_warn(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %19 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %24 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ false, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = call i32 @cw1200_bh_wakeup(%struct.cw1200_common* %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 1
  %42 = call i32 @spin_unlock_bh(i32* %41)
  ret void
}

declare dso_local %struct.cw1200_common* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @wiphy_warn(i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @cw1200_bh_wakeup(%struct.cw1200_common*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
