; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queue_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_queue_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.domain_device = type { %struct.TYPE_8__*, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.sas_ha_struct* }
%struct.sas_ha_struct = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@SAS_DEV_EH_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s reset of %s failed\0A\00", align 1
@SAS_DEV_LU_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"LUN\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Bus\00", align 1
@FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.domain_device*, i32, i32, i32)* @sas_queue_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_queue_reset(%struct.domain_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sas_ha_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.domain_device* %0, %struct.domain_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %14 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %16, align 8
  store %struct.sas_ha_struct* %17, %struct.sas_ha_struct** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 100, i32* %12, align 4
  %18 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %19 = call i64 @dev_is_sata(%struct.domain_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %23 = call i32 @sas_ata_schedule_reset(%struct.domain_device* %22)
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %28 = call i32 @sas_ata_wait_eh(%struct.domain_device* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @SUCCESS, align 4
  store i32 %30, i32* %5, align 4
  br label %113

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %99, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %12, align 4
  %38 = icmp ne i32 %36, 0
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  br i1 %40, label %41, label %100

41:                                               ; preds = %39
  %42 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %43 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load i32, i32* @SAS_DEV_EH_PENDING, align 4
  %46 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %47 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %46, i32 0, i32 2
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %53 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %52, i32 0, i32 2
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %50
  store i32 1, i32* %11, align 4
  %57 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %58 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %62 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %65 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %64, i32 0, i32 2
  %66 = call i32 @list_add_tail(i32* %63, i32* %65)
  %67 = load i32, i32* @SAS_DEV_EH_PENDING, align 4
  %68 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %69 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %68, i32 0, i32 2
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %73 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %72, i32 0, i32 2
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %77 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = call i32 @int_to_scsilun(i32 %75, i32* %78)
  %80 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %81 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @scsi_schedule_eh(i32 %83)
  br label %85

85:                                               ; preds = %56, %50, %41
  %86 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %10, align 8
  %87 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %93 = call i32 @sas_wait_eh(%struct.domain_device* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @SUCCESS, align 4
  store i32 %98, i32* %5, align 4
  br label %113

99:                                               ; preds = %94
  br label %32

100:                                              ; preds = %39
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SAS_DEV_LU_RESET, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %106 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %107 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = call i32 @dev_name(i32* %109)
  %111 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %105, i32 %110)
  %112 = load i32, i32* @FAILED, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %100, %97, %29
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @dev_is_sata(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_schedule_reset(%struct.domain_device*) #1

declare dso_local i32 @sas_ata_wait_eh(%struct.domain_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @scsi_schedule_eh(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @sas_wait_eh(%struct.domain_device*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
