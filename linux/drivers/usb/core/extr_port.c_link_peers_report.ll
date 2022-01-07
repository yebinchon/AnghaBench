; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_link_peers_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_port.c_link_peers_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_port = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"peered to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to peer to %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"usb: port power management may be unreliable\0A\00", align 1
@usb_port_block_power_off = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_port*, %struct.usb_port*)* @link_peers_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_peers_report(%struct.usb_port* %0, %struct.usb_port* %1) #0 {
  %3 = alloca %struct.usb_port*, align 8
  %4 = alloca %struct.usb_port*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_port* %0, %struct.usb_port** %3, align 8
  store %struct.usb_port* %1, %struct.usb_port** %4, align 8
  %6 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %7 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %8 = call i32 @link_peers(%struct.usb_port* %6, %struct.usb_port* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %13 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %12, i32 0, i32 0
  %14 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %15 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %14, i32 0, i32 0
  %16 = call i32 @dev_name(i32* %15)
  %17 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.usb_port*, %struct.usb_port** %3, align 8
  %20 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %19, i32 0, i32 0
  %21 = load %struct.usb_port*, %struct.usb_port** %4, align 8
  %22 = getelementptr inbounds %struct.usb_port, %struct.usb_port* %21, i32 0, i32 0
  %23 = call i32 @dev_name(i32* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  %26 = call i32 @pr_warn_once(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* @usb_port_block_power_off, align 4
  br label %27

27:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @link_peers(%struct.usb_port*, %struct.usb_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @pr_warn_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
