; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_configure_common_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_configure_common_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_FPA_PACKET_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@num_packet_buffers = common dso_local global i32 0, align 4
@CVMX_FPA_WQE_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_WQE_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_IPD_CTL_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cvm_oct_configure_common_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvm_oct_configure_common_hw() #0 {
  %1 = call i32 (...) @cvmx_fpa_enable()
  %2 = load i64, i64* @CVMX_FPA_PACKET_POOL, align 8
  %3 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %4 = load i32, i32* @num_packet_buffers, align 4
  %5 = call i32 @cvm_oct_mem_fill_fpa(i64 %2, i32 %3, i32 %4)
  %6 = load i64, i64* @CVMX_FPA_WQE_POOL, align 8
  %7 = load i32, i32* @CVMX_FPA_WQE_POOL_SIZE, align 4
  %8 = load i32, i32* @num_packet_buffers, align 4
  %9 = call i32 @cvm_oct_mem_fill_fpa(i64 %6, i32 %7, i32 %8)
  %10 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 8
  %11 = load i64, i64* @CVMX_FPA_PACKET_POOL, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %0
  %14 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 8
  %15 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 4
  %16 = call i32 @cvm_oct_mem_fill_fpa(i64 %14, i32 %15, i32 1024)
  br label %17

17:                                               ; preds = %13, %0
  %18 = load i32, i32* @num_packet_buffers, align 4
  %19 = sdiv i32 %18, 4
  %20 = load i32, i32* @num_packet_buffers, align 4
  %21 = sdiv i32 %20, 8
  %22 = call i32 @cvmx_helper_setup_red(i32 %19, i32 %21)
  ret void
}

declare dso_local i32 @cvmx_fpa_enable(...) #1

declare dso_local i32 @cvm_oct_mem_fill_fpa(i64, i32, i32) #1

declare dso_local i32 @cvmx_helper_setup_red(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
