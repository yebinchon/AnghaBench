; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@dead_socket = common dso_local global i32 0, align 4
@CPUFREQ_TRANSITION_NOTIFIER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soc_pcmcia_remove_one(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %3 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %3, i32 0, i32 8
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %6, i32 0, i32 7
  %8 = call i32 @pcmcia_unregister_socket(i32* %7)
  %9 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %10 = call i32 @soc_pcmcia_hw_shutdown(%struct.soc_pcmcia_socket* %9)
  %11 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %12 = call i32 @soc_common_pcmcia_config_skt(%struct.soc_pcmcia_socket* %11, i32* @dead_socket)
  %13 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @iounmap(i32* %15)
  %17 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %18 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %20 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %19, i32 0, i32 3
  %21 = call i32 @release_resource(i32* %20)
  %22 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %23 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %22, i32 0, i32 2
  %24 = call i32 @release_resource(i32* %23)
  %25 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %26 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %25, i32 0, i32 1
  %27 = call i32 @release_resource(i32* %26)
  %28 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %29 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %28, i32 0, i32 0
  %30 = call i32 @release_resource(i32* %29)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @soc_pcmcia_hw_shutdown(%struct.soc_pcmcia_socket*) #1

declare dso_local i32 @soc_common_pcmcia_config_skt(%struct.soc_pcmcia_socket*, i32*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @release_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
