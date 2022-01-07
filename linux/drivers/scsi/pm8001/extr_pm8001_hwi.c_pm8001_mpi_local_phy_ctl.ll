; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_local_phy_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_mpi_local_phy_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.local_phy_ctl_resp = type { i32, i32, i32 }

@ID_BITS = common dso_local global i64 0, align 8
@OP_BITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"%x phy execute %x phy op failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%x phy execute %x phy op success!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_mpi_local_phy_ctl(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.local_phy_ctl_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr i8, i8* %10, i64 4
  %12 = bitcast i8* %11 to %struct.local_phy_ctl_resp*
  store %struct.local_phy_ctl_resp* %12, %struct.local_phy_ctl_resp** %6, align 8
  %13 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %6, align 8
  %14 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @le32_to_cpu(i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %6, align 8
  %18 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32_to_cpu(i32 %19)
  %21 = load i64, i64* @ID_BITS, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %6, align 8
  %24 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = load i64, i64* @OP_BITS, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.local_phy_ctl_resp*, %struct.local_phy_ctl_resp** %6, align 8
  %30 = getelementptr inbounds %struct.local_phy_ctl_resp, %struct.local_phy_ctl_resp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @pm8001_printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  %40 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %36, i32 %39)
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @pm8001_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  %46 = call i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info* %42, i32 %45)
  %47 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %48 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %41, %35
  %54 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %55 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %64 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @complete(i32* %69)
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %72 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %62, %53
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %78, i64 %79)
  ret i32 0
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @PM8001_MSG_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i64, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
