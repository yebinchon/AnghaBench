; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_wait_for_pending_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_qla1280.c_qla1280_wait_for_pending_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.srb** }
%struct.srb = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@MAX_OUTSTANDING_COMMANDS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32, i32)* @qla1280_wait_for_pending_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla1280_wait_for_pending_commands(%struct.scsi_qla_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.srb*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %57, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_OUTSTANDING_COMMANDS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %60

16:                                               ; preds = %12
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 0
  %19 = load %struct.srb**, %struct.srb*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.srb*, %struct.srb** %19, i64 %21
  %23 = load %struct.srb*, %struct.srb** %22, align 8
  store %struct.srb* %23, %struct.srb** %9, align 8
  %24 = load %struct.srb*, %struct.srb** %9, align 8
  %25 = icmp ne %struct.srb* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %16
  %27 = load %struct.srb*, %struct.srb** %9, align 8
  %28 = getelementptr inbounds %struct.srb, %struct.srb* %27, i32 0, i32 0
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %28, align 8
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %10, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %34 = call i32 @SCSI_BUS_32(%struct.scsi_cmnd* %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %57

38:                                               ; preds = %32, %26
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %43 = call i32 @SCSI_TCN_32(%struct.scsi_cmnd* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %57

47:                                               ; preds = %41, %38
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %49 = load %struct.srb*, %struct.srb** %9, align 8
  %50 = call i32 @qla1280_wait_for_single_command(%struct.scsi_qla_host* %48, %struct.srb* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @FAILED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %60

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %16
  br label %57

57:                                               ; preds = %56, %46, %37
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %12

60:                                               ; preds = %54, %12
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @SCSI_BUS_32(%struct.scsi_cmnd*) #1

declare dso_local i32 @SCSI_TCN_32(%struct.scsi_cmnd*) #1

declare dso_local i32 @qla1280_wait_for_single_command(%struct.scsi_qla_host*, %struct.srb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
