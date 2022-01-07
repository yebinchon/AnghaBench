; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_reset_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_reset_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"reset_queue: flags 0x%x\0A\00", align 1
@CLIENT_FAILED = common dso_local global i32 0, align 4
@TRANS_EVENT = common dso_local global i32 0, align 4
@PRESERVE_FLAG_FIELDS = common dso_local global i32 0, align 4
@WAIT_CONNECTION = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@H_CLOSED = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"reset_queue: reg_crq rc %ld\0A\00", align 1
@ERR_DISCONNECTED = common dso_local global i8* null, align 8
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*)* @ibmvscsis_reset_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_reset_queue(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %5 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %6, i32 0, i32 2
  %8 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @CLIENT_FAILED, align 4
  %16 = load i32, i32* @TRANS_EVENT, align 4
  %17 = or i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = and i64 %14, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %1
  %22 = load i32, i32* @PRESERVE_FLAG_FIELDS, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %32 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %34 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load i8*, i8** @WAIT_CONNECTION, align 8
  %36 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %37 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @vio_enable_interrupts(i32 %40)
  br label %110

42:                                               ; preds = %1
  %43 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %44 = call i64 @ibmvscsis_free_command_q(%struct.scsi_info* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @ADAPT_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %42
  %49 = load i8*, i8** @WAIT_CONNECTION, align 8
  %50 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %51 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %53 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %3, align 4
  %58 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %63 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @h_reg_crq(i32 %61, i32 %65, i32 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i64, i64* @H_CLOSED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %48
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @H_SUCCESS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %48
  %76 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %77 = call i64 @ibmvscsis_establish_new_q(%struct.scsi_info* %76)
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @ADAPT_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %84 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %83, i32 0, i32 2
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i8*, i8** @ERR_DISCONNECTED, align 8
  %88 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %93 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = or i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %97 = call i64 @ibmvscsis_free_command_q(%struct.scsi_info* %96)
  br label %98

98:                                               ; preds = %82, %78
  br label %109

99:                                               ; preds = %42
  %100 = load i8*, i8** @ERR_DISCONNECTED, align 8
  %101 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %102 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %106 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %107, %104
  store i64 %108, i64* %106, align 8
  br label %109

109:                                              ; preds = %99, %98
  br label %110

110:                                              ; preds = %109, %21
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @vio_enable_interrupts(i32) #1

declare dso_local i64 @ibmvscsis_free_command_q(%struct.scsi_info*) #1

declare dso_local i64 @h_reg_crq(i32, i32, i32) #1

declare dso_local i64 @ibmvscsis_establish_new_q(%struct.scsi_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
