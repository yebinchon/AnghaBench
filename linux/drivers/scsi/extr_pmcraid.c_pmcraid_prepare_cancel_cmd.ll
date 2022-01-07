; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_prepare_cancel_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_pmcraid.c_pmcraid_prepare_cancel_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pmcraid_ioarcb }
%struct.pmcraid_ioarcb = type { i32*, i32, i32, i32 }

@REQ_TYPE_IOACMD = common dso_local global i32 0, align 4
@PMCRAID_MAX_CDB_LEN = common dso_local global i32 0, align 4
@PMCRAID_ABORT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*, %struct.pmcraid_cmd*)* @pmcraid_prepare_cancel_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_prepare_cancel_cmd(%struct.pmcraid_cmd* %0, %struct.pmcraid_cmd* %1) #0 {
  %3 = alloca %struct.pmcraid_cmd*, align 8
  %4 = alloca %struct.pmcraid_cmd*, align 8
  %5 = alloca %struct.pmcraid_ioarcb*, align 8
  %6 = alloca i32, align 4
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %3, align 8
  store %struct.pmcraid_cmd* %1, %struct.pmcraid_cmd** %4, align 8
  %7 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %3, align 8
  %8 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.pmcraid_ioarcb* %10, %struct.pmcraid_ioarcb** %5, align 8
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le64_to_cpu(i32 %16)
  %18 = call i32 @cpu_to_be64(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %5, align 8
  %26 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @REQ_TYPE_IOACMD, align 4
  %28 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %5, align 8
  %29 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %5, align 8
  %31 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* @PMCRAID_MAX_CDB_LEN, align 4
  %34 = call i32 @memset(i32* %32, i32 0, i32 %33)
  %35 = load i32, i32* @PMCRAID_ABORT_CMD, align 4
  %36 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %5, align 8
  %37 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load %struct.pmcraid_ioarcb*, %struct.pmcraid_ioarcb** %5, align 8
  %41 = getelementptr inbounds %struct.pmcraid_ioarcb, %struct.pmcraid_ioarcb* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = call i32 @memcpy(i32* %43, i32* %6, i32 4)
  ret void
}

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
