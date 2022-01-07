; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.megasas_instance = type { i32, i64, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64 }

@DCMD_FAILED = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@MEGASAS_MAX_DEV_PER_CHANNEL = common dso_local global i32 0, align 4
@MR_PD_STATE_SYSTEM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@DCMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @megasas_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i32, i32* @DCMD_FAILED, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.megasas_instance* @megasas_lookup_instance(i32 %13)
  store %struct.megasas_instance* %14, %struct.megasas_instance** %5, align 8
  %15 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %16 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %1
  %20 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %21 = call i32 @MEGASAS_IS_LOGICAL(%struct.scsi_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %19
  %24 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_DISK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MEGASAS_MAX_DEV_PER_CHANNEL, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  store i64 %39, i64* %4, align 8
  %40 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %41 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MR_PD_STATE_SYSTEM, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %99

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %23, %19
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %56 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %59 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %64 = call i32 @MEGASAS_IS_LOGICAL(%struct.scsi_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %68 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %69 = call i32 @megasas_get_pd_info(%struct.megasas_instance* %67, %struct.scsi_device* %68)
  br label %70

70:                                               ; preds = %66, %62, %54
  %71 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %72 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %77 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %82 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %83 = call i32 @megasas_get_target_prop(%struct.megasas_instance* %81, %struct.scsi_device* %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %75, %70
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DCMD_SUCCESS, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %7, align 4
  %90 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @megasas_set_static_target_properties(%struct.scsi_device* %90, i32 %91)
  %93 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @megasas_set_dynamic_target_properties(%struct.scsi_device* %93, i32 %94)
  %96 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %97 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %96, i32 0, i32 0
  %98 = call i32 @mutex_unlock(i32* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %84, %49
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.megasas_instance* @megasas_lookup_instance(i32) #1

declare dso_local i32 @MEGASAS_IS_LOGICAL(%struct.scsi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @megasas_get_pd_info(%struct.megasas_instance*, %struct.scsi_device*) #1

declare dso_local i32 @megasas_get_target_prop(%struct.megasas_instance*, %struct.scsi_device*) #1

declare dso_local i32 @megasas_set_static_target_properties(%struct.scsi_device*, i32) #1

declare dso_local i32 @megasas_set_dynamic_target_properties(%struct.scsi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
