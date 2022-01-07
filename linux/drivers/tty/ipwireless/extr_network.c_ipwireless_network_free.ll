; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_network_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipwireless_network_free(%struct.ipw_network* %0) #0 {
  %2 = alloca %struct.ipw_network*, align 8
  store %struct.ipw_network* %0, %struct.ipw_network** %2, align 8
  %3 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %6 = call i32 @ipwireless_ppp_close(%struct.ipw_network* %5)
  %7 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %7, i32 0, i32 3
  %9 = call i32 @flush_work(i32* %8)
  %10 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %10, i32 0, i32 2
  %12 = call i32 @flush_work(i32* %11)
  %13 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %14 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ipwireless_stop_interrupts(i32 %15)
  %17 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %18 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ipwireless_associate_network(i32 %19, i32* null)
  %21 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %22 = call i32 @kfree(%struct.ipw_network* %21)
  ret void
}

declare dso_local i32 @ipwireless_ppp_close(%struct.ipw_network*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @ipwireless_stop_interrupts(i32) #1

declare dso_local i32 @ipwireless_associate_network(i32, i32*) #1

declare dso_local i32 @kfree(%struct.ipw_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
