; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_lubbock.c_pcmcia_lubbock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_sa1111_lubbock.c_pcmcia_lubbock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1111_dev = type { i32 }

@lubbock_pcmcia_ops = common dso_local global i32 0, align 4
@pxa2xx_drv_pcmcia_add_one = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmcia_lubbock_init(%struct.sa1111_dev* %0) #0 {
  %2 = alloca %struct.sa1111_dev*, align 8
  store %struct.sa1111_dev* %0, %struct.sa1111_dev** %2, align 8
  %3 = call i32 @pxa2xx_drv_pcmcia_ops(i32* @lubbock_pcmcia_ops)
  %4 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sa1111_dev, %struct.sa1111_dev* %4, i32 0, i32 0
  %6 = call i32 @pxa2xx_configure_sockets(i32* %5, i32* @lubbock_pcmcia_ops)
  %7 = load %struct.sa1111_dev*, %struct.sa1111_dev** %2, align 8
  %8 = load i32, i32* @pxa2xx_drv_pcmcia_add_one, align 4
  %9 = call i32 @sa1111_pcmcia_add(%struct.sa1111_dev* %7, i32* @lubbock_pcmcia_ops, i32 %8)
  ret i32 %9
}

declare dso_local i32 @pxa2xx_drv_pcmcia_ops(i32*) #1

declare dso_local i32 @pxa2xx_configure_sockets(i32*, i32*) #1

declare dso_local i32 @sa1111_pcmcia_add(%struct.sa1111_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
