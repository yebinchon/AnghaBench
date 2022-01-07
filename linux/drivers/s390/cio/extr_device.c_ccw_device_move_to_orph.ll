; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_move_to_orph.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_device_move_to_orph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.subchannel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.channel_subsystem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccw_device*)* @ccw_device_move_to_orph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_device_move_to_orph(%struct.ccw_device* %0) #0 {
  %2 = alloca %struct.ccw_device*, align 8
  %3 = alloca %struct.subchannel*, align 8
  %4 = alloca %struct.channel_subsystem*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %2, align 8
  %5 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %6 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.subchannel* @to_subchannel(i32 %8)
  store %struct.subchannel* %9, %struct.subchannel** %3, align 8
  %10 = load %struct.subchannel*, %struct.subchannel** %3, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.channel_subsystem* @to_css(i32 %13)
  store %struct.channel_subsystem* %14, %struct.channel_subsystem** %4, align 8
  %15 = load %struct.ccw_device*, %struct.ccw_device** %2, align 8
  %16 = load %struct.channel_subsystem*, %struct.channel_subsystem** %4, align 8
  %17 = getelementptr inbounds %struct.channel_subsystem, %struct.channel_subsystem* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ccw_device_move_to_sch(%struct.ccw_device* %15, i32 %18)
  ret i32 %19
}

declare dso_local %struct.subchannel* @to_subchannel(i32) #1

declare dso_local %struct.channel_subsystem* @to_css(i32) #1

declare dso_local i32 @ccw_device_move_to_sch(%struct.ccw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
