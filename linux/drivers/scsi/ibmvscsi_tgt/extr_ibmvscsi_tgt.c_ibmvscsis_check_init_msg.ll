; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_check_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_check_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.viosrp_crq = type { i64, i64 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@UNUSED_FORMAT = common dso_local global i64 0, align 8
@VALID_INIT_MSG = common dso_local global i64 0, align 8
@INIT_MSG = common dso_local global i64 0, align 8
@INVALIDATE_CMD_RESP_EL = common dso_local global i8* null, align 8
@ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, i64*)* @ibmvscsis_check_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_check_init_msg(%struct.scsi_info* %0, i64* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.viosrp_crq*, align 8
  %6 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.viosrp_crq* @ibmvscsis_cmd_q_dequeue(i32 %11, i32* %14, i32 %18)
  store %struct.viosrp_crq* %19, %struct.viosrp_crq** %5, align 8
  %20 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %21 = icmp ne %struct.viosrp_crq* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i64, i64* @UNUSED_FORMAT, align 8
  %24 = load i64*, i64** %4, align 8
  store i64 %23, i64* %24, align 8
  br label %83

25:                                               ; preds = %2
  %26 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %27 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VALID_INIT_MSG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %33 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INIT_MSG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %31
  %38 = load i64, i64* @INIT_MSG, align 8
  %39 = load i64*, i64** %4, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** @INVALIDATE_CMD_RESP_EL, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %43 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = call i32 (...) @dma_rmb()
  %45 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.viosrp_crq* @ibmvscsis_cmd_q_dequeue(i32 %48, i32* %51, i32 %55)
  store %struct.viosrp_crq* %56, %struct.viosrp_crq** %5, align 8
  %57 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %58 = icmp ne %struct.viosrp_crq* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %37
  %60 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %61 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %4, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* @ERROR, align 8
  store i64 %64, i64* %6, align 8
  %65 = load i8*, i8** @INVALIDATE_CMD_RESP_EL, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %68 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = call i32 (...) @dma_rmb()
  br label %70

70:                                               ; preds = %59, %37
  br label %82

71:                                               ; preds = %31, %25
  %72 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %73 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %4, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* @ERROR, align 8
  store i64 %76, i64* %6, align 8
  %77 = load i8*, i8** @INVALIDATE_CMD_RESP_EL, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.viosrp_crq*, %struct.viosrp_crq** %5, align 8
  %80 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = call i32 (...) @dma_rmb()
  br label %82

82:                                               ; preds = %71, %70
  br label %83

83:                                               ; preds = %82, %22
  %84 = load i64, i64* %6, align 8
  ret i64 %84
}

declare dso_local %struct.viosrp_crq* @ibmvscsis_cmd_q_dequeue(i32, i32*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
