; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_attached_sas_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_get_attached_sas_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_phy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pm8001_hba_info* }
%struct.pm8001_hba_info = type { i64 }
%struct.sas_identify_frame = type { i32 }

@SATA_OOB_MODE = common dso_local global i64 0, align 8
@SAS_ADDR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_get_attached_sas_addr(%struct.pm8001_phy* %0, i32* %1) #0 {
  %3 = alloca %struct.pm8001_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sas_identify_frame*, align 8
  store %struct.pm8001_phy* %0, %struct.pm8001_phy** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %9 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 52
  br i1 %14, label %15, label %46

15:                                               ; preds = %2
  %16 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %17 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SATA_OOB_MODE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %24 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %27, align 8
  store %struct.pm8001_hba_info* %28, %struct.pm8001_hba_info** %5, align 8
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @be64_to_cpu(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %36 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @cpu_to_be64(i32 %43)
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  br label %59

46:                                               ; preds = %15, %2
  %47 = load %struct.pm8001_phy*, %struct.pm8001_phy** %3, align 8
  %48 = getelementptr inbounds %struct.pm8001_phy, %struct.pm8001_phy* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = bitcast i8* %51 to %struct.sas_identify_frame*
  store %struct.sas_identify_frame* %52, %struct.sas_identify_frame** %7, align 8
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.sas_identify_frame*, %struct.sas_identify_frame** %7, align 8
  %55 = getelementptr inbounds %struct.sas_identify_frame, %struct.sas_identify_frame* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SAS_ADDR_SIZE, align 4
  %58 = call i32 @memcpy(i32* %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %46, %22
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
