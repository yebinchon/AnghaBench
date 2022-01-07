; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32 }
%struct.xlp_spi_priv = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_device*, %struct.spi_transfer*)* @xlp_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlp_spi_transfer_one(%struct.spi_master* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.xlp_spi_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %9 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %10 = call %struct.xlp_spi_priv* @spi_master_get_devdata(%struct.spi_master* %9)
  store %struct.xlp_spi_priv* %10, %struct.xlp_spi_priv** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %7, align 8
  %15 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %7, align 8
  %20 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = call i64 @spi_transfer_is_last(%struct.spi_master* %21, %struct.spi_transfer* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %7, align 8
  %27 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %7, align 8
  %30 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %7, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %34 = call i64 @xlp_spi_txrx_bufs(%struct.xlp_spi_priv* %32, %struct.spi_transfer* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %41 = call i32 @spi_finalize_current_transfer(%struct.spi_master* %40)
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.xlp_spi_priv* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @spi_transfer_is_last(%struct.spi_master*, %struct.spi_transfer*) #1

declare dso_local i64 @xlp_spi_txrx_bufs(%struct.xlp_spi_priv*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_finalize_current_transfer(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
