; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ioaccel_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ioaccel_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.hpsa_scsi_dev_t*, %struct.scsi_cmnd*, i8*, i32 }
%struct.hpsa_scsi_dev_t = type { i64, i64, i64 }
%struct.scsi_cmnd = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hpsa_scsi_dev_t* }

@IO_ACCEL_INELIGIBLE = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@hpsa_simple_mode = common dso_local global i64 0, align 8
@CMD_SCSI = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, %struct.scsi_cmnd*)* @hpsa_ioaccel_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_ioaccel_submit(%struct.ctlr_info* %0, %struct.CommandList* %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca %struct.CommandList*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.hpsa_scsi_dev_t*, align 8
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store %struct.CommandList* %1, %struct.CommandList** %6, align 8
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %13, align 8
  store %struct.hpsa_scsi_dev_t* %14, %struct.hpsa_scsi_dev_t** %8, align 8
  %15 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %17 = icmp ne %struct.hpsa_scsi_dev_t* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %19, i32* %4, align 4
  br label %97

20:                                               ; preds = %3
  %21 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %22 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %26, i32* %4, align 4
  br label %97

27:                                               ; preds = %20
  %28 = load i64, i64* @hpsa_simple_mode, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @IO_ACCEL_INELIGIBLE, align 4
  store i32 %31, i32* %4, align 4
  br label %97

32:                                               ; preds = %27
  %33 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %34 = bitcast %struct.CommandList* %33 to i8*
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %38 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %32
  %42 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %43 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %44 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %47 = call i32 @hpsa_cmd_init(%struct.ctlr_info* %42, i32 %45, %struct.CommandList* %46)
  %48 = load i8*, i8** @CMD_SCSI, align 8
  %49 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %50 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %52 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %53 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %52, i32 0, i32 1
  store %struct.scsi_cmnd* %51, %struct.scsi_cmnd** %53, align 8
  %54 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %55 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %56 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %55, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* %54, %struct.hpsa_scsi_dev_t** %56, align 8
  %57 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %58 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %59 = call i32 @hpsa_scsi_ioaccel_raid_map(%struct.ctlr_info* %57, %struct.CommandList* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %41
  %63 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %62, %41
  br label %95

65:                                               ; preds = %32
  %66 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %67 = getelementptr inbounds %struct.hpsa_scsi_dev_t, %struct.hpsa_scsi_dev_t* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %65
  %71 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %72 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %73 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %76 = call i32 @hpsa_cmd_init(%struct.ctlr_info* %71, i32 %74, %struct.CommandList* %75)
  %77 = load i8*, i8** @CMD_SCSI, align 8
  %78 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %79 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %81 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %82 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %81, i32 0, i32 1
  store %struct.scsi_cmnd* %80, %struct.scsi_cmnd** %82, align 8
  %83 = load %struct.hpsa_scsi_dev_t*, %struct.hpsa_scsi_dev_t** %8, align 8
  %84 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %85 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %84, i32 0, i32 0
  store %struct.hpsa_scsi_dev_t* %83, %struct.hpsa_scsi_dev_t** %85, align 8
  %86 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %87 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %88 = call i32 @hpsa_scsi_ioaccel_direct_map(%struct.ctlr_info* %86, %struct.CommandList* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %70
  %92 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %70
  br label %94

94:                                               ; preds = %93, %65
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %30, %25, %18
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @hpsa_cmd_init(%struct.ctlr_info*, i32, %struct.CommandList*) #1

declare dso_local i32 @hpsa_scsi_ioaccel_raid_map(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @hpsa_scsi_ioaccel_direct_map(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
