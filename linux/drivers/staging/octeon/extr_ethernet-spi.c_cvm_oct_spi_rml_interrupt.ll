; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_rml_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_rml_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_npi_rsl_int_blocks = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@CVMX_NPI_RSL_INT_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cvm_oct_spi_rml_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_spi_rml_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.cvmx_npi_rsl_int_blocks, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @IRQ_NONE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @CVMX_NPI_RSL_INT_BLOCKS, align 4
  %9 = call i32 @cvmx_read_csr(i32 %8)
  %10 = bitcast %union.cvmx_npi_rsl_int_blocks* %6 to i32*
  store i32 %9, i32* %10, align 8
  %11 = bitcast %union.cvmx_npi_rsl_int_blocks* %6 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @cvm_oct_spi_spx_int(i32 1)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = bitcast %union.cvmx_npi_rsl_int_blocks* %6 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @cvm_oct_spi_spx_int(i32 0)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @cvm_oct_spi_spx_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
