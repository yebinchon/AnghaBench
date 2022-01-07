; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_set_hw_preamble.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-rgmii.c_cvm_oct_set_hw_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_ethernet = type { i64 }
%union.cvmx_gmxx_rxx_frm_ctl = type { i8* }
%union.cvmx_ipd_sub_port_fcs = type { i8* }
%union.cvmx_gmxx_rxx_int_reg = type { i8* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@CVMX_IPD_SUB_PORT_FCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_ethernet*, i32)* @cvm_oct_set_hw_preamble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_set_hw_preamble(%struct.octeon_ethernet* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_ethernet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_gmxx_rxx_frm_ctl, align 8
  %6 = alloca %union.cvmx_ipd_sub_port_fcs, align 8
  %7 = alloca %union.cvmx_gmxx_rxx_int_reg, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_ethernet* %0, %struct.octeon_ethernet** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %11 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @INTERFACE(i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %15 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @INDEX(i64 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %18, i32 %19)
  %21 = call i8* @cvmx_read_csr(i32 %20)
  %22 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %5 to i8**
  store i8* %21, i8** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %5 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @CVMX_GMXX_RXX_FRM_CTL(i32 %26, i32 %27)
  %29 = bitcast %union.cvmx_gmxx_rxx_frm_ctl* %5 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @cvmx_write_csr(i32 %28, i8* %30)
  %32 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %33 = call i8* @cvmx_read_csr(i32 %32)
  %34 = bitcast %union.cvmx_ipd_sub_port_fcs* %6 to i8**
  store i8* %33, i8** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %39 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 1, %40
  %42 = bitcast %union.cvmx_ipd_sub_port_fcs* %6 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  br label %56

46:                                               ; preds = %2
  %47 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %3, align 8
  %48 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 1, %49
  %51 = xor i64 4294967295, %50
  %52 = bitcast %union.cvmx_ipd_sub_port_fcs* %6 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = and i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %46, %37
  %57 = load i32, i32* @CVMX_IPD_SUB_PORT_FCS, align 4
  %58 = bitcast %union.cvmx_ipd_sub_port_fcs* %6 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @cvmx_write_csr(i32 %57, i8* %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %61, i32 %62)
  %64 = call i8* @cvmx_read_csr(i32 %63)
  %65 = bitcast %union.cvmx_gmxx_rxx_int_reg* %7 to i8**
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @CVMX_GMXX_RXX_INT_REG(i32 %66, i32 %67)
  %69 = bitcast %union.cvmx_gmxx_rxx_int_reg* %7 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @cvmx_write_csr(i32 %68, i8* %70)
  ret void
}

declare dso_local i32 @INTERFACE(i64) #1

declare dso_local i32 @INDEX(i64) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_FRM_CTL(i32, i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i8*) #1

declare dso_local i32 @CVMX_GMXX_RXX_INT_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
