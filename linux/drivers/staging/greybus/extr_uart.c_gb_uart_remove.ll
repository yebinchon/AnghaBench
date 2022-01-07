; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_gb_uart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbphy_device = type { i32 }
%struct.gb_tty = type { i32, %struct.gb_tty*, i32, i32, i32, i32, i32, %struct.gb_connection* }
%struct.gb_connection = type { i32 }
%struct.tty_struct = type { i32 }

@gb_tty_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbphy_device*)* @gb_uart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_uart_remove(%struct.gbphy_device* %0) #0 {
  %2 = alloca %struct.gbphy_device*, align 8
  %3 = alloca %struct.gb_tty*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.gbphy_device* %0, %struct.gbphy_device** %2, align 8
  %7 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %8 = call %struct.gb_tty* @gb_gbphy_get_data(%struct.gbphy_device* %7)
  store %struct.gb_tty* %8, %struct.gb_tty** %3, align 8
  %9 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %10 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %9, i32 0, i32 7
  %11 = load %struct.gb_connection*, %struct.gb_connection** %10, align 8
  store %struct.gb_connection* %11, %struct.gb_connection** %4, align 8
  %12 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %13 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gbphy_device*, %struct.gbphy_device** %2, align 8
  %18 = call i32 @gbphy_runtime_get_noresume(%struct.gbphy_device* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %21 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %20, i32 0, i32 5
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %24 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %26 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %25, i32 0, i32 6
  %27 = call i32 @wake_up_all(i32* %26)
  %28 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %29 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %28, i32 0, i32 5
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %32 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %31, i32 0, i32 3
  %33 = call %struct.tty_struct* @tty_port_tty_get(i32* %32)
  store %struct.tty_struct* %33, %struct.tty_struct** %5, align 8
  %34 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %35 = icmp ne %struct.tty_struct* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %38 = call i32 @tty_vhangup(%struct.tty_struct* %37)
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = call i32 @tty_kref_put(%struct.tty_struct* %39)
  br label %41

41:                                               ; preds = %36, %19
  %42 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %43 = call i32 @gb_connection_disable_rx(%struct.gb_connection* %42)
  %44 = load i32, i32* @gb_tty_driver, align 4
  %45 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %46 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tty_unregister_device(i32 %44, i32 %47)
  %49 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %50 = call i32 @gb_connection_disable(%struct.gb_connection* %49)
  %51 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %52 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %51, i32 0, i32 3
  %53 = call i32 @tty_port_destroy(i32* %52)
  %54 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %55 = call i32 @gb_connection_destroy(%struct.gb_connection* %54)
  %56 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %57 = call i32 @release_minor(%struct.gb_tty* %56)
  %58 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %59 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %58, i32 0, i32 2
  %60 = call i32 @kfifo_free(i32* %59)
  %61 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %62 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %61, i32 0, i32 1
  %63 = load %struct.gb_tty*, %struct.gb_tty** %62, align 8
  %64 = call i32 @kfree(%struct.gb_tty* %63)
  %65 = load %struct.gb_tty*, %struct.gb_tty** %3, align 8
  %66 = call i32 @kfree(%struct.gb_tty* %65)
  ret void
}

declare dso_local %struct.gb_tty* @gb_gbphy_get_data(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gbphy_runtime_get_noresume(%struct.gbphy_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @gb_connection_disable_rx(%struct.gb_connection*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @gb_connection_disable(%struct.gb_connection*) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @gb_connection_destroy(%struct.gb_connection*) #1

declare dso_local i32 @release_minor(%struct.gb_tty*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kfree(%struct.gb_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
