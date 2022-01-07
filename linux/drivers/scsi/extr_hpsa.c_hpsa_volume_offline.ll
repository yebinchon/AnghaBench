; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_volume_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_volume_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32 }

@TEST_UNIT_READY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@DEFAULT_REPLY_QUEUE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@HPSA_LV_OK = common dso_local global i8 0, align 1
@ASCQ_LUN_NOT_READY_FORMAT_IN_PROGRESS = common dso_local global i32 0, align 4
@ASCQ_LUN_NOT_READY_INITIALIZING_CMD_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.ctlr_info*, i8*)* @hpsa_volume_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hpsa_volume_offline(%struct.ctlr_info* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CommandList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %17 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %16)
  store %struct.CommandList* %17, %struct.CommandList** %6, align 8
  %18 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %19 = load i32, i32* @TEST_UNIT_READY, align 4
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @TYPE_CMD, align 4
  %23 = call i32 @fill_cmd(%struct.CommandList* %18, i32 %19, %struct.ctlr_info* %20, i32* null, i32 0, i32 0, i8* %21, i32 %22)
  %24 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %25 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %26 = load i32, i32* @DEFAULT_REPLY_QUEUE, align 4
  %27 = load i32, i32* @NO_TIMEOUT, align 4
  %28 = call i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info* %24, %struct.CommandList* %25, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %33 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %34 = call i32 @cmd_free(%struct.ctlr_info* %32, %struct.CommandList* %33)
  store i8 -128, i8* %3, align 1
  br label %92

35:                                               ; preds = %2
  %36 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %37 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %7, align 8
  %41 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %42 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ugt i64 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 8, i32* %11, align 4
  br label %55

49:                                               ; preds = %35
  %50 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %51 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %49, %48
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @decode_sense_data(i8* %56, i32 %57, i32* %8, i32* %9, i32* %10)
  %59 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %60 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %14, align 4
  %64 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %65 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %15, align 4
  %69 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %70 = load %struct.CommandList*, %struct.CommandList** %6, align 8
  %71 = call i32 @cmd_free(%struct.ctlr_info* %69, %struct.CommandList* %70)
  %72 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @hpsa_get_volume_status(%struct.ctlr_info* %72, i8* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %89 [
    i32 136, label %76
    i32 130, label %76
    i32 135, label %76
    i32 129, label %76
    i32 134, label %76
    i32 137, label %76
    i32 133, label %76
    i32 132, label %76
    i32 131, label %76
    i32 138, label %76
    i32 128, label %79
  ]

76:                                               ; preds = %55, %55, %55, %55, %55, %55, %55, %55, %55, %55
  %77 = load i32, i32* %13, align 4
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %3, align 1
  br label %92

79:                                               ; preds = %55
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %13, align 4
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %3, align 1
  br label %92

88:                                               ; preds = %82
  br label %90

89:                                               ; preds = %55
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i8, i8* @HPSA_LV_OK, align 1
  store i8 %91, i8* %3, align 1
  br label %92

92:                                               ; preds = %90, %85, %76, %31
  %93 = load i8, i8* %3, align 1
  ret i8 %93
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @decode_sense_data(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hpsa_get_volume_status(%struct.ctlr_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
