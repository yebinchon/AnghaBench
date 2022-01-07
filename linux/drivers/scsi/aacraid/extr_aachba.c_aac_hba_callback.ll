; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_hba_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_hba_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, %struct.aac_dev*, i64 }
%struct.aac_dev = type { i32 }
%struct.scsi_cmnd = type { i32, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.aac_hba_resp = type { i32 }
%struct.aac_native_hba = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.aac_hba_resp }

@FIB_CONTEXT_FLAG_NATIVE_HBA_TMF = common dso_local global i32 0, align 4
@FIB_CONTEXT_FLAG_FASTRESP = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@MESSAGE_REJECT = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_hba_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_dev*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.aac_hba_resp*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %8 = load %struct.fib*, %struct.fib** %4, align 8
  %9 = getelementptr inbounds %struct.fib, %struct.fib* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.aac_native_hba*
  %12 = getelementptr inbounds %struct.aac_native_hba, %struct.aac_native_hba* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.aac_hba_resp* %13, %struct.aac_hba_resp** %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %6, align 8
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %17 = load %struct.fib*, %struct.fib** %4, align 8
  %18 = call i32 @aac_valid_context(%struct.scsi_cmnd* %16, %struct.fib* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.fib*, %struct.fib** %4, align 8
  %23 = icmp eq %struct.fib* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.fib*, %struct.fib** %4, align 8
  %27 = getelementptr inbounds %struct.fib, %struct.fib* %26, i32 0, i32 1
  %28 = load %struct.aac_dev*, %struct.aac_dev** %27, align 8
  store %struct.aac_dev* %28, %struct.aac_dev** %5, align 8
  %29 = load %struct.fib*, %struct.fib** %4, align 8
  %30 = getelementptr inbounds %struct.fib, %struct.fib* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FIB_CONTEXT_FLAG_NATIVE_HBA_TMF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %37 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %36)
  br label %38

38:                                               ; preds = %35, %21
  %39 = load %struct.fib*, %struct.fib** %4, align 8
  %40 = getelementptr inbounds %struct.fib, %struct.fib* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FIB_CONTEXT_FLAG_FASTRESP, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* @DID_OK, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* @COMMAND_COMPLETE, align 4
  %49 = shl i32 %48, 8
  %50 = or i32 %47, %49
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %100

53:                                               ; preds = %38
  %54 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %7, align 8
  %55 = getelementptr inbounds %struct.aac_hba_resp, %struct.aac_hba_resp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %91 [
    i32 132, label %57
    i32 133, label %62
    i32 129, label %67
    i32 130, label %75
    i32 131, label %83
    i32 128, label %83
  ]

57:                                               ; preds = %53
  %58 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %60 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %7, align 8
  %61 = call i32 @hba_resp_task_complete(%struct.aac_dev* %58, %struct.scsi_cmnd* %59, %struct.aac_hba_resp* %60)
  br label %99

62:                                               ; preds = %53
  %63 = load %struct.aac_dev*, %struct.aac_dev** %5, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %65 = load %struct.aac_hba_resp*, %struct.aac_hba_resp** %7, align 8
  %66 = call i32 @hba_resp_task_failure(%struct.aac_dev* %63, %struct.scsi_cmnd* %64, %struct.aac_hba_resp* %65)
  br label %99

67:                                               ; preds = %53
  %68 = load i32, i32* @DID_ERROR, align 4
  %69 = shl i32 %68, 16
  %70 = load i32, i32* @MESSAGE_REJECT, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %69, %71
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %99

75:                                               ; preds = %53
  %76 = load i32, i32* @DID_NO_CONNECT, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* @COMMAND_COMPLETE, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %99

83:                                               ; preds = %53, %53
  %84 = load i32, i32* @DID_OK, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* @COMMAND_COMPLETE, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %85, %87
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  br label %99

91:                                               ; preds = %53
  %92 = load i32, i32* @DID_ERROR, align 4
  %93 = shl i32 %92, 16
  %94 = load i32, i32* @COMMAND_COMPLETE, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %93, %95
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %91, %83, %75, %67, %62, %57
  br label %100

100:                                              ; preds = %99, %45
  %101 = load %struct.fib*, %struct.fib** %4, align 8
  %102 = call i32 @aac_fib_complete(%struct.fib* %101)
  %103 = load %struct.fib*, %struct.fib** %4, align 8
  %104 = getelementptr inbounds %struct.fib, %struct.fib* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FIB_CONTEXT_FLAG_NATIVE_HBA_TMF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 1
  %116 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %115, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %118 = call i32 %116(%struct.scsi_cmnd* %117)
  br label %119

119:                                              ; preds = %20, %113, %109
  ret void
}

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @hba_resp_task_complete(%struct.aac_dev*, %struct.scsi_cmnd*, %struct.aac_hba_resp*) #1

declare dso_local i32 @hba_resp_task_failure(%struct.aac_dev*, %struct.scsi_cmnd*, %struct.aac_hba_resp*) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
