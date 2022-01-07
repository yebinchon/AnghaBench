; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_aen_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_aen_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32 }
%struct.snic_fw_req = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snic_async_evnotify }
%struct.snic_async_evnotify = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"aen: type = %x, hdr_stat = %x, cmnd_id = %x, hid = %x, ctx = %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"aen:TGT_OFFLINE Event Recvd.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"aen:TGT_ONLINE Event Recvd.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"aen:LUN_OFFLINE Event Recvd.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"aen:LUN_ONLINE Event Recvd.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"aen:Config Change Event Recvd.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"aen:TGT_ADD Event Recvd.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"aen:TGT_DEL Event Recvd.\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"aen:LUN_ADD Event Recvd.\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"aen:LUN_DEL Event Recvd.\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"aen:DISC_CMPL Event Recvd.\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"aen:Unknown Event Recvd.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snic*, %struct.snic_fw_req*)* @snic_aen_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snic_aen_handler(%struct.snic* %0, %struct.snic_fw_req* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_fw_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snic_async_evnotify*, align 8
  %11 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_fw_req* %1, %struct.snic_fw_req** %4, align 8
  %12 = load %struct.snic_fw_req*, %struct.snic_fw_req** %4, align 8
  %13 = getelementptr inbounds %struct.snic_fw_req, %struct.snic_fw_req* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.snic_async_evnotify* %14, %struct.snic_async_evnotify** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.snic_fw_req*, %struct.snic_fw_req** %4, align 8
  %16 = getelementptr inbounds %struct.snic_fw_req, %struct.snic_fw_req* %15, i32 0, i32 0
  %17 = call i32 @snic_io_hdr_dec(i32* %16, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9)
  %18 = load %struct.snic*, %struct.snic** %3, align 8
  %19 = getelementptr inbounds %struct.snic, %struct.snic* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @SNIC_SCSI_DBG(i32 %20, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.snic_async_evnotify*, %struct.snic_async_evnotify** %10, align 8
  %28 = getelementptr inbounds %struct.snic_async_evnotify, %struct.snic_async_evnotify* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  switch i32 %31, label %82 [
    i32 129, label %32
    i32 128, label %37
    i32 133, label %42
    i32 132, label %47
    i32 137, label %52
    i32 131, label %57
    i32 130, label %62
    i32 135, label %67
    i32 134, label %72
    i32 136, label %77
  ]

32:                                               ; preds = %2
  %33 = load %struct.snic*, %struct.snic** %3, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SNIC_HOST_INFO(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %88

37:                                               ; preds = %2
  %38 = load %struct.snic*, %struct.snic** %3, align 8
  %39 = getelementptr inbounds %struct.snic, %struct.snic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SNIC_HOST_INFO(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %88

42:                                               ; preds = %2
  %43 = load %struct.snic*, %struct.snic** %3, align 8
  %44 = getelementptr inbounds %struct.snic, %struct.snic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SNIC_HOST_INFO(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %88

47:                                               ; preds = %2
  %48 = load %struct.snic*, %struct.snic** %3, align 8
  %49 = getelementptr inbounds %struct.snic, %struct.snic* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @SNIC_HOST_INFO(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %88

52:                                               ; preds = %2
  %53 = load %struct.snic*, %struct.snic** %3, align 8
  %54 = getelementptr inbounds %struct.snic, %struct.snic* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @SNIC_HOST_INFO(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %88

57:                                               ; preds = %2
  %58 = load %struct.snic*, %struct.snic** %3, align 8
  %59 = getelementptr inbounds %struct.snic, %struct.snic* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @SNIC_HOST_INFO(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %88

62:                                               ; preds = %2
  %63 = load %struct.snic*, %struct.snic** %3, align 8
  %64 = getelementptr inbounds %struct.snic, %struct.snic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SNIC_HOST_INFO(i32 %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %88

67:                                               ; preds = %2
  %68 = load %struct.snic*, %struct.snic** %3, align 8
  %69 = getelementptr inbounds %struct.snic, %struct.snic* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SNIC_HOST_INFO(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %88

72:                                               ; preds = %2
  %73 = load %struct.snic*, %struct.snic** %3, align 8
  %74 = getelementptr inbounds %struct.snic, %struct.snic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SNIC_HOST_INFO(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %88

77:                                               ; preds = %2
  %78 = load %struct.snic*, %struct.snic** %3, align 8
  %79 = getelementptr inbounds %struct.snic, %struct.snic* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @SNIC_HOST_INFO(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %88

82:                                               ; preds = %2
  %83 = load %struct.snic*, %struct.snic** %3, align 8
  %84 = getelementptr inbounds %struct.snic, %struct.snic* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SNIC_HOST_INFO(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  %87 = call i32 @SNIC_BUG_ON(i32 1)
  br label %88

88:                                               ; preds = %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32
  %89 = call i32 @SNIC_ASSERT_NOT_IMPL(i32 1)
  ret void
}

declare dso_local i32 @snic_io_hdr_dec(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @SNIC_ASSERT_NOT_IMPL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
