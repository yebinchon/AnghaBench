; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_report_luns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_scsi_do_report_luns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.CommandList = type { %struct.ErrorInfo*, %struct.TYPE_3__ }
%struct.ErrorInfo = type { i64 }
%struct.TYPE_3__ = type { i32* }
%struct.ReportLUNdata = type { i32 }

@IO_OK = common dso_local global i32 0, align 4
@HPSA_REPORT_LOG = common dso_local global i32 0, align 4
@HPSA_REPORT_PHYS = common dso_local global i32 0, align 4
@TYPE_CMD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NO_TIMEOUT = common dso_local global i32 0, align 4
@CMD_DATA_UNDERRUN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"report luns requested format %u, got %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i32, i8*, i32, i32)* @hpsa_scsi_do_report_luns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_scsi_do_report_luns(%struct.ctlr_info* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ctlr_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.CommandList*, align 8
  %13 = alloca [8 x i8], align 1
  %14 = alloca %struct.ErrorInfo*, align 8
  %15 = alloca %struct.ReportLUNdata*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @IO_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %18 = call %struct.CommandList* @cmd_alloc(%struct.ctlr_info* %17)
  store %struct.CommandList* %18, %struct.CommandList** %12, align 8
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 8)
  %21 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @HPSA_REPORT_LOG, align 4
  br label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @HPSA_REPORT_PHYS, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %34 = load i32, i32* @TYPE_CMD, align 4
  %35 = call i64 @fill_cmd(%struct.CommandList* %21, i32 %29, %struct.ctlr_info* %30, i8* %31, i32 %32, i32 0, i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load i32, i32* @EAGAIN, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %110

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %46 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %52 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %53 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %54 = load i32, i32* @NO_TIMEOUT, align 4
  %55 = call i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info* %51, %struct.CommandList* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %110

59:                                               ; preds = %50
  %60 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %61 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %60, i32 0, i32 0
  %62 = load %struct.ErrorInfo*, %struct.ErrorInfo** %61, align 8
  store %struct.ErrorInfo* %62, %struct.ErrorInfo** %14, align 8
  %63 = load %struct.ErrorInfo*, %struct.ErrorInfo** %14, align 8
  %64 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load %struct.ErrorInfo*, %struct.ErrorInfo** %14, align 8
  %69 = getelementptr inbounds %struct.ErrorInfo, %struct.ErrorInfo* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CMD_DATA_UNDERRUN, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %75 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %76 = call i32 @hpsa_scsi_interpret_error(%struct.ctlr_info* %74, %struct.CommandList* %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %109

79:                                               ; preds = %67, %59
  %80 = load i8*, i8** %8, align 8
  %81 = bitcast i8* %80 to %struct.ReportLUNdata*
  store %struct.ReportLUNdata* %81, %struct.ReportLUNdata** %15, align 8
  %82 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %15, align 8
  %83 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %79
  %88 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %89 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %87
  %93 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %94 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %15, align 8
  %99 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @dev_err(i32* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %11, align 4
  br label %107

104:                                              ; preds = %87
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %104, %92
  br label %108

108:                                              ; preds = %107, %79
  br label %109

109:                                              ; preds = %108, %73
  br label %110

110:                                              ; preds = %109, %58, %37
  %111 = load %struct.ctlr_info*, %struct.ctlr_info** %6, align 8
  %112 = load %struct.CommandList*, %struct.CommandList** %12, align 8
  %113 = call i32 @cmd_free(%struct.ctlr_info* %111, %struct.CommandList* %112)
  %114 = load i32, i32* %11, align 4
  ret i32 %114
}

declare dso_local %struct.CommandList* @cmd_alloc(%struct.ctlr_info*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @fill_cmd(%struct.CommandList*, i32, %struct.ctlr_info*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @hpsa_scsi_do_simple_cmd_with_retry(%struct.ctlr_info*, %struct.CommandList*, i32, i32) #1

declare dso_local i32 @hpsa_scsi_interpret_error(%struct.ctlr_info*, %struct.CommandList*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @cmd_free(%struct.ctlr_info*, %struct.CommandList*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
