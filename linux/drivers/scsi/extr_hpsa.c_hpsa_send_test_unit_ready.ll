; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_test_unit_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_send_test_unit_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }
%struct.CommandList = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64* }

@TEST_UNIT_READY = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_SUCCESS = common dso_local global i64 0, align 8
@CMD_TARGET_STATUS = common dso_local global i64 0, align 8
@SAM_STAT_CHECK_CONDITION = common dso_local global i64 0, align 8
@NO_SENSE = common dso_local global i64 0, align 8
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.CommandList*, i8*, i32)* @hpsa_send_test_unit_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_send_test_unit_ready(%struct.ctlr_info* %0, %struct.CommandList* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca %struct.CommandList*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store %struct.CommandList* %1, %struct.CommandList** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %12 = load i32, i32* @TEST_UNIT_READY, align 4
  %13 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* @TYPE_CMD, align 4
  %16 = call i32 @fill_cmd(%struct.CommandList* %11, i32 %12, %struct.ctlr_info* %13, i32* null, i32 0, i32 0, i8* %14, i32 %15)
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %18 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NO_TIMEOUT, align 4
  %21 = call i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info* %17, %struct.CommandList* %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %73

26:                                               ; preds = %4
  %27 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %28 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CMD_SUCCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %73

35:                                               ; preds = %26
  %36 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %37 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CMD_TARGET_STATUS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %35
  %44 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %45 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SAM_STAT_CHECK_CONDITION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %43
  %52 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %53 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NO_SENSE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %51
  %62 = load %struct.CommandList*, %struct.CommandList** %7, align 8
  %63 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UNIT_ATTENTION, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61, %51
  store i32 0, i32* %5, align 4
  br label %73

72:                                               ; preds = %61, %43, %35
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %71, %34, %24
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
