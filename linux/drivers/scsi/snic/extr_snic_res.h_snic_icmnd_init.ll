; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.h_snic_icmnd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_res.h_snic_icmnd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic_host_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32*, i32, i32, i8*, i32 }

@SNIC_REQ_ICMND = common dso_local global i32 0, align 4
@LUN_ADDR_LEN = common dso_local global i32 0, align 4
@SNIC_CDB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic_host_req*, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32)* @snic_icmnd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_icmnd_init(%struct.snic_host_req* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.snic_host_req*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.snic_host_req* %0, %struct.snic_host_req** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %29 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %30 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %29, i32 0, i32 1
  %31 = load i32, i32* @SNIC_REQ_ICMND, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %25, align 4
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @snic_io_hdr_enc(i32* %30, i32 %31, i32 0, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @cpu_to_le16(i32 %37)
  %39 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %40 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 8
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* %20, align 4
  %44 = call i8* @cpu_to_le64(i32 %43)
  %45 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %46 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  store i8* %44, i8** %48, align 8
  %49 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %50 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 6
  %53 = load i32*, i32** %21, align 8
  %54 = load i32, i32* @LUN_ADDR_LEN, align 4
  %55 = call i32 @memcpy(i32* %52, i32* %53, i32 %54)
  %56 = load i32, i32* %23, align 4
  %57 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %58 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 5
  store i32 %56, i32* %60, align 8
  %61 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %62 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @SNIC_CDB_LEN, align 4
  %67 = call i32 @memset(i32* %65, i32 0, i32 %66)
  %68 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %69 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i32 @memcpy(i32* %72, i32* %73, i32 %74)
  %76 = load i32, i32* %24, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %79 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  store i8* %77, i8** %81, align 8
  %82 = load i32, i32* %26, align 4
  %83 = call i8* @cpu_to_le64(i32 %82)
  %84 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %85 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i8* %83, i8** %87, align 8
  %88 = load i32, i32* %28, align 4
  %89 = call i8* @cpu_to_le32(i32 %88)
  %90 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %91 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i8* %89, i8** %93, align 8
  %94 = load i32, i32* %27, align 4
  %95 = call i8* @cpu_to_le64(i32 %94)
  %96 = load %struct.snic_host_req*, %struct.snic_host_req** %15, align 8
  %97 = getelementptr inbounds %struct.snic_host_req, %struct.snic_host_req* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  ret void
}

declare dso_local i32 @snic_io_hdr_enc(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
