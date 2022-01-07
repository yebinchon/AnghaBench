; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.h_snic_itmf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.h_snic_itmf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_host_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SNIC_REQ_ITMF = common dso_local global i32 0, align 4
@LUN_ADDR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic_host_req*, i32, i32, i32, i32, i32, i32, i32*, i32)* @snic_itmf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_itmf_init(%struct.snic_host_req* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca %struct.snic_host_req*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.snic_host_req* %0, %struct.snic_host_req** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  %19 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %20 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %19, i32 0, i32 1
  %21 = load i32, i32* @SNIC_REQ_ITMF, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @snic_io_hdr_enc(i32* %20, i32 %21, i32 0, i32 %22, i32 %23, i32 0, i32 %24)
  %26 = load i32, i32* %18, align 4
  %27 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %28 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %34 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %40 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %46 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.snic_host_req*, %struct.snic_host_req** %10, align 8
  %50 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %17, align 8
  %54 = load i32, i32* @LUN_ADDR_LEN, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  ret void
}

declare dso_local i32 @snic_io_hdr_enc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
