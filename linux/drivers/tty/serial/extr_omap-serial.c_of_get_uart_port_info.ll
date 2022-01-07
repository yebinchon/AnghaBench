; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_of_get_uart_port_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_of_get_uart_port_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_uart_port_info = type { i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_uart_port_info* (%struct.device*)* @of_get_uart_port_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_uart_port_info* @of_get_uart_port_info(%struct.device* %0) #0 {
  %2 = alloca %struct.omap_uart_port_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.omap_uart_port_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.omap_uart_port_info* @devm_kzalloc(%struct.device* %5, i32 8, i32 %6)
  store %struct.omap_uart_port_info* %7, %struct.omap_uart_port_info** %4, align 8
  %8 = load %struct.omap_uart_port_info*, %struct.omap_uart_port_info** %4, align 8
  %9 = icmp ne %struct.omap_uart_port_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.omap_uart_port_info* null, %struct.omap_uart_port_info** %2, align 8
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.omap_uart_port_info*, %struct.omap_uart_port_info** %4, align 8
  %16 = getelementptr inbounds %struct.omap_uart_port_info, %struct.omap_uart_port_info* %15, i32 0, i32 1
  %17 = call i32 @of_property_read_u32(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %19 = load %struct.omap_uart_port_info*, %struct.omap_uart_port_info** %4, align 8
  %20 = getelementptr inbounds %struct.omap_uart_port_info, %struct.omap_uart_port_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.omap_uart_port_info*, %struct.omap_uart_port_info** %4, align 8
  store %struct.omap_uart_port_info* %21, %struct.omap_uart_port_info** %2, align 8
  br label %22

22:                                               ; preds = %11, %10
  %23 = load %struct.omap_uart_port_info*, %struct.omap_uart_port_info** %2, align 8
  ret %struct.omap_uart_port_info* %23
}

declare dso_local %struct.omap_uart_port_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
