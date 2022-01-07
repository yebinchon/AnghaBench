; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_device_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_get_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MEGASAS_MAX_PD = common dso_local global i32 0, align 4
@MEGASAS_MAX_LD_IDS = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to get PD list\0A\00", align 1
@MR_LD_QUERY_TYPE_EXPOSED_TO_HOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get LD list\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_get_device_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_get_device_list(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %4 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %5 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MEGASAS_MAX_PD, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i32 @memset(i32 %6, i32 0, i32 %10)
  %12 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %13 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MEGASAS_MAX_LD_IDS, align 4
  %16 = call i32 @memset(i32 %14, i32 255, i32 %15)
  %17 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %18 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %23 = call i64 @megasas_host_device_list_query(%struct.megasas_instance* %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @FAILED, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %21
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %30 = call i64 @megasas_get_pd_list(%struct.megasas_instance* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %34 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @FAILED, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %28
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %41 = load i32, i32* @MR_LD_QUERY_TYPE_EXPOSED_TO_HOST, align 4
  %42 = call i64 @megasas_ld_list_query(%struct.megasas_instance* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %46 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @FAILED, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %44, %32, %25
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @megasas_host_device_list_query(%struct.megasas_instance*, i32) #1

declare dso_local i64 @megasas_get_pd_list(%struct.megasas_instance*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @megasas_ld_list_query(%struct.megasas_instance*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
