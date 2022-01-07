; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_configure_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_palmtx.c_palmtx_pcmcia_configure_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GPIO_NR_PALMTX_PCMCIA_POWER1 = common dso_local global i32 0, align 4
@GPIO_NR_PALMTX_PCMCIA_POWER2 = common dso_local global i32 0, align 4
@GPIO_NR_PALMTX_PCMCIA_RESET = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_pcmcia_socket*, %struct.TYPE_3__*)* @palmtx_pcmcia_configure_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmtx_pcmcia_configure_socket(%struct.soc_pcmcia_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.soc_pcmcia_socket*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER1, align 4
  %6 = call i32 @gpio_set_value(i32 %5, i32 1)
  %7 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_POWER2, align 4
  %8 = call i32 @gpio_set_value(i32 %7, i32 1)
  %9 = load i32, i32* @GPIO_NR_PALMTX_PCMCIA_RESET, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SS_RESET, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @gpio_set_value(i32 %9, i32 %18)
  ret i32 0
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
