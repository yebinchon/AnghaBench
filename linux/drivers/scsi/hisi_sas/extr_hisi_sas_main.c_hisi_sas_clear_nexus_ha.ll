; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_clear_nexus_ha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_clear_nexus_ha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sas_ha_struct = type { %struct.hisi_hba* }
%struct.hisi_hba = type { %struct.hisi_sas_device*, i32, %struct.device* }
%struct.hisi_sas_device = type { i64, i32, %struct.domain_device* }
%struct.domain_device = type { i32 }
%struct.device = type { i32 }

@r = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@TMF_RESP_FUNC_FAILED = common dso_local global i32 0, align 4
@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i64 0, align 8
@TMF_RESP_FUNC_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"clear nexus ha: for device[%d] rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_ha_struct*)* @hisi_sas_clear_nexus_ha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_clear_nexus_ha(%struct.sas_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sas_ha_struct*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_device*, align 8
  %10 = alloca %struct.domain_device*, align 8
  store %struct.sas_ha_struct* %0, %struct.sas_ha_struct** %3, align 8
  %11 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %3, align 8
  %12 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %11, i32 0, i32 0
  %13 = load %struct.hisi_hba*, %struct.hisi_hba** %12, align 8
  store %struct.hisi_hba* %13, %struct.hisi_hba** %4, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %15 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %14, i32 0, i32 2
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = bitcast { i64, i32 }* %6 to i8*
  %18 = bitcast %struct.TYPE_3__* @r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HISI_SAS_DECLARE_RST_WORK_ON_STACK(i64 %20, i32 %22)
  %24 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %25 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @queue_work(i32 %26, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @r, i32 0, i32 2))
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @r, i32 0, i32 1), align 4
  %29 = call i32 @wait_for_completion(i32 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @r, i32 0, i32 0), align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @TMF_RESP_FUNC_FAILED, align 4
  store i32 %33, i32* %2, align 4
  br label %85

34:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %35
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %41 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %40, i32 0, i32 0
  %42 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %42, i64 %44
  store %struct.hisi_sas_device* %45, %struct.hisi_sas_device** %9, align 8
  %46 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %9, align 8
  %47 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %46, i32 0, i32 2
  %48 = load %struct.domain_device*, %struct.domain_device** %47, align 8
  store %struct.domain_device* %48, %struct.domain_device** %10, align 8
  %49 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %9, align 8
  %50 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SAS_PHY_UNUSED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %39
  %55 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %56 = icmp ne %struct.domain_device* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %59 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @dev_is_expander(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %54, %39
  br label %78

64:                                               ; preds = %57
  %65 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %66 = call i32 @hisi_sas_debug_I_T_nexus_reset(%struct.domain_device* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %9, align 8
  %73 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_info(%struct.device* %71, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %35

81:                                               ; preds = %35
  %82 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %83 = call i32 @hisi_sas_release_tasks(%struct.hisi_hba* %82)
  %84 = load i32, i32* @TMF_RESP_FUNC_COMPLETE, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %32
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @HISI_SAS_DECLARE_RST_WORK_ON_STACK(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_for_completion(i32) #1

declare dso_local i64 @dev_is_expander(i32) #1

declare dso_local i32 @hisi_sas_debug_I_T_nexus_reset(%struct.domain_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @hisi_sas_release_tasks(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
