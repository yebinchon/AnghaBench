; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dump_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_dump_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32 }
%struct.dasd_ccw_req = type { i32 }
%struct.irb = type { i32 }

@SNS1_FILE_PROTECTED = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_FP = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_IL = common dso_local global i32 0, align 4
@SNS0_CMD_REJECT = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_CR = common dso_local global i32 0, align 4
@SNS1_NO_REC_FOUND = common dso_local global i32 0, align 4
@DASD_CQR_SUPPRESS_NRF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*)* @dasd_eckd_dump_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_dump_sense(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca i32*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load %struct.irb*, %struct.irb** %6, align 8
  %9 = call i32* @dasd_get_sense(%struct.irb* %8)
  store i32* %9, i32** %7, align 8
  %10 = load %struct.irb*, %struct.irb** %6, align 8
  %11 = getelementptr inbounds %struct.irb, %struct.irb* %10, i32 0, i32 0
  %12 = call i64 @scsw_is_tm(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SNS1_FILE_PROTECTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @DASD_CQR_SUPPRESS_FP, align 4
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 0
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %87

31:                                               ; preds = %24, %17, %14
  %32 = load %struct.irb*, %struct.irb** %6, align 8
  %33 = getelementptr inbounds %struct.irb, %struct.irb* %32, i32 0, i32 0
  %34 = call i32 @scsw_cstat(i32* %33)
  %35 = icmp eq i32 %34, 64
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @DASD_CQR_SUPPRESS_IL, align 4
  %38 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %39 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %87

43:                                               ; preds = %36, %31
  %44 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %46 = load %struct.irb*, %struct.irb** %6, align 8
  %47 = call i32 @dasd_eckd_dump_sense_tcw(%struct.dasd_device* %44, %struct.dasd_ccw_req* %45, %struct.irb* %46)
  br label %87

48:                                               ; preds = %3
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load i32, i32* @DASD_CQR_SUPPRESS_CR, align 4
  %60 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %61 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %60, i32 0, i32 0
  %62 = call i64 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %87

65:                                               ; preds = %58, %51, %48
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @SNS1_NO_REC_FOUND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* @DASD_CQR_SUPPRESS_NRF, align 4
  %77 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %78 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %77, i32 0, i32 0
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75, %68, %65
  %83 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %84 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %85 = load %struct.irb*, %struct.irb** %6, align 8
  %86 = call i32 @dasd_eckd_dump_sense_ccw(%struct.dasd_device* %83, %struct.dasd_ccw_req* %84, %struct.irb* %85)
  br label %87

87:                                               ; preds = %30, %42, %64, %81, %82, %43
  ret void
}

declare dso_local i32* @dasd_get_sense(%struct.irb*) #1

declare dso_local i64 @scsw_is_tm(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @scsw_cstat(i32*) #1

declare dso_local i32 @dasd_eckd_dump_sense_tcw(%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*) #1

declare dso_local i32 @dasd_eckd_dump_sense_ccw(%struct.dasd_device*, %struct.dasd_ccw_req*, %struct.irb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
