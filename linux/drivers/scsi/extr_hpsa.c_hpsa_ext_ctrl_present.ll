; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ext_ctrl_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_ext_ctrl_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ReportExtendedLUNdata = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@BMIC_DEVICE_TYPE_CONTROLLER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [81 x i8] c"External controller present, activate discovery polling and disable rld caching\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.ReportExtendedLUNdata*)* @hpsa_ext_ctrl_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_ext_ctrl_present(%struct.ctlr_info* %0, %struct.ReportExtendedLUNdata* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.ReportExtendedLUNdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.ReportExtendedLUNdata* %1, %struct.ReportExtendedLUNdata** %4, align 8
  %7 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %8 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %4, align 8
  %14 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @get_unaligned_be32(i32 %15)
  %17 = sdiv i32 %16, 24
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %56, %12
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  %24 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %4, align 8
  %25 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BMIC_DEVICE_TYPE_CONTROLLER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %23
  %35 = load %struct.ReportExtendedLUNdata*, %struct.ReportExtendedLUNdata** %4, align 8
  %36 = getelementptr inbounds %struct.ReportExtendedLUNdata, %struct.ReportExtendedLUNdata* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @is_hba_lunid(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %34
  %46 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %47 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @dev_info(i32* %49, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %52 = call i32 @hpsa_disable_rld_caching(%struct.ctlr_info* %51)
  %53 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %54 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %59

55:                                               ; preds = %34, %23
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %19

59:                                               ; preds = %11, %45, %19
  ret void
}

declare dso_local i32 @get_unaligned_be32(i32) #1

declare dso_local i32 @is_hba_lunid(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @hpsa_disable_rld_caching(%struct.ctlr_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
