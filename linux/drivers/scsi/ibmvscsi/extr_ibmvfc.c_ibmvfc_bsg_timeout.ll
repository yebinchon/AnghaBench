; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_bsg_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_bsg_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i64 }
%struct.ibmvfc_host = type { i32, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ibmvfc_tmf }
%struct.ibmvfc_tmf = type { i8*, i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@ENTER = common dso_local global i32 0, align 4
@IBMVFC_ACTIVE = common dso_local global i64 0, align 8
@ibmvfc_bsg_timeout_done = common dso_local global i32 0, align 4
@IBMVFC_MAD_FORMAT = common dso_local global i32 0, align 4
@IBMVFC_TMF_MAD = common dso_local global i32 0, align 4
@IBMVFC_PASSTHRU_CANCEL_KEY = common dso_local global i32 0, align 4
@IBMVFC_INTERNAL_CANCEL_KEY = common dso_local global i32 0, align 4
@default_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to send cancel event. rc=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Cancelling passthru command to port id 0x%lx\0A\00", align 1
@LEAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @ibmvfc_bsg_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvfc_bsg_timeout(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibmvfc_event*, align 8
  %7 = alloca %struct.ibmvfc_tmf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %10 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %11 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %10)
  %12 = call %struct.ibmvfc_host* @shost_priv(i32 %11)
  store %struct.ibmvfc_host* %12, %struct.ibmvfc_host** %4, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* @ENTER, align 4
  %17 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %18 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %25 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %1
  %29 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IBMVFC_ACTIVE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28, %1
  %35 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %36 = call i32 @__ibmvfc_reset_host(%struct.ibmvfc_host* %35)
  %37 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %38 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32 %41, i64 %42)
  store i32 0, i32* %2, align 4
  br label %115

44:                                               ; preds = %28
  %45 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %46 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %48 = call %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host* %47)
  store %struct.ibmvfc_event* %48, %struct.ibmvfc_event** %6, align 8
  %49 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %50 = load i32, i32* @ibmvfc_bsg_timeout_done, align 4
  %51 = load i32, i32* @IBMVFC_MAD_FORMAT, align 4
  %52 = call i32 @ibmvfc_init_event(%struct.ibmvfc_event* %49, i32 %50, i32 %51)
  %53 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %54 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store %struct.ibmvfc_tmf* %55, %struct.ibmvfc_tmf** %7, align 8
  %56 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %57 = call i32 @memset(%struct.ibmvfc_tmf* %56, i32 0, i32 48)
  %58 = call i8* @cpu_to_be32(i32 1)
  %59 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %60 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* @IBMVFC_TMF_MAD, align 4
  %63 = call i8* @cpu_to_be32(i32 %62)
  %64 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %65 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i8* %63, i8** %66, align 8
  %67 = call i32 @cpu_to_be16(i32 48)
  %68 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %69 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @cpu_to_be64(i64 %71)
  %73 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %74 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @IBMVFC_PASSTHRU_CANCEL_KEY, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @IBMVFC_INTERNAL_CANCEL_KEY, align 4
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load %struct.ibmvfc_tmf*, %struct.ibmvfc_tmf** %7, align 8
  %82 = getelementptr inbounds %struct.ibmvfc_tmf, %struct.ibmvfc_tmf* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %6, align 8
  %84 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %85 = load i32, i32* @default_timeout, align 4
  %86 = call i32 @ibmvfc_send_event(%struct.ibmvfc_event* %83, %struct.ibmvfc_host* %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %44
  %90 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %91 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %93 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %9, align 4
  br label %105

99:                                               ; preds = %44
  %100 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %101 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* %5, align 8
  %104 = call i32 @dev_info(i32 %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %99, %89
  %106 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %107 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32 %110, i64 %111)
  %113 = load i32, i32* @LEAVE, align 4
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %105, %34
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.ibmvfc_host* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @__ibmvfc_reset_host(%struct.ibmvfc_host*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local %struct.ibmvfc_event* @ibmvfc_get_event(%struct.ibmvfc_host*) #1

declare dso_local i32 @ibmvfc_init_event(%struct.ibmvfc_event*, i32, i32) #1

declare dso_local i32 @memset(%struct.ibmvfc_tmf*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @ibmvfc_send_event(%struct.ibmvfc_event*, %struct.ibmvfc_host*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
