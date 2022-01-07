; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.rspi_data = type { i32 }

@RSPI_SPCR = common dso_local global i32 0, align 4
@SPCR_TXMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @rspi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.rspi_data*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %10 = call %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.rspi_data* %10, %struct.rspi_data** %7, align 8
  %11 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %12 = load i32, i32* @RSPI_SPCR, align 4
  %13 = call i32 @rspi_read8(%struct.rspi_data* %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %20 = call i32 @rspi_receive_init(%struct.rspi_data* %19)
  %21 = load i32, i32* @SPCR_TXMD, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  br label %29

25:                                               ; preds = %3
  %26 = load i32, i32* @SPCR_TXMD, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RSPI_SPCR, align 4
  %33 = call i32 @rspi_write8(%struct.rspi_data* %30, i32 %31, i32 %32)
  %34 = load %struct.rspi_data*, %struct.rspi_data** %7, align 8
  %35 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %36 = call i32 @rspi_common_transfer(%struct.rspi_data* %34, %struct.spi_transfer* %35)
  ret i32 %36
}

declare dso_local %struct.rspi_data* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @rspi_read8(%struct.rspi_data*, i32) #1

declare dso_local i32 @rspi_receive_init(%struct.rspi_data*) #1

declare dso_local i32 @rspi_write8(%struct.rspi_data*, i32, i32) #1

declare dso_local i32 @rspi_common_transfer(%struct.rspi_data*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
