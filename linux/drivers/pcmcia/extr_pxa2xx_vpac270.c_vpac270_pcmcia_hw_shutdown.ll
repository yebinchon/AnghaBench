; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_vpac270.c_vpac270_pcmcia_hw_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_pxa2xx_vpac270.c_vpac270_pcmcia_hw_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }

@vpac270_pcmcia_gpios = common dso_local global i32 0, align 4
@vpac270_cf_gpios = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*)* @vpac270_pcmcia_hw_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpac270_pcmcia_hw_shutdown(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  %3 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @vpac270_pcmcia_gpios, align 4
  %9 = load i32, i32* @vpac270_pcmcia_gpios, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @gpio_free_array(i32 %8, i32 %10)
  br label %17

12:                                               ; preds = %1
  %13 = load i32, i32* @vpac270_cf_gpios, align 4
  %14 = load i32, i32* @vpac270_cf_gpios, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @gpio_free_array(i32 %13, i32 %15)
  br label %17

17:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @gpio_free_array(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
