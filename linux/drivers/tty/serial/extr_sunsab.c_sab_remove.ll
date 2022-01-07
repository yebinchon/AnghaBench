; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sab_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunsab.c_sab_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32* }
%struct.uart_sunsab_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sunsab_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sab_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_sunsab_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.uart_sunsab_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.uart_sunsab_port* %5, %struct.uart_sunsab_port** %3, align 8
  %6 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %6, i64 1
  %8 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %7, i32 0, i32 0
  %9 = call i32 @uart_remove_one_port(i32* @sunsab_reg, %struct.TYPE_2__* %8)
  %10 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %10, i64 0
  %12 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %11, i32 0, i32 0
  %13 = call i32 @uart_remove_one_port(i32* @sunsab_reg, %struct.TYPE_2__* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %18, i64 1
  %20 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @of_iounmap(i32* %17, i32 %22, i32 4)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %28, i64 0
  %30 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @of_iounmap(i32* %27, i32 %32, i32 4)
  ret i32 0
}

declare dso_local %struct.uart_sunsab_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @of_iounmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
