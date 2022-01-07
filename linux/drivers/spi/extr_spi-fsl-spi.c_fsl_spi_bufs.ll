; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-spi.c_fsl_spi_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32 }
%struct.mpc8xxx_spi = type { i32, i32, i32, i32, i32, %struct.fsl_spi_reg* }
%struct.fsl_spi_reg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPI_CPM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*, i32)* @fsl_spi_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_spi_bufs(%struct.spi_device* %0, %struct.spi_transfer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc8xxx_spi*, align 8
  %9 = alloca %struct.fsl_spi_reg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mpc8xxx_spi* @spi_master_get_devdata(i32 %15)
  store %struct.mpc8xxx_spi* %16, %struct.mpc8xxx_spi** %8, align 8
  %17 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %18 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %21 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %20, i32 0, i32 5
  %22 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %21, align 8
  store %struct.fsl_spi_reg* %22, %struct.fsl_spi_reg** %9, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %32 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 8
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %115

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = udiv i32 %45, 2
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load i32, i32* %11, align 4
  %49 = icmp sgt i32 %48, 16
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %115

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = udiv i32 %58, 2
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %57, %47
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %65 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %70 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %72 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %71, i32 0, i32 2
  %73 = call i32 @reinit_completion(i32* %72)
  %74 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %75 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SPI_CPM_MODE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %60
  %81 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %82 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @fsl_spi_cpm_bufs(%struct.mpc8xxx_spi* %81, %struct.spi_transfer* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %90

85:                                               ; preds = %60
  %86 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %87 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @fsl_spi_cpu_bufs(%struct.mpc8xxx_spi* %86, %struct.spi_transfer* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %85, %80
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %4, align 4
  br label %115

95:                                               ; preds = %90
  %96 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %97 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %96, i32 0, i32 2
  %98 = call i32 @wait_for_completion(i32* %97)
  %99 = load %struct.fsl_spi_reg*, %struct.fsl_spi_reg** %9, align 8
  %100 = getelementptr inbounds %struct.fsl_spi_reg, %struct.fsl_spi_reg* %99, i32 0, i32 0
  %101 = call i32 @mpc8xxx_spi_write_reg(i32* %100, i32 0)
  %102 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %103 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @SPI_CPM_MODE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %110 = call i32 @fsl_spi_cpm_bufs_complete(%struct.mpc8xxx_spi* %109)
  br label %111

111:                                              ; preds = %108, %95
  %112 = load %struct.mpc8xxx_spi*, %struct.mpc8xxx_spi** %8, align 8
  %113 = getelementptr inbounds %struct.mpc8xxx_spi, %struct.mpc8xxx_spi* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %93, %54, %41
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.mpc8xxx_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @fsl_spi_cpm_bufs(%struct.mpc8xxx_spi*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @fsl_spi_cpu_bufs(%struct.mpc8xxx_spi*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mpc8xxx_spi_write_reg(i32*, i32) #1

declare dso_local i32 @fsl_spi_cpm_bufs_complete(%struct.mpc8xxx_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
