; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_is_abts_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_fnic_scsi.c_fnic_is_abts_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_cmnd = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.fnic_io_req = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Found IO in %s on lun\0A\00", align 1
@FNIC_IOREQ_ABTS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fnic_is_abts_pending(%struct.fnic* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.fnic*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fnic_io_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  store %struct.fnic* %0, %struct.fnic** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  store i32 0, i32* %9, align 4
  store %struct.scsi_device* null, %struct.scsi_device** %11, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = icmp ne %struct.scsi_cmnd* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 0
  %17 = load %struct.scsi_device*, %struct.scsi_device** %16, align 8
  store %struct.scsi_device* %17, %struct.scsi_device** %11, align 8
  br label %18

18:                                               ; preds = %14, %2
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %91, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.fnic*, %struct.fnic** %3, align 8
  %22 = getelementptr inbounds %struct.fnic, %struct.fnic* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %94

25:                                               ; preds = %19
  %26 = load %struct.fnic*, %struct.fnic** %3, align 8
  %27 = getelementptr inbounds %struct.fnic, %struct.fnic* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.scsi_cmnd* @scsi_host_find_tag(i32 %30, i32 %31)
  store %struct.scsi_cmnd* %32, %struct.scsi_cmnd** %10, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %34 = icmp ne %struct.scsi_cmnd* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %37 = icmp ne %struct.scsi_cmnd* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 0
  %41 = load %struct.scsi_device*, %struct.scsi_device** %40, align 8
  %42 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %43 = icmp ne %struct.scsi_device* %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = icmp eq %struct.scsi_cmnd* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %38, %25
  br label %91

49:                                               ; preds = %44, %35
  %50 = load %struct.fnic*, %struct.fnic** %3, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %52 = call i32* @fnic_io_lock_hash(%struct.fnic* %50, %struct.scsi_cmnd* %51)
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %57 = call i64 @CMD_SP(%struct.scsi_cmnd* %56)
  %58 = inttoptr i64 %57 to %struct.fnic_io_req*
  store %struct.fnic_io_req* %58, %struct.fnic_io_req** %6, align 8
  %59 = load %struct.fnic_io_req*, %struct.fnic_io_req** %6, align 8
  %60 = icmp ne %struct.fnic_io_req* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load %struct.scsi_device*, %struct.scsi_device** %63, align 8
  %65 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %66 = icmp ne %struct.scsi_device* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %49
  %68 = load i32*, i32** %7, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %91

71:                                               ; preds = %61
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = load %struct.fnic*, %struct.fnic** %3, align 8
  %74 = getelementptr inbounds %struct.fnic, %struct.fnic* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %79 = call i64 @CMD_STATE(%struct.scsi_cmnd* %78)
  %80 = call i32 @fnic_ioreq_state_to_str(i64 %79)
  %81 = call i32 @FNIC_SCSI_DBG(i32 %72, i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %83 = call i64 @CMD_STATE(%struct.scsi_cmnd* %82)
  %84 = load i64, i64* @FNIC_IOREQ_ABTS_PENDING, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %71
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %67, %48
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %19

94:                                               ; preds = %19
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.scsi_cmnd* @scsi_host_find_tag(i32, i32) #1

declare dso_local i32* @fnic_io_lock_hash(%struct.fnic*, %struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @CMD_SP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @FNIC_SCSI_DBG(i32, i32, i8*, i32) #1

declare dso_local i32 @fnic_ioreq_state_to_str(i64) #1

declare dso_local i64 @CMD_STATE(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
