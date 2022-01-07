; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_gather_lun_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_gather_lun_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ReportExtendedLUNdata = type { i64 }
%struct.ReportLUNdata = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"report physical LUNs failed.\0A\00", align 1
@HPSA_MAX_PHYS_LUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"maximum physical LUNs (%d) exceeded. %d LUNs ignored.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"report logical LUNs failed.\0A\00", align 1
@HPSA_MAX_LUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"maximum logical LUNs (%d) exceeded.  %d LUNs ignored.\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"maximum logical + physical LUNs (%d) exceeded. %d LUNs ignored.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, %struct.ReportExtendedLUNdata*, i32*, %struct.ReportLUNdata*, i32*)* @hpsa_gather_lun_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_gather_lun_info(%struct.ctlr_info* %0, %struct.ReportExtendedLUNdata* %1, i32* %2, %struct.ReportLUNdata* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctlr_info*, align 8
  %8 = alloca %struct.ReportExtendedLUNdata*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ReportLUNdata*, align 8
  %11 = alloca i32*, align 8
  store %struct.ctlr_info* %0, %struct.ctlr_info** %7, align 8
  store %struct.ReportExtendedLUNdata* %1, %struct.ReportExtendedLUNdata** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.ReportLUNdata* %3, %struct.ReportLUNdata** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %13 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %8, align 8
  %14 = call i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info* %12, %struct.ReportExtendedLUNdata* %13, i32 8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %18 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %113

22:                                               ; preds = %5
  %23 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %8, align 8
  %24 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = sdiv i32 %28, 24
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %22
  %36 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %37 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %22
  %49 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %50 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %10, align 8
  %51 = call i64 @hpsa_scsi_do_report_log_luns(%struct.ctlr_info* %49, %struct.ReportLUNdata* %50, i32 8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %55 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %113

59:                                               ; preds = %48
  %60 = load %struct.ReportLUNdata*, %struct.ReportLUNdata** %10, align 8
  %61 = getelementptr inbounds %struct.ReportLUNdata, %struct.ReportLUNdata* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @be32_to_cpu(i32 %64)
  %66 = sdiv i32 %65, 8
  %67 = load i32*, i32** %11, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HPSA_MAX_LUN, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %59
  %73 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %74 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* @HPSA_MAX_LUN, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HPSA_MAX_LUN, align 4
  %81 = sub nsw i32 %79, %80
  %82 = call i32 @dev_warn(i32* %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %81)
  %83 = load i32, i32* @HPSA_MAX_LUN, align 4
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %72, %59
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %87, %89
  %91 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %85
  %94 = load %struct.ctlr_info*, %struct.ctlr_info** %7, align 8
  %95 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %100, %102
  %104 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %105)
  %107 = load i32, i32* @HPSA_MAX_PHYS_LUN, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %107, %109
  %111 = load i32*, i32** %11, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %93, %85
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %112, %53, %16
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info*, %struct.ReportExtendedLUNdata*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i64 @hpsa_scsi_do_report_log_luns(%struct.ctlr_info*, %struct.ReportLUNdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
