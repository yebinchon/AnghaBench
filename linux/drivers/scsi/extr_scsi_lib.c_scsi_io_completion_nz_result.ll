; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_io_completion_nz_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_lib.c_scsi_io_completion_nz_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, %struct.request* }
%struct.request = type { i32 }
%struct.scsi_sense_hdr = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@RECOVERED_ERROR = common dso_local global i64 0, align 8
@RQF_QUIET = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, i32*)* @scsi_io_completion_nz_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_io_completion_nz_result(%struct.scsi_cmnd* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.scsi_sense_hdr, align 8
  %11 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.request*, %struct.request** %13, align 8
  store %struct.request* %14, %struct.request** %9, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = call i32 @scsi_command_normalize_sense(%struct.scsi_cmnd* %15, %struct.scsi_sense_hdr* %10)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = call i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %10)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.request*, %struct.request** %9, align 8
  %26 = call i64 @blk_rq_is_passthrough(%struct.request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 7
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 8, %36
  %38 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %39 = call i32 @min(i64 %37, i32 %38)
  %40 = load %struct.request*, %struct.request** %9, align 8
  %41 = call %struct.TYPE_2__* @scsi_req(%struct.request* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %31, %28
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @scsi_result_to_blk_status(%struct.scsi_cmnd* %47, i32 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  br label %65

52:                                               ; preds = %24
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = call i64 @blk_rq_bytes(%struct.request* %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @scsi_result_to_blk_status(%struct.scsi_cmnd* %60, i32 %61)
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %56, %52
  br label %65

65:                                               ; preds = %64, %51
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @RECOVERED_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %68
  store i32 1, i32* %11, align 4
  %74 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 29
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  br label %91

82:                                               ; preds = %77, %73
  %83 = load %struct.request*, %struct.request** %9, align 8
  %84 = getelementptr inbounds %struct.request, %struct.request* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @RQF_QUIET, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %82
  br label %91

91:                                               ; preds = %90, %81
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %96 = call i32 @scsi_print_sense(%struct.scsi_cmnd* %95)
  br label %97

97:                                               ; preds = %94, %91
  store i32 0, i32* %5, align 4
  %98 = load i32, i32* @BLK_STS_OK, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %68, %65
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @status_byte(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i64 @scsi_status_is_good(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  %109 = load i32, i32* @BLK_STS_OK, align 4
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %104, %100
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @scsi_command_normalize_sense(%struct.scsi_cmnd*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

declare dso_local i64 @blk_rq_is_passthrough(%struct.request*) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

declare dso_local i32 @scsi_result_to_blk_status(%struct.scsi_cmnd*, i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @scsi_print_sense(%struct.scsi_cmnd*) #1

declare dso_local i64 @status_byte(i32) #1

declare dso_local i64 @scsi_status_is_good(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
