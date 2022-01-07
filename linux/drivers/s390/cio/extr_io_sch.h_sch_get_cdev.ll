; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_io_sch.h_sch_get_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_io_sch.h_sch_get_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.subchannel = type { i32 }
%struct.io_subchannel_private = type { %struct.ccw_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ccw_device* (%struct.subchannel*)* @sch_get_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ccw_device* @sch_get_cdev(%struct.subchannel* %0) #0 {
  %2 = alloca %struct.subchannel*, align 8
  %3 = alloca %struct.io_subchannel_private*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %2, align 8
  %4 = load %struct.subchannel*, %struct.subchannel** %2, align 8
  %5 = call %struct.io_subchannel_private* @to_io_private(%struct.subchannel* %4)
  store %struct.io_subchannel_private* %5, %struct.io_subchannel_private** %3, align 8
  %6 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %3, align 8
  %7 = icmp ne %struct.io_subchannel_private* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.io_subchannel_private*, %struct.io_subchannel_private** %3, align 8
  %10 = getelementptr inbounds %struct.io_subchannel_private, %struct.io_subchannel_private* %9, i32 0, i32 0
  %11 = load %struct.ccw_device*, %struct.ccw_device** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.ccw_device* [ %11, %8 ], [ null, %12 ]
  ret %struct.ccw_device* %14
}

declare dso_local %struct.io_subchannel_private* @to_io_private(%struct.subchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
