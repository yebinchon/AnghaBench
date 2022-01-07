; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_sock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_common_pcmcia_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.soc_pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.soc_pcmcia_socket*)* }

@.str = private unnamed_addr constant [21 x i8] c"initializing socket\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @soc_common_pcmcia_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_common_pcmcia_sock_init(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %4 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %5 = call %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket* %4)
  store %struct.soc_pcmcia_socket* %5, %struct.soc_pcmcia_socket** %3, align 8
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %7 = call i32 @debug(%struct.soc_pcmcia_socket* %6, i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %9 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %11, align 8
  %13 = icmp ne i32 (%struct.soc_pcmcia_socket*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %16 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.soc_pcmcia_socket*)*, i32 (%struct.soc_pcmcia_socket*)** %18, align 8
  %20 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %21 = call i32 %19(%struct.soc_pcmcia_socket* %20)
  br label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %3, align 8
  %24 = call i32 @soc_pcmcia_hw_enable(%struct.soc_pcmcia_socket* %23)
  ret i32 0
}

declare dso_local %struct.soc_pcmcia_socket* @to_soc_pcmcia_socket(%struct.pcmcia_socket*) #1

declare dso_local i32 @debug(%struct.soc_pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @soc_pcmcia_hw_enable(%struct.soc_pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
