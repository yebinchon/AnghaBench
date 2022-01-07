; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dev_gone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_dev_gone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.hisi_sas_device* }
%struct.hisi_sas_device = type { i32*, i32, i32 }
%struct.hisi_hba = type { i32, %struct.TYPE_2__*, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 (%struct.hisi_sas_device*)*, i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dev[%d:%x] is gone\0A\00", align 1
@HISI_SAS_RESET_BIT = common dso_local global i32 0, align 4
@HISI_SAS_INT_ABT_DEV = common dso_local global i32 0, align 4
@SAS_PHY_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*)* @hisi_sas_dev_gone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_sas_dev_gone(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca %struct.hisi_sas_device*, align 8
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  %6 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %7 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %6, i32 0, i32 0
  %8 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %7, align 8
  store %struct.hisi_sas_device* %8, %struct.hisi_sas_device** %3, align 8
  %9 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %10 = call %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device* %9)
  store %struct.hisi_hba* %10, %struct.hisi_hba** %4, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %16 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_info(%struct.device* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %23 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %22, i32 0, i32 0
  %24 = call i32 @down(i32* %23)
  %25 = load i32, i32* @HISI_SAS_RESET_BIT, align 4
  %26 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %26, i32 0, i32 2
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %1
  %31 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %32 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %33 = load i32, i32* @HISI_SAS_INT_ABT_DEV, align 4
  %34 = call i32 @hisi_sas_internal_task_abort(%struct.hisi_hba* %31, %struct.domain_device* %32, i32 %33, i32 0)
  %35 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %36 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %37 = call i32 @hisi_sas_dereg_device(%struct.hisi_hba* %35, %struct.domain_device* %36)
  %38 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)*, i32 (%struct.hisi_hba*, %struct.hisi_sas_device*)** %41, align 8
  %43 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %44 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %45 = call i32 %42(%struct.hisi_hba* %43, %struct.hisi_sas_device* %44)
  %46 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %47 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %46, i32 0, i32 0
  store %struct.hisi_sas_device* null, %struct.hisi_sas_device** %47, align 8
  br label %48

48:                                               ; preds = %30, %1
  %49 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %50 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32 (%struct.hisi_sas_device*)*, i32 (%struct.hisi_sas_device*)** %52, align 8
  %54 = icmp ne i32 (%struct.hisi_sas_device*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %57 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.hisi_sas_device*)*, i32 (%struct.hisi_sas_device*)** %59, align 8
  %61 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %62 = call i32 %60(%struct.hisi_sas_device* %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load i32, i32* @SAS_PHY_UNUSED, align 4
  %65 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %66 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.hisi_sas_device*, %struct.hisi_sas_device** %3, align 8
  %68 = getelementptr inbounds %struct.hisi_sas_device, %struct.hisi_sas_device* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  %69 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %70 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %69, i32 0, i32 0
  %71 = call i32 @up(i32* %70)
  ret void
}

declare dso_local %struct.hisi_hba* @dev_to_hisi_hba(%struct.domain_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hisi_sas_internal_task_abort(%struct.hisi_hba*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @hisi_sas_dereg_device(%struct.hisi_hba*, %struct.domain_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
