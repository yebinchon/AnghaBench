; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_discovery.c_nvmet_format_discovery_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_discovery.c_nvmet_format_discovery_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmf_disc_rsp_page_hdr = type { %struct.nvmf_disc_rsp_page_entry* }
%struct.nvmf_disc_rsp_page_entry = type { i32, %struct.TYPE_4__, i32, i32, i32, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.nvmet_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i8* }

@NVME_CNTLID_DYNAMIC = common dso_local global i32 0, align 4
@NVME_AQ_DEPTH = common dso_local global i32 0, align 4
@NVMF_TRSVCID_SIZE = common dso_local global i32 0, align 4
@NVMF_TRADDR_SIZE = common dso_local global i32 0, align 4
@NVMF_TSAS_SIZE = common dso_local global i32 0, align 4
@NVMF_NQN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmf_disc_rsp_page_hdr*, %struct.nvmet_port*, i8*, i8*, i32, i64)* @nvmet_format_discovery_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_format_discovery_entry(%struct.nvmf_disc_rsp_page_hdr* %0, %struct.nvmet_port* %1, i8* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.nvmf_disc_rsp_page_hdr*, align 8
  %8 = alloca %struct.nvmet_port*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.nvmf_disc_rsp_page_entry*, align 8
  store %struct.nvmf_disc_rsp_page_hdr* %0, %struct.nvmf_disc_rsp_page_hdr** %7, align 8
  store %struct.nvmet_port* %1, %struct.nvmet_port** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %14 = load %struct.nvmf_disc_rsp_page_hdr*, %struct.nvmf_disc_rsp_page_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.nvmf_disc_rsp_page_hdr, %struct.nvmf_disc_rsp_page_hdr* %14, i32 0, i32 0
  %16 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %15, align 8
  %17 = load i64, i64* %12, align 8
  %18 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %16, i64 %17
  store %struct.nvmf_disc_rsp_page_entry* %18, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %19 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %20 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %24 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %23, i32 0, i32 10
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %26 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %30 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %32 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %36 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %38 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %42 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @NVME_CNTLID_DYNAMIC, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %46 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %50 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %53 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %55 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %58 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @NVMF_TRSVCID_SIZE, align 4
  %62 = call i32 @memcpy(i32 %56, i8* %60, i32 %61)
  %63 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %64 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* @NVMF_TRADDR_SIZE, align 4
  %68 = call i32 @memcpy(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %70 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nvmet_port*, %struct.nvmet_port** %8, align 8
  %74 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @NVMF_TSAS_SIZE, align 4
  %79 = call i32 @memcpy(i32 %72, i8* %77, i32 %78)
  %80 = load %struct.nvmf_disc_rsp_page_entry*, %struct.nvmf_disc_rsp_page_entry** %13, align 8
  %81 = getelementptr inbounds %struct.nvmf_disc_rsp_page_entry, %struct.nvmf_disc_rsp_page_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* @NVMF_NQN_SIZE, align 4
  %85 = call i32 @strncpy(i32 %82, i8* %83, i32 %84)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
