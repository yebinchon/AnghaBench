; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_report_tgt_cmpl_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_report_tgt_cmpl_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.snic = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.snic_fw_req = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.snic_req_info = type { i64 }
%struct.snic_tgt_id = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"No Targets Found on this host.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Target Count = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Tgt id = 0x%x\0A\00", align 1
@snic_glob = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_report_tgt_cmpl_handler(%struct.snic* %0, %struct.snic_fw_req* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_fw_req*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.snic_req_info*, align 8
  %12 = alloca %struct.snic_tgt_id*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_fw_req* %1, %struct.snic_fw_req** %4, align 8
  store i32 0, i32* %9, align 4
  store %struct.snic_req_info* null, %struct.snic_req_info** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.snic_fw_req*, %struct.snic_fw_req** %4, align 8
  %16 = getelementptr inbounds %struct.snic_fw_req, %struct.snic_fw_req* %15, i32 0, i32 1
  %17 = call i32 @snic_io_hdr_dec(i32* %16, i32* %5, i32* %6, i32* %7, i32* %8, i64* %10)
  %18 = load i64, i64* %10, align 8
  %19 = inttoptr i64 %18 to %struct.snic_req_info*
  store %struct.snic_req_info* %19, %struct.snic_req_info** %11, align 8
  %20 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %21 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.snic_tgt_id*
  store %struct.snic_tgt_id* %23, %struct.snic_tgt_id** %12, align 8
  %24 = load %struct.snic_fw_req*, %struct.snic_fw_req** %4, align 8
  %25 = getelementptr inbounds %struct.snic_fw_req, %struct.snic_fw_req* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load %struct.snic*, %struct.snic** %3, align 8
  %34 = getelementptr inbounds %struct.snic, %struct.snic* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @SNIC_HOST_ERR(i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  br label %86

37:                                               ; preds = %2
  %38 = load %struct.snic*, %struct.snic** %3, align 8
  %39 = getelementptr inbounds %struct.snic, %struct.snic* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @SNIC_HOST_INFO(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.snic*, %struct.snic** %3, align 8
  %45 = getelementptr inbounds %struct.snic, %struct.snic* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @SNIC_BUG_ON(i32 %49)
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %67, %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %70

55:                                               ; preds = %51
  %56 = load %struct.snic*, %struct.snic** %3, align 8
  %57 = getelementptr inbounds %struct.snic, %struct.snic* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.snic_tgt_id*, %struct.snic_tgt_id** %12, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.snic_tgt_id, %struct.snic_tgt_id* %59, i64 %61
  %63 = getelementptr inbounds %struct.snic_tgt_id, %struct.snic_tgt_id* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = call i32 @SNIC_HOST_INFO(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %51

70:                                               ; preds = %51
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.snic*, %struct.snic** %3, align 8
  %73 = getelementptr inbounds %struct.snic, %struct.snic* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load %struct.snic_tgt_id*, %struct.snic_tgt_id** %12, align 8
  %76 = bitcast %struct.snic_tgt_id* %75 to i32*
  %77 = load %struct.snic*, %struct.snic** %3, align 8
  %78 = getelementptr inbounds %struct.snic, %struct.snic* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i32* %76, i32** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @snic_glob, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.snic*, %struct.snic** %3, align 8
  %84 = getelementptr inbounds %struct.snic, %struct.snic* %83, i32 0, i32 0
  %85 = call i32 @queue_work(i32 %82, i32* %84)
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %70, %32
  %87 = load %struct.snic*, %struct.snic** %3, align 8
  %88 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %89 = call i32 @snic_pci_unmap_rsp_buf(%struct.snic* %87, %struct.snic_req_info* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.snic_tgt_id*, %struct.snic_tgt_id** %12, align 8
  %94 = call i32 @kfree(%struct.snic_tgt_id* %93)
  br label %95

95:                                               ; preds = %92, %86
  %96 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %97 = getelementptr inbounds %struct.snic_req_info, %struct.snic_req_info* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.snic*, %struct.snic** %3, align 8
  %99 = load %struct.snic_req_info*, %struct.snic_req_info** %11, align 8
  %100 = call i32 @snic_release_untagged_req(%struct.snic* %98, %struct.snic_req_info* %99)
  %101 = load i32, i32* %14, align 4
  ret i32 %101
}

declare dso_local i32 @snic_io_hdr_dec(i32*, i32*, i32*, i32*, i32*, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*, i32) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @snic_pci_unmap_rsp_buf(%struct.snic*, %struct.snic_req_info*) #1

declare dso_local i32 @kfree(%struct.snic_tgt_id*) #1

declare dso_local i32 @snic_release_untagged_req(%struct.snic*, %struct.snic_req_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
