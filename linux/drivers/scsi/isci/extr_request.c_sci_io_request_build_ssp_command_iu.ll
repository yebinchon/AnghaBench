; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_build_ssp_command_iu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_request.c_sci_io_request_build_ssp_command_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isci_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ssp_cmd_iu }
%struct.ssp_cmd_iu = type { i32, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.sas_task = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isci_request*)* @sci_io_request_build_ssp_command_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_io_request_build_ssp_command_iu(%struct.isci_request* %0) #0 {
  %2 = alloca %struct.isci_request*, align 8
  %3 = alloca %struct.ssp_cmd_iu*, align 8
  %4 = alloca %struct.sas_task*, align 8
  store %struct.isci_request* %0, %struct.isci_request** %2, align 8
  %5 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %6 = call %struct.sas_task* @isci_request_access_task(%struct.isci_request* %5)
  store %struct.sas_task* %6, %struct.sas_task** %4, align 8
  %7 = load %struct.isci_request*, %struct.isci_request** %2, align 8
  %8 = getelementptr inbounds %struct.isci_request, %struct.isci_request* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.ssp_cmd_iu* %9, %struct.ssp_cmd_iu** %3, align 8
  %10 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %11 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %14 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @memcpy(i32 %12, i32 %16, i32 8)
  %18 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %19 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %21 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %23 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %25 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %27 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %31 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %37 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %39 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.ssp_cmd_iu*, %struct.ssp_cmd_iu** %3, align 8
  %41 = getelementptr inbounds %struct.ssp_cmd_iu, %struct.ssp_cmd_iu* %40, i32 0, i32 0
  %42 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %43 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = call i32 @sci_swab32_cpy(i32* %41, i32 %47, i32 %57)
  ret void
}

declare dso_local %struct.sas_task* @isci_request_access_task(%struct.isci_request*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @sci_swab32_cpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
