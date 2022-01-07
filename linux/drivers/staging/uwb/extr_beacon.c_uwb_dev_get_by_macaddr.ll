; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_dev_get_by_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_beacon.c_uwb_dev_get_by_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_dev = type { i32 }
%struct.uwb_rc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uwb_mac_addr = type { i32 }
%struct.uwb_beca_e = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uwb_dev* @uwb_dev_get_by_macaddr(%struct.uwb_rc* %0, %struct.uwb_mac_addr* %1) #0 {
  %3 = alloca %struct.uwb_rc*, align 8
  %4 = alloca %struct.uwb_mac_addr*, align 8
  %5 = alloca %struct.uwb_dev*, align 8
  %6 = alloca %struct.uwb_beca_e*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %3, align 8
  store %struct.uwb_mac_addr* %1, %struct.uwb_mac_addr** %4, align 8
  store %struct.uwb_dev* null, %struct.uwb_dev** %5, align 8
  %7 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %8 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %12 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %4, align 8
  %13 = call %struct.uwb_beca_e* @__uwb_beca_find_bymac(%struct.uwb_rc* %11, %struct.uwb_mac_addr* %12)
  store %struct.uwb_beca_e* %13, %struct.uwb_beca_e** %6, align 8
  %14 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %15 = icmp ne %struct.uwb_beca_e* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %18 = load %struct.uwb_beca_e*, %struct.uwb_beca_e** %6, align 8
  %19 = getelementptr inbounds %struct.uwb_beca_e, %struct.uwb_beca_e* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.uwb_dev* @uwb_dev_try_get(%struct.uwb_rc* %17, i32 %20)
  store %struct.uwb_dev* %21, %struct.uwb_dev** %5, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %3, align 8
  %24 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.uwb_dev*, %struct.uwb_dev** %5, align 8
  ret %struct.uwb_dev* %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uwb_beca_e* @__uwb_beca_find_bymac(%struct.uwb_rc*, %struct.uwb_mac_addr*) #1

declare dso_local %struct.uwb_dev* @uwb_dev_try_get(%struct.uwb_rc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
