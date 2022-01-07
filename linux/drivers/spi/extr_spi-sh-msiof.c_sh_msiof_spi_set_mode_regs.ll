; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_set_mode_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_set_mode_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_CONTROLLER_MUST_TX = common dso_local global i32 0, align 4
@TMDR2 = common dso_local global i32 0, align 4
@MDR2_GRPMASK1 = common dso_local global i32 0, align 4
@RMDR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_msiof_spi_priv*, i8*, i8*, i32, i32)* @sh_msiof_spi_set_mode_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_msiof_spi_set_mode_regs(%struct.sh_msiof_spi_priv* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sh_msiof_spi_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @MDR2_BITLEN1(i32 %12)
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @MDR2_WDLEN1(i32 %14)
  %16 = or i32 %13, %15
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %5
  %20 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %21 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SPI_CONTROLLER_MUST_TX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19, %5
  %29 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %30 = load i32, i32* @TMDR2, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %29, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %19
  %34 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %35 = load i32, i32* @TMDR2, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @MDR2_GRPMASK1, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %33, %28
  %41 = load i8*, i8** %8, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %45 = load i32, i32* @RMDR2, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  ret void
}

declare dso_local i32 @MDR2_BITLEN1(i32) #1

declare dso_local i32 @MDR2_WDLEN1(i32) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
