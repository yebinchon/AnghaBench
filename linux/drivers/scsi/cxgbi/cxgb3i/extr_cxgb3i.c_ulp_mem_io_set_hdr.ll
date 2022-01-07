; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ulp_mem_io_set_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/cxgb3i/extr_cxgb3i.c_ulp_mem_io_set_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ulp_mem_io = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@FW_WROPCODE_BYPASS = common dso_local global i32 0, align 4
@ULP_MEM_WRITE = common dso_local global i32 0, align 4
@IPPOD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @ulp_mem_io_set_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ulp_mem_io_set_hdr(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ulp_mem_io*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.ulp_mem_io*
  store %struct.ulp_mem_io* %9, %struct.ulp_mem_io** %5, align 8
  %10 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %5, align 8
  %11 = call i32 @memset(%struct.ulp_mem_io* %10, i32 0, i32 24)
  %12 = load i32, i32* @FW_WROPCODE_BYPASS, align 4
  %13 = call i32 @V_WR_OP(i32 %12)
  %14 = call i8* @htonl(i32 %13)
  %15 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %5, align 8
  %16 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, 5
  %20 = call i32 @V_ULP_MEMIO_ADDR(i32 %19)
  %21 = load i32, i32* @ULP_MEM_WRITE, align 4
  %22 = call i32 @V_ULPTX_CMD(i32 %21)
  %23 = or i32 %20, %22
  %24 = call i8* @htonl(i32 %23)
  %25 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %5, align 8
  %26 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* @IPPOD_SIZE, align 4
  %28 = ashr i32 %27, 5
  %29 = call i32 @V_ULP_MEMIO_DATA_LEN(i32 %28)
  %30 = load i32, i32* @IPPOD_SIZE, align 4
  %31 = ashr i32 %30, 3
  %32 = add nsw i32 %31, 1
  %33 = call i32 @V_ULPTX_NFLITS(i32 %32)
  %34 = or i32 %29, %33
  %35 = call i8* @htonl(i32 %34)
  %36 = load %struct.ulp_mem_io*, %struct.ulp_mem_io** %5, align 8
  %37 = getelementptr inbounds %struct.ulp_mem_io, %struct.ulp_mem_io* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ulp_mem_io*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @V_WR_OP(i32) #1

declare dso_local i32 @V_ULP_MEMIO_ADDR(i32) #1

declare dso_local i32 @V_ULPTX_CMD(i32) #1

declare dso_local i32 @V_ULP_MEMIO_DATA_LEN(i32) #1

declare dso_local i32 @V_ULPTX_NFLITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
