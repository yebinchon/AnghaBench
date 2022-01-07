; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_is_abts_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_scsi.c_snic_is_abts_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i64, i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.snic_req_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Found IO in %s on LUN\0A\00", align 1
@SNIC_IOREQ_ABTS_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snic*, %struct.scsi_cmnd*)* @snic_is_abts_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snic_is_abts_pending(%struct.snic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snic*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.snic_req_info*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.snic* %0, %struct.snic** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store %struct.snic_req_info* null, %struct.snic_req_info** %6, align 8
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_device* null, %struct.scsi_device** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %13 = icmp ne %struct.scsi_cmnd* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %8, align 8
  br label %18

18:                                               ; preds = %14, %2
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %86, %18
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.snic*, %struct.snic** %4, align 8
  %22 = getelementptr inbounds %struct.snic, %struct.snic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %19
  %26 = load %struct.snic*, %struct.snic** %4, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32* @snic_io_lock_tag(%struct.snic* %26, i64 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.snic*, %struct.snic** %4, align 8
  %33 = getelementptr inbounds %struct.snic, %struct.snic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %34, i64 %35)
  store %struct.scsi_cmnd* %36, %struct.scsi_cmnd** %7, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %38 = icmp ne %struct.scsi_cmnd* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %25
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %41 = icmp ne %struct.scsi_cmnd* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 0
  %45 = load %struct.scsi_device*, %struct.scsi_device** %44, align 8
  %46 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %47 = icmp ne %struct.scsi_device* %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %51 = icmp eq %struct.scsi_cmnd* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %42, %25
  %53 = load i32*, i32** %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  br label %86

56:                                               ; preds = %48, %39
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %58 = call i64 @CMD_SP(%struct.scsi_cmnd* %57)
  %59 = inttoptr i64 %58 to %struct.snic_req_info*
  store %struct.snic_req_info* %59, %struct.snic_req_info** %6, align 8
  %60 = load %struct.snic_req_info*, %struct.snic_req_info** %6, align 8
  %61 = icmp ne %struct.snic_req_info* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %56
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  br label %86

66:                                               ; preds = %56
  %67 = load %struct.snic*, %struct.snic** %4, align 8
  %68 = getelementptr inbounds %struct.snic, %struct.snic* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %71 = call i64 @CMD_STATE(%struct.scsi_cmnd* %70)
  %72 = call i32 @snic_ioreq_state_to_str(i64 %71)
  %73 = call i32 @SNIC_SCSI_DBG(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %75 = call i64 @CMD_STATE(%struct.scsi_cmnd* %74)
  %76 = load i64, i64* @SNIC_IOREQ_ABTS_PENDING, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i32*, i32** %9, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  store i32 1, i32* %3, align 4
  br label %90

82:                                               ; preds = %66
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %82, %62, %52
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %19

89:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %78
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32* @snic_io_lock_tag(%struct.snic*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*, i32) #1

declare dso_local i32 @snic_ioreq_state_to_str(i64) #1

declare dso_local i64 @CMD_STATE(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
