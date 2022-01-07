; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_spi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i32 }

@CTR_TSCKE = common dso_local global i32 0, align 4
@CTR_RXE = common dso_local global i32 0, align 4
@CTR_TXE = common dso_local global i32 0, align 4
@CTR_TFSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*, i8*)* @sh_msiof_spi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_spi_start(%struct.sh_msiof_spi_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.sh_msiof_spi_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %8 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @spi_controller_is_slave(i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %15 = load i32, i32* @CTR_TSCKE, align 4
  %16 = call i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv* %14, i32 0, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %25 = load i32, i32* @CTR_RXE, align 4
  %26 = call i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv* %24, i32 0, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %20, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %32 = load i32, i32* @CTR_TXE, align 4
  %33 = call i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv* %31, i32 0, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %3, align 8
  %42 = load i32, i32* @CTR_TFSE, align 4
  %43 = call i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv* %41, i32 0, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %37, %34
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @spi_controller_is_slave(i32) #1

declare dso_local i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
