; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_set_phy_profile_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_set_phy_profile_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.set_phy_profile_req = type { i32, i8**, i8* }

@OPC_INB_SET_PHY_PROFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Invalid tag\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c" phy profile command for phy %x ,length is %d\0A\00", align 1
@PHY_DWORD_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpi_set_phy_profile_req(%struct.pm8001_hba_info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.pm8001_hba_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.set_phy_profile_req, align 8
  %16 = alloca %struct.inbound_queue_table*, align 8
  %17 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32, i32* @OPC_INB_SET_PHY_PROFILE, align 4
  store i32 %18, i32* %17, align 4
  %19 = call i32 @memset(%struct.set_phy_profile_req* %15, i32 0, i32 24)
  %20 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %21 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %20, i32* %11)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %26 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %5
  %29 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %30 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %29, i32 0, i32 0
  %31 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %30, align 8
  %32 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %31, i64 0
  store %struct.inbound_queue_table* %32, %struct.inbound_queue_table** %16, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %15, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 15
  %38 = shl i32 %37, 8
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 255
  %41 = or i32 %38, %40
  %42 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %15, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %44 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %15, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = call i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info* %43, i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %71, %28
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PHY_DWORD_LENGTH, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds %struct.set_phy_profile_req, %struct.set_phy_profile_req* %15, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %57
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %50

74:                                               ; preds = %50
  %75 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %76 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %75, %struct.inbound_queue_table* %76, i32 %77, %struct.set_phy_profile_req* %15, i32 0)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %74
  ret void
}

declare dso_local i32 @memset(%struct.set_phy_profile_req*, i32, i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_INIT_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, %struct.set_phy_profile_req*, i32) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
