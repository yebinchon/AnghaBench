; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-espi.c_fsl_espi_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, i32, i32 }
%struct.spi_transfer = type { i32, i32 }
%struct.fsl_espi = type { i32 }
%struct.fsl_espi_cs = type { i32 }

@CSMODE_DIV16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.spi_transfer*)* @fsl_espi_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_espi_setup_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.fsl_espi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fsl_espi_cs*, align 8
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fsl_espi* @spi_master_get_devdata(i32 %13)
  store %struct.fsl_espi* %14, %struct.fsl_espi** %5, align 8
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = icmp ne %struct.spi_transfer* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %19 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i32 [ %20, %17 ], [ %24, %21 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %28 = icmp ne %struct.spi_transfer* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  store i32 %38, i32* %8, align 4
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = call %struct.fsl_espi_cs* @spi_get_ctldata(%struct.spi_device* %39)
  store %struct.fsl_espi_cs* %40, %struct.fsl_espi_cs** %9, align 8
  %41 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %42 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = call i32 @CSMODE_LEN(i32 15)
  %45 = load i32, i32* @CSMODE_DIV16, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @CSMODE_PM(i32 15)
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %51 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @CSMODE_LEN(i32 %55)
  %57 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %58 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %62 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = mul nsw i32 %64, 4
  %66 = call i32 @DIV_ROUND_UP(i32 %63, i32 %65)
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 15
  br i1 %69, label %70, label %84

70:                                               ; preds = %37
  %71 = load i32, i32* @CSMODE_DIV16, align 4
  %72 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %73 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %77 = getelementptr inbounds %struct.fsl_espi, %struct.fsl_espi* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 16
  %81 = mul nsw i32 %80, 4
  %82 = call i32 @DIV_ROUND_UP(i32 %78, i32 %81)
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %70, %37
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @CSMODE_PM(i32 %85)
  %87 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %88 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %92 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %84
  %97 = load %struct.fsl_espi*, %struct.fsl_espi** %5, align 8
  %98 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %99 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ESPI_SPMODEx(i32 %100)
  %102 = load %struct.fsl_espi_cs*, %struct.fsl_espi_cs** %9, align 8
  %103 = getelementptr inbounds %struct.fsl_espi_cs, %struct.fsl_espi_cs* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @fsl_espi_write_reg(%struct.fsl_espi* %97, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %84
  ret void
}

declare dso_local %struct.fsl_espi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.fsl_espi_cs* @spi_get_ctldata(%struct.spi_device*) #1

declare dso_local i32 @CSMODE_LEN(i32) #1

declare dso_local i32 @CSMODE_PM(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @fsl_espi_write_reg(%struct.fsl_espi*, i32, i32) #1

declare dso_local i32 @ESPI_SPMODEx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
