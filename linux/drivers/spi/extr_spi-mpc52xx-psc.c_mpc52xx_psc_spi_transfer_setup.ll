; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx-psc.c_mpc52xx_psc_spi_transfer_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc52xx-psc.c_mpc52xx_psc_spi_transfer_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64, %struct.mpc52xx_psc_spi_cs* }
%struct.mpc52xx_psc_spi_cs = type { i32, i64 }
%struct.spi_transfer = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @mpc52xx_psc_spi_transfer_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_psc_spi_transfer_setup(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.mpc52xx_psc_spi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 2
  %8 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %7, align 8
  store %struct.mpc52xx_psc_spi_cs* %8, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %9 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %10 = icmp ne %struct.spi_transfer* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  br label %24

20:                                               ; preds = %11, %2
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i64 [ %19, %16 ], [ %23, %20 ]
  %26 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %27 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %29 = icmp ne %struct.spi_transfer* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %37 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  br label %43

39:                                               ; preds = %30, %24
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i32 [ %38, %35 ], [ %42, %39 ]
  %45 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %46 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %48 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 7
  %51 = sdiv i32 %50, 8
  %52 = mul nsw i32 %51, 8
  %53 = load %struct.mpc52xx_psc_spi_cs*, %struct.mpc52xx_psc_spi_cs** %5, align 8
  %54 = getelementptr inbounds %struct.mpc52xx_psc_spi_cs, %struct.mpc52xx_psc_spi_cs* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
