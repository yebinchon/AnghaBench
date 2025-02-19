; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.typec_port = type { i32, i32, i32, i32 }

@typec_index_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @typec_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typec_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.typec_port*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.typec_port* @to_typec_port(%struct.device* %4)
  store %struct.typec_port* %5, %struct.typec_port** %3, align 8
  %6 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %7 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ida_simple_remove(i32* @typec_index_ida, i32 %8)
  %10 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %11 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %10, i32 0, i32 2
  %12 = call i32 @ida_destroy(i32* %11)
  %13 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %14 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @typec_switch_put(i32 %15)
  %17 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %18 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @typec_mux_put(i32 %19)
  %21 = load %struct.typec_port*, %struct.typec_port** %3, align 8
  %22 = call i32 @kfree(%struct.typec_port* %21)
  ret void
}

declare dso_local %struct.typec_port* @to_typec_port(%struct.device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @ida_destroy(i32*) #1

declare dso_local i32 @typec_switch_put(i32) #1

declare dso_local i32 @typec_mux_put(i32) #1

declare dso_local i32 @kfree(%struct.typec_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
