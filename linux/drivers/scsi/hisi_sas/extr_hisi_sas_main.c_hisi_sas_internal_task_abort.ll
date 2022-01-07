; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_internal_task_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_internal_task_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.hisi_sas_dq*, %struct.hisi_sas_cq*, %struct.hisi_sas_slot*, %struct.device* }
%struct.hisi_sas_dq = type { i32 }
%struct.hisi_sas_cq = type { %struct.cpumask* }
%struct.cpumask = type { i32 }
%struct.hisi_sas_slot = type { i64 }
%struct.device = type { i32 }
%struct.domain_device = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unrecognised internal abort flag (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, %struct.domain_device*, i32, i32)* @hisi_sas_internal_task_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %0, %struct.domain_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_hba*, align 8
  %7 = alloca %struct.domain_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hisi_sas_slot*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.hisi_sas_dq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hisi_sas_cq*, align 8
  %16 = alloca %struct.cpumask*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %6, align 8
  store %struct.domain_device* %1, %struct.domain_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %18 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %17, i32 0, i32 4
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %11, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %88 [
    i32 129, label %21
    i32 128, label %41
  ]

21:                                               ; preds = %4
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 3
  %24 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %24, i64 %26
  store %struct.hisi_sas_slot* %27, %struct.hisi_sas_slot** %10, align 8
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %29 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %28, i32 0, i32 1
  %30 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %29, align 8
  %31 = load %struct.hisi_sas_slot*, %struct.hisi_sas_slot** %10, align 8
  %32 = getelementptr inbounds %struct.hisi_sas_slot, %struct.hisi_sas_slot* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %30, i64 %33
  store %struct.hisi_sas_dq* %34, %struct.hisi_sas_dq** %12, align 8
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %36 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %12, align 8
  %40 = call i32 @_hisi_sas_internal_task_abort(%struct.hisi_hba* %35, %struct.domain_device* %36, i32 %37, i32 %38, %struct.hisi_sas_dq* %39)
  store i32 %40, i32* %5, align 4
  br label %95

41:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %84, %41
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %45 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %42
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %50 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %49, i32 0, i32 2
  %51 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %51, i64 %53
  store %struct.hisi_sas_cq* %54, %struct.hisi_sas_cq** %15, align 8
  %55 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %15, align 8
  %56 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %55, i32 0, i32 0
  %57 = load %struct.cpumask*, %struct.cpumask** %56, align 8
  store %struct.cpumask* %57, %struct.cpumask** %16, align 8
  %58 = load %struct.cpumask*, %struct.cpumask** %16, align 8
  %59 = icmp ne %struct.cpumask* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @cpu_online_mask, align 4
  %62 = load %struct.cpumask*, %struct.cpumask** %16, align 8
  %63 = call i32 @cpumask_intersects(i32 %61, %struct.cpumask* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %84

66:                                               ; preds = %60, %48
  %67 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %68 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %67, i32 0, i32 1
  %69 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.hisi_sas_dq, %struct.hisi_sas_dq* %69, i64 %71
  store %struct.hisi_sas_dq* %72, %struct.hisi_sas_dq** %12, align 8
  %73 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %74 = load %struct.domain_device*, %struct.domain_device** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hisi_sas_dq*, %struct.hisi_sas_dq** %12, align 8
  %78 = call i32 @_hisi_sas_internal_task_abort(%struct.hisi_hba* %73, %struct.domain_device* %74, i32 %75, i32 %76, %struct.hisi_sas_dq* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %5, align 4
  br label %95

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %65
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %42

87:                                               ; preds = %42
  br label %94

88:                                               ; preds = %4
  %89 = load %struct.device*, %struct.device** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %87
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %88, %81, %21
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @_hisi_sas_internal_task_abort(%struct.hisi_hba*, %struct.domain_device*, i32, i32, %struct.hisi_sas_dq*) #1

declare dso_local i32 @cpumask_intersects(i32, %struct.cpumask*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
