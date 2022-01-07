; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm8001_set_phy_profile_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm8001_set_phy_profile_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.set_phy_profile_req = type { i32, i8**, i8* }

@.str = private unnamed_addr constant [12 x i8] c"Invalid tag\00", align 1
@OPC_INB_SET_PHY_PROFILE = common dso_local global i32 0, align 4
@SAS_PHY_ANALOG_SETTINGS_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PHY %d settings applied\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pm8001_set_phy_profile_single(%struct.pm8001_hba_info* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.pm8001_hba_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.set_phy_profile_req, align 8
  %14 = alloca %struct.inbound_queue_table*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = call i32 @memset(%struct.set_phy_profile_req* %13, i32 0, i32 24)
  %16 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %17 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %16, i32* %9)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %22 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %26 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %25, i32 0, i32 0
  %27 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %26, align 8
  %28 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %27, i64 0
  store %struct.inbound_queue_table* %28, %struct.inbound_queue_table** %14, align 8
  %29 = load i32, i32* @OPC_INB_SET_PHY_PROFILE, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %13, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @SAS_PHY_ANALOG_SETTINGS_PAGE, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 255
  %38 = or i32 %35, %37
  %39 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %13, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %56, %24
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le32(i32 %49)
  %51 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %13, i32 0, i32 1
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %50, i8** %55, align 8
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %61 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %14, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %60, %struct.inbound_queue_table* %61, i32 %62, %struct.set_phy_profile_req* %13, i32 0)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %71, i32 %73)
  ret void
}

declare dso_local i32 @memset(%struct.set_phy_profile_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.set_phy_profile_req*, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
