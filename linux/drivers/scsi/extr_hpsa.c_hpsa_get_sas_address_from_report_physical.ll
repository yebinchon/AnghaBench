; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_sas_address_from_report_physical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_get_sas_address_from_report_physical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ReportExtendedLUNdata = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"report physical LUNs failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*)* @hpsa_get_sas_address_from_report_physical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_get_sas_address_from_report_physical(%struct.ctlr_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctlr_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ReportExtendedLUNdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ReportExtendedLUNdata* @kzalloc(i32 16, i32 %10)
  store %struct.ReportExtendedLUNdata* %11, %struct.ReportExtendedLUNdata** %6, align 8
  %12 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %13 = icmp ne %struct.ReportExtendedLUNdata* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

15:                                               ; preds = %2
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %17 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %18 = call i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info* %16, %struct.ReportExtendedLUNdata* %17, i32 16)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ctlr_info*, %struct.ctlr_info** %4, align 8
  %22 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %27 = call i32 @kfree(%struct.ReportExtendedLUNdata* %26)
  store i32 0, i32* %3, align 4
  br label %70

28:                                               ; preds = %15
  %29 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %30 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @get_unaligned_be32(i32 %31)
  %33 = sdiv i32 %32, 24
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %63, %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %40 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @memcmp(i32* %47, i8* %48, i32 8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %38
  %52 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %53 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = call i32 @get_unaligned_be64(i32* %60)
  store i32 %61, i32* %8, align 4
  br label %66

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %34

66:                                               ; preds = %51, %34
  %67 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %6, align 8
  %68 = call i32 @kfree(%struct.ReportExtendedLUNdata* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %20, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.ReportExtendedLUNdata* @kzalloc(i32, i32) #1

declare dso_local i64 @hpsa_scsi_do_report_phys_luns(%struct.ctlr_info*, %struct.ReportExtendedLUNdata*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.ReportExtendedLUNdata*) #1

declare dso_local i32 @get_unaligned_be32(i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @get_unaligned_be64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
