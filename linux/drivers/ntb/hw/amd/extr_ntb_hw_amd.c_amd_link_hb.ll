; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_link_hb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/amd/extr_ntb_hw_amd.c_amd_link_hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.amd_ntb_dev = type { i32, i32 }

@AMD_LINK_HB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @amd_link_hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_link_hb(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.amd_ntb_dev*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %5 = call %struct.amd_ntb_dev* @hb_ndev(%struct.work_struct* %4)
  store %struct.amd_ntb_dev* %5, %struct.amd_ntb_dev** %3, align 8
  %6 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %7 = call i64 @amd_poll_link(%struct.amd_ntb_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %10, i32 0, i32 1
  %12 = call i32 @ntb_link_event(i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %15 = call i32 @amd_link_is_up(%struct.amd_ntb_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.amd_ntb_dev*, %struct.amd_ntb_dev** %3, align 8
  %19 = getelementptr inbounds %struct.amd_ntb_dev, %struct.amd_ntb_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @AMD_LINK_HB_TIMEOUT, align 4
  %21 = call i32 @schedule_delayed_work(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.amd_ntb_dev* @hb_ndev(%struct.work_struct*) #1

declare dso_local i64 @amd_poll_link(%struct.amd_ntb_dev*) #1

declare dso_local i32 @ntb_link_event(i32*) #1

declare dso_local i32 @amd_link_is_up(%struct.amd_ntb_dev*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
