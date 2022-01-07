; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_availability_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_drp.c_uwb_drp_availability_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i32 }
%struct.uwb_dev = type { i32 }
%struct.uwb_ie_drp_avail = type { i32 }

@UWB_NUM_MAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_rc*, %struct.uwb_dev*, %struct.uwb_ie_drp_avail*)* @uwb_drp_availability_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_drp_availability_process(%struct.uwb_rc* %0, %struct.uwb_dev* %1, %struct.uwb_ie_drp_avail* %2) #0 {
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_dev*, align 8
  %6 = alloca %struct.uwb_ie_drp_avail*, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_dev* %1, %struct.uwb_dev** %5, align 8
  store %struct.uwb_ie_drp_avail* %2, %struct.uwb_ie_drp_avail** %6, align 8
  %7 = load %struct.uwb_dev*, %struct.uwb_dev** %5, align 8
  %8 = getelementptr inbounds %struct.uwb_dev, %struct.uwb_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uwb_ie_drp_avail*, %struct.uwb_ie_drp_avail** %6, align 8
  %11 = getelementptr inbounds %struct.uwb_ie_drp_avail, %struct.uwb_ie_drp_avail* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UWB_NUM_MAS, align 4
  %14 = call i32 @bitmap_copy(i32 %9, i32 %12, i32 %13)
  ret void
}

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
