; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_rz_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_rz_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.rspi_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @rspi_rz_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_rz_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.rspi_data*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %8 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %9 = call %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller* %8)
  store %struct.rspi_data* %9, %struct.rspi_data** %7, align 8
  %10 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %11 = call i32 @rspi_rz_receive_init(%struct.rspi_data* %10)
  %12 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %14 = call i32 @rspi_common_transfer(%struct.rspi_data* %12, %struct.spi_transfer* %13)
  ret i32 %14
}

declare dso_local %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @rspi_rz_receive_init(%struct.rspi_data*) #1

declare dso_local i32 @rspi_common_transfer(%struct.rspi_data*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
