; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_handle_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-dw.c_dw_spi_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_message = type { i32 }
%struct.dw_spi = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.dw_spi*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_controller*, %struct.spi_message*)* @dw_spi_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_spi_handle_err(%struct.spi_controller* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.dw_spi*, align 8
  store %struct.spi_controller* %0, %struct.spi_controller** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %7 = call %struct.dw_spi* @spi_controller_get_devdata(%struct.spi_controller* %6)
  store %struct.dw_spi* %7, %struct.dw_spi** %5, align 8
  %8 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %9 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %14 = getelementptr inbounds %struct.dw_spi, %struct.dw_spi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.dw_spi*)*, i32 (%struct.dw_spi*)** %16, align 8
  %18 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %19 = call i32 %17(%struct.dw_spi* %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.dw_spi*, %struct.dw_spi** %5, align 8
  %22 = call i32 @spi_reset_chip(%struct.dw_spi* %21)
  ret void
}

declare dso_local %struct.dw_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @spi_reset_chip(%struct.dw_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
