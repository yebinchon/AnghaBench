; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c___fwtty_write_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fwserial/extr_fwserial.c___fwtty_write_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwtty_port = type { i32 }
%struct.fwtty_peer = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwtty_port*)* @__fwtty_write_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fwtty_write_port_status(%struct.fwtty_port* %0) #0 {
  %2 = alloca %struct.fwtty_port*, align 8
  %3 = alloca %struct.fwtty_peer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fwtty_port* %0, %struct.fwtty_port** %2, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %9 = call i32 @__fwtty_port_line_status(%struct.fwtty_port* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %12 = getelementptr inbounds %struct.fwtty_port, %struct.fwtty_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fwtty_peer* @rcu_dereference(i32 %13)
  store %struct.fwtty_peer* %14, %struct.fwtty_peer** %3, align 8
  %15 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %16 = icmp ne %struct.fwtty_peer* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %19 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %20 = load %struct.fwtty_peer*, %struct.fwtty_peer** %3, align 8
  %21 = getelementptr inbounds %struct.fwtty_peer, %struct.fwtty_peer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fwtty_port*, %struct.fwtty_port** %2, align 8
  %24 = call i32 @fwtty_send_data_async(%struct.fwtty_peer* %18, i32 %19, i32 %22, i32* %5, i32 4, i32* null, %struct.fwtty_port* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @__fwtty_port_line_status(%struct.fwtty_port*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.fwtty_peer* @rcu_dereference(i32) #1

declare dso_local i32 @fwtty_send_data_async(%struct.fwtty_peer*, i32, i32, i32*, i32, i32*, %struct.fwtty_port*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
