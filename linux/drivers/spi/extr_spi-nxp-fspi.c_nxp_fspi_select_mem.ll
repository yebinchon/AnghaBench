; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_select_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_select_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_fspi = type { i32, i32, i32, i64, i32 }
%struct.spi_device = type { i64, i32 }

@FSPI_FLSHA1CR0 = common dso_local global i64 0, align 8
@FSPI_FLSHA2CR0 = common dso_local global i64 0, align 8
@FSPI_FLSHB1CR0 = common dso_local global i64 0, align 8
@FSPI_FLSHB2CR0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Slave device [CS:%x] selected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nxp_fspi*, %struct.spi_device*)* @nxp_fspi_select_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxp_fspi_select_mem(%struct.nxp_fspi* %0, %struct.spi_device* %1) #0 {
  %3 = alloca %struct.nxp_fspi*, align 8
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nxp_fspi* %0, %struct.nxp_fspi** %3, align 8
  store %struct.spi_device* %1, %struct.spi_device** %4, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %12 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %21 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %22 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FSPI_FLSHA1CR0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @fspi_writel(%struct.nxp_fspi* %20, i32 0, i64 %25)
  %27 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %28 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %29 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FSPI_FLSHA2CR0, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @fspi_writel(%struct.nxp_fspi* %27, i32 0, i64 %32)
  %34 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %35 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %36 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FSPI_FLSHB1CR0, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @fspi_writel(%struct.nxp_fspi* %34, i32 0, i64 %39)
  %41 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %42 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %43 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FSPI_FLSHB2CR0, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @fspi_writel(%struct.nxp_fspi* %41, i32 0, i64 %46)
  %48 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %49 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @FSPI_FLSHXCR0_SZ(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %55 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FSPI_FLSHA1CR0, align 8
  %58 = add nsw i64 %56, %57
  %59 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %60 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 4, %61
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %58, %63
  %65 = call i32 @fspi_writel(%struct.nxp_fspi* %52, i32 %53, i64 %64)
  %66 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %67 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %70 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %74 = call i32 @nxp_fspi_clk_disable_unprep(%struct.nxp_fspi* %73)
  %75 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %76 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @clk_set_rate(i32 %77, i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %19
  br label %95

83:                                               ; preds = %19
  %84 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %85 = call i32 @nxp_fspi_clk_prep_enable(%struct.nxp_fspi* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %95

89:                                               ; preds = %83
  %90 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %91 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %94 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %89, %88, %82, %18
  ret void
}

declare dso_local i32 @fspi_writel(%struct.nxp_fspi*, i32, i64) #1

declare dso_local i32 @FSPI_FLSHXCR0_SZ(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @nxp_fspi_clk_disable_unprep(%struct.nxp_fspi*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @nxp_fspi_clk_prep_enable(%struct.nxp_fspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
