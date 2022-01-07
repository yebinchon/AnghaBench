; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_general.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_expander.c_sas_ex_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_resp = type { i32 }
%struct.domain_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RG_REQ_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RG_RESP_SIZE = common dso_local global i32 0, align 4
@SMP_REPORT_GENERAL = common dso_local global %struct.smp_resp zeroinitializer, align 4
@.str = private unnamed_addr constant [30 x i8] c"RG to ex %016llx failed:0x%x\0A\00", align 1
@SMP_RESP_FUNC_ACC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"RG:ex %016llx returned SMP result:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"RG: ex %llx self-configuring...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*)* @sas_ex_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_ex_general(%struct.domain_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.domain_device*, align 8
  %4 = alloca %struct.smp_resp*, align 8
  %5 = alloca %struct.smp_resp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %3, align 8
  %8 = load i32, i32* @RG_REQ_SIZE, align 4
  %9 = call %struct.smp_resp* @alloc_smp_req(i32 %8)
  store %struct.smp_resp* %9, %struct.smp_resp** %4, align 8
  %10 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %11 = icmp ne %struct.smp_resp* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %97

15:                                               ; preds = %1
  %16 = load i32, i32* @RG_RESP_SIZE, align 4
  %17 = call %struct.smp_resp* @alloc_smp_resp(i32 %16)
  store %struct.smp_resp* %17, %struct.smp_resp** %5, align 8
  %18 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %19 = icmp ne %struct.smp_resp* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %22 = call i32 @kfree(%struct.smp_resp* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %15
  %26 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %27 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %26, i64 1
  %28 = bitcast %struct.smp_resp* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.smp_resp* @SMP_REPORT_GENERAL to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %87, %25
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %32, label %90

32:                                               ; preds = %29
  %33 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %34 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %35 = load i32, i32* @RG_REQ_SIZE, align 4
  %36 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %37 = load i32, i32* @RG_RESP_SIZE, align 4
  %38 = call i32 @smp_execute_task(%struct.domain_device* %33, %struct.smp_resp* %34, i32 %35, %struct.smp_resp* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %43 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @SAS_ADDR(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pr_notice(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %91

48:                                               ; preds = %32
  %49 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %50 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SMP_RESP_FUNC_ACC, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %56 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SAS_ADDR(i32 %57)
  %59 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %60 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %64 = getelementptr inbounds %struct.smp_resp, %struct.smp_resp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %6, align 4
  br label %91

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %69 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %70 = call i32 @ex_assign_report_general(%struct.domain_device* %68, %struct.smp_resp* %69)
  %71 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %72 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load %struct.domain_device*, %struct.domain_device** %3, align 8
  %78 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @SAS_ADDR(i32 %79)
  %81 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @HZ, align 4
  %83 = mul nsw i32 5, %82
  %84 = call i32 @schedule_timeout_interruptible(i32 %83)
  br label %86

85:                                               ; preds = %67
  br label %90

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %29

90:                                               ; preds = %85, %29
  br label %91

91:                                               ; preds = %90, %54, %41
  %92 = load %struct.smp_resp*, %struct.smp_resp** %4, align 8
  %93 = call i32 @kfree(%struct.smp_resp* %92)
  %94 = load %struct.smp_resp*, %struct.smp_resp** %5, align 8
  %95 = call i32 @kfree(%struct.smp_resp* %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %91, %20, %12
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.smp_resp* @alloc_smp_req(i32) #1

declare dso_local %struct.smp_resp* @alloc_smp_resp(i32) #1

declare dso_local i32 @kfree(%struct.smp_resp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smp_execute_task(%struct.domain_device*, %struct.smp_resp*, i32, %struct.smp_resp*, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @SAS_ADDR(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ex_assign_report_general(%struct.domain_device*, %struct.smp_resp*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
