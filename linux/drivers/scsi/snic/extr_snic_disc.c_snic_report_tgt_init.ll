; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_report_tgt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_report_tgt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_host_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.snic_sg_desc = type { i64, i32, i8* }

@SNIC_REQ_REPORT_TGTS = common dso_local global i32 0, align 4
@SCSI_NO_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic_host_req*, i32, i32*, i32, i32, i32)* @snic_report_tgt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_report_tgt_init(%struct.snic_host_req* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.snic_host_req*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snic_sg_desc*, align 8
  store %struct.snic_host_req* %0, %struct.snic_host_req** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store %struct.snic_sg_desc* null, %struct.snic_sg_desc** %13, align 8
  %14 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %15 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %14, i32 0, i32 1
  %16 = load i32, i32* @SNIC_REQ_REPORT_TGTS, align 4
  %17 = load i32, i32* @SCSI_NO_TAG, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call i32 @snic_io_hdr_enc(i32* %15, i32 %16, i32 0, i32 %17, i32 %18, i32 1, i32 %19)
  %21 = call i32 @cpu_to_le16(i32 1)
  %22 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %23 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %27 = call %struct.snic_sg_desc* @req_to_sgl(%struct.snic_host_req* %26)
  store %struct.snic_sg_desc* %27, %struct.snic_sg_desc** %13, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i8* @cpu_to_le64(i32 %28)
  %30 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %13, align 8
  %31 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %30, i64 0
  %32 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @cpu_to_le32(i32 %33)
  %35 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %13, align 8
  %36 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %35, i64 0
  %37 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %13, align 8
  %39 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %38, i64 0
  %40 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %13, align 8
  %42 = ptrtoint %struct.snic_sg_desc* %41 to i32
  %43 = call i8* @cpu_to_le64(i32 %42)
  %44 = load %struct.snic_host_req*, %struct.snic_host_req** %7, align 8
  %45 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  ret void
}

declare dso_local i32 @snic_io_hdr_enc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local %struct.snic_sg_desc* @req_to_sgl(%struct.snic_host_req*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
