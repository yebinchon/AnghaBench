; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_enable_error_reporting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-spi.c_cvm_oct_spi_enable_error_reporting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_spxx_int_msk = type { i8*, [32 x i8] }
%union.cvmx_stxx_int_msk = type { i8*, [24 x i8] }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cvm_oct_spi_enable_error_reporting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_spi_enable_error_reporting(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.cvmx_spxx_int_msk, align 8
  %4 = alloca %union.cvmx_stxx_int_msk, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @CVMX_SPXX_INT_MSK(i32 %5)
  %7 = call i8* @cvmx_read_csr(i32 %6)
  %8 = bitcast %union.cvmx_spxx_int_msk* %3 to i8**
  store i8* %7, i8** %8, align 8
  %9 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i32 1, i32* %14, align 8
  %15 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  store i32 1, i32* %16, align 4
  %17 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 1, i32* %18, align 8
  %19 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  store i32 1, i32* %20, align 4
  %21 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 6
  store i32 1, i32* %22, align 8
  %23 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  store i32 1, i32* %24, align 4
  %25 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 8
  store i32 1, i32* %26, align 8
  %27 = bitcast %union.cvmx_spxx_int_msk* %3 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 9
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @CVMX_SPXX_INT_MSK(i32 %29)
  %31 = bitcast %union.cvmx_spxx_int_msk* %3 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @cvmx_write_csr(i32 %30, i8* %32)
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @CVMX_STXX_INT_MSK(i32 %34)
  %36 = call i8* @cvmx_read_csr(i32 %35)
  %37 = bitcast %union.cvmx_stxx_int_msk* %4 to i8**
  store i8* %36, i8** %37, align 8
  %38 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  %44 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 1, i32* %45, align 4
  %46 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i32 1, i32* %47, align 8
  %48 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  store i32 1, i32* %49, align 4
  %50 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  store i32 1, i32* %51, align 8
  %52 = bitcast %union.cvmx_stxx_int_msk* %4 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @CVMX_STXX_INT_MSK(i32 %54)
  %56 = bitcast %union.cvmx_stxx_int_msk* %4 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @cvmx_write_csr(i32 %55, i8* %57)
  ret void
}

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_SPXX_INT_MSK(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_STXX_INT_MSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
