; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_hw_set_parms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm-qspi.c_bcm_qspi_hw_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_qspi = type { i32, %struct.bcm_qspi_parms }
%struct.bcm_qspi_parms = type { i32, i32, i32 }

@QSPI_SPBR_MIN = common dso_local global i32 0, align 4
@QSPI_SPBR_MAX = common dso_local global i32 0, align 4
@MSPI = common dso_local global i32 0, align 4
@MSPI_SPCR0_LSB = common dso_local global i32 0, align 4
@MSPI_MASTER_BIT = common dso_local global i32 0, align 4
@MSPI_SPCR0_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_qspi*, %struct.bcm_qspi_parms*)* @bcm_qspi_hw_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_qspi_hw_set_parms(%struct.bcm_qspi* %0, %struct.bcm_qspi_parms* %1) #0 {
  %3 = alloca %struct.bcm_qspi*, align 8
  %4 = alloca %struct.bcm_qspi_parms*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm_qspi* %0, %struct.bcm_qspi** %3, align 8
  store %struct.bcm_qspi_parms* %1, %struct.bcm_qspi_parms** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %8 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %13 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 2, %17
  %19 = sdiv i32 %14, %18
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %11, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @QSPI_SPBR_MIN, align 4
  %23 = load i32, i32* @QSPI_SPBR_MAX, align 4
  %24 = call i32 @clamp_val(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %26 = load i32, i32* @MSPI, align 4
  %27 = load i32, i32* @MSPI_SPCR0_LSB, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @MSPI_MASTER_BIT, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %32 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 16
  br i1 %34, label %35, label %42

35:                                               ; preds = %20
  %36 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 2
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %20
  %43 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %44 = getelementptr inbounds %struct.bcm_qspi_parms, %struct.bcm_qspi_parms* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 3
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %50 = load i32, i32* @MSPI, align 4
  %51 = load i32, i32* @MSPI_SPCR0_MSB, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @bcm_qspi_write(%struct.bcm_qspi* %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.bcm_qspi*, %struct.bcm_qspi** %3, align 8
  %55 = getelementptr inbounds %struct.bcm_qspi, %struct.bcm_qspi* %54, i32 0, i32 1
  %56 = load %struct.bcm_qspi_parms*, %struct.bcm_qspi_parms** %4, align 8
  %57 = bitcast %struct.bcm_qspi_parms* %55 to i8*
  %58 = bitcast %struct.bcm_qspi_parms* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 12, i1 false)
  ret void
}

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @bcm_qspi_write(%struct.bcm_qspi*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
