; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_ioa_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_ioa_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"response for Cancel CCN CDB[0] = %x ioasc = %x\0A\00", align 1
@REQ_TYPE_IOACMD = common dso_local global i32 0, align 4
@PMCRAID_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@PMCRAID_IOA_SHUTDOWN = common dso_local global i32 0, align 4
@PMCRAID_SHUTDOWN_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"firing normal shutdown command (%d) to IOA\0A\00", align 1
@PMC_DEVICE_EVENT_SHUTDOWN_START = common dso_local global i32 0, align 4
@pmcraid_ioa_shutdown_done = common dso_local global i32 0, align 4
@PMCRAID_SHUTDOWN_TIMEOUT = common dso_local global i32 0, align 4
@pmcraid_timeout_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_ioa_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_ioa_shutdown(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %3 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %3, i32 0, i32 1
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call i32 (i8*, i32, ...) @pmcraid_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %17)
  %19 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %20 = call i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd* %19)
  %21 = load i32, i32* @REQ_TYPE_IOACMD, align 4
  %22 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i32 %21, i32* %26, align 4
  %27 = load i32, i32* @PMCRAID_IOA_RES_HANDLE, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %28, i32* %33, align 8
  %34 = load i32, i32* @PMCRAID_IOA_SHUTDOWN, align 4
  %35 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* @PMCRAID_SHUTDOWN_NORMAL, align 4
  %43 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %44 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %42, i32* %49, align 4
  %50 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %51 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = call i32 (i8*, i32, ...) @pmcraid_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %59 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PMC_DEVICE_EVENT_SHUTDOWN_START, align 4
  %62 = call i32 @pmcraid_notify_ioastate(i32 %60, i32 %61)
  %63 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %64 = load i32, i32* @pmcraid_ioa_shutdown_done, align 4
  %65 = load i32, i32* @PMCRAID_SHUTDOWN_TIMEOUT, align 4
  %66 = load i32, i32* @pmcraid_timeout_handler, align 4
  %67 = call i32 @pmcraid_send_cmd(%struct.pmcraid_cmd* %63, i32 %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @pmcraid_info(i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_reinit_cmdblk(%struct.pmcraid_cmd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pmcraid_notify_ioastate(i32, i32) #1

declare dso_local i32 @pmcraid_send_cmd(%struct.pmcraid_cmd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
