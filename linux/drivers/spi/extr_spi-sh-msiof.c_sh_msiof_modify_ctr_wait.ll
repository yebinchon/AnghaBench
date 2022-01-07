; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_modify_ctr_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_modify_ctr_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i64 }

@CTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*, i32, i32)* @sh_msiof_modify_ctr_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_modify_ctr_wait(%struct.sh_msiof_spi_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_msiof_spi_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %13 = load i64, i64* @CTR, align 8
  %14 = call i32 @sh_msiof_read(%struct.sh_msiof_spi_priv* %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %8, align 4
  %22 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %23 = load i64, i64* @CTR, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %22, i64 %23, i32 %24)
  %26 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CTR, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @readl_poll_timeout_atomic(i64 %30, i32 %31, i32 %37, i32 1, i32 100)
  ret i32 %38
}

declare dso_local i32 @sh_msiof_read(%struct.sh_msiof_spi_priv*, i64) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i64, i32) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
