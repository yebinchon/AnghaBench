; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_disc.c_esas2r_disc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i32, %struct.esas2r_sas_nvram* }
%struct.TYPE_2__ = type { i32* }
%struct.esas2r_sas_nvram = type { i32, i32 }

@AF_DISC_IN_PROG = common dso_local global i32 0, align 4
@AF2_DEV_SCAN = common dso_local global i32 0, align 4
@AF2_DEV_CNT_OK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ESAS2R_MAX_TARGETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"starting discovery...\00", align 1
@AF_CHPRST_DETECTED = common dso_local global i32 0, align 4
@AF_POWER_MGT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"disc wait count: %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"disc wait time: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_disc_initialize(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_sas_nvram*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 7
  %6 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %5, align 8
  store %struct.esas2r_sas_nvram* %6, %struct.esas2r_sas_nvram** %3, align 8
  %7 = call i32 (...) @esas2r_trace_enter()
  %8 = load i32, i32* @AF_DISC_IN_PROG, align 4
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 3
  %11 = call i32 @clear_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @AF2_DEV_SCAN, align 4
  %13 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %13, i32 0, i32 6
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load i32, i32* @AF2_DEV_CNT_OK, align 4
  %17 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %17, i32 0, i32 6
  %19 = call i32 @clear_bit(i32 %16, i32* %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = call i32 @jiffies_to_msecs(i32 %20)
  %22 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 8
  %24 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %25 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %31 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ESAS2R_MAX_TARGETS, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @ESAS2R_MAX_TARGETS, align 4
  %42 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %1
  %45 = call i32 @esas2r_hdebug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  %49 = load i32, i32* @AF_CHPRST_DETECTED, align 4
  %50 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %50, i32 0, i32 3
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @AF_POWER_MGT, align 4
  %56 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %56, i32 0, i32 3
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %54, %44
  %61 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %83

68:                                               ; preds = %60
  %69 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 15000
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %80, i32 0, i32 0
  store i32 15000, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %68
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %54
  %85 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @esas2r_trace(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %90 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @esas2r_trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %99 = call i32 @esas2r_disc_check_complete(%struct.esas2r_adapter* %98)
  br label %100

100:                                              ; preds = %97, %84
  %101 = call i32 (...) @esas2r_trace_exit()
  ret void
}

declare dso_local i32 @esas2r_trace_enter(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @esas2r_hdebug(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @esas2r_trace(i8*, i32) #1

declare dso_local i32 @esas2r_disc_check_complete(%struct.esas2r_adapter*) #1

declare dso_local i32 @esas2r_trace_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
