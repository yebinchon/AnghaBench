; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_dev_gone_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_dev_gone_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pm8001_hba_info*, i32)* }
%struct.pm8001_hba_info = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"found dev[%d:%x] is gone.\0A\00", align 1
@PM8001_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Found dev has gone.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.domain_device*)* @pm8001_dev_gone_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm8001_dev_gone_notify(%struct.domain_device* %0) #0 {
  %2 = alloca %struct.domain_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_device*, align 8
  %6 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %8 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %7, i32 0, i32 0
  %9 = load %struct.pm8001_device*, %struct.pm8001_device** %8, align 8
  store %struct.pm8001_device* %9, %struct.pm8001_device** %5, align 8
  %10 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %11 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %10)
  store %struct.pm8001_hba_info* %11, %struct.pm8001_hba_info** %4, align 8
  %12 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %13 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %12, i32 0, i32 0
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %17 = icmp ne %struct.pm8001_device* %16, null
  br i1 %17, label %18, label %65

18:                                               ; preds = %1
  %19 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %20 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %23 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %24 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %27 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = call i32 @PM8001_DISC_DBG(%struct.pm8001_hba_info* %22, i32 %29)
  %31 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %32 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %18
  %36 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %37 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %36, i32 0, i32 0
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %41 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %42 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %43 = call i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info* %40, %struct.pm8001_device* %41, %struct.domain_device* %42, i32 1, i32 0)
  br label %44

44:                                               ; preds = %49, %35
  %45 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %46 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @msleep(i32 20)
  br label %44

51:                                               ; preds = %44
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 0
  %54 = load i64, i64* %3, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %51, %18
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @PM8001_CHIP_DISP, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.pm8001_hba_info*, i32)*, i32 (%struct.pm8001_hba_info*, i32)** %58, align 8
  %60 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 %59(%struct.pm8001_hba_info* %60, i32 %61)
  %63 = load %struct.pm8001_device*, %struct.pm8001_device** %5, align 8
  %64 = call i32 @pm8001_free_dev(%struct.pm8001_device* %63)
  br label %69

65:                                               ; preds = %1
  %66 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %67 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @PM8001_DISC_DBG(%struct.pm8001_hba_info* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load %struct.domain_device*, %struct.domain_device** %2, align 8
  %71 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %70, i32 0, i32 0
  store %struct.pm8001_device* null, %struct.pm8001_device** %71, align 8
  %72 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %73 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %72, i32 0, i32 0
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  ret void
}

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PM8001_DISC_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_exec_internal_task_abort(%struct.pm8001_hba_info*, %struct.pm8001_device*, %struct.domain_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pm8001_free_dev(%struct.pm8001_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
