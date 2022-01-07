; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_txrx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-efm32.c_efm32_spi_txrx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32*, i32 }
%struct.efm32_spi_ddata = type { i32, i32, i32, i32*, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@REG_IF_TXBL = common dso_local global i32 0, align 4
@REG_IF_RXDATAV = common dso_local global i32 0, align 4
@REG_IEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @efm32_spi_txrx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_spi_txrx_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.efm32_spi_ddata*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.efm32_spi_ddata* @spi_master_get_devdata(i32 %9)
  store %struct.efm32_spi_ddata* %10, %struct.efm32_spi_ddata** %5, align 8
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %14 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %17 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %22 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  br label %87

26:                                               ; preds = %20
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %31 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %36 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %38 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @DIV_ROUND_UP(i32 %42, i32 8)
  %44 = mul nsw i32 %39, %43
  %45 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %46 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %48 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  %49 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %50 = call i32 @efm32_spi_filltx(%struct.efm32_spi_ddata* %49)
  %51 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %52 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %51, i32 0, i32 5
  %53 = call i32 @reinit_completion(i32* %52)
  %54 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %55 = load i32, i32* @REG_IF_TXBL, align 4
  %56 = load i32, i32* @REG_IF_RXDATAV, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @REG_IEN, align 4
  %59 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %54, i32 %57, i32 %58)
  %60 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %61 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %64 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %63, i32 0, i32 5
  %65 = call i32 @wait_for_completion(i32* %64)
  %66 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %67 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %66, i32 0, i32 2
  %68 = call i32 @spin_lock_irq(i32* %67)
  %69 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %73 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %76 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @max(i32 %74, i32 %77)
  %79 = sub nsw i32 %71, %78
  store i32 %79, i32* %6, align 4
  %80 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %81 = load i32, i32* @REG_IEN, align 4
  %82 = call i32 @efm32_spi_write32(%struct.efm32_spi_ddata* %80, i32 0, i32 %81)
  %83 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %84 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %83, i32 0, i32 3
  store i32* null, i32** %84, align 8
  %85 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %86 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %85, i32 0, i32 4
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %26, %25
  %88 = load %struct.efm32_spi_ddata*, %struct.efm32_spi_ddata** %5, align 8
  %89 = getelementptr inbounds %struct.efm32_spi_ddata, %struct.efm32_spi_ddata* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock_irq(i32* %89)
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.efm32_spi_ddata* @spi_master_get_devdata(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @efm32_spi_filltx(%struct.efm32_spi_ddata*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @efm32_spi_write32(%struct.efm32_spi_ddata*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
