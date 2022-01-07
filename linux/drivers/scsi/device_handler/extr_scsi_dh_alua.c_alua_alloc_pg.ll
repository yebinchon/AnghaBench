; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_alloc_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_alloc_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alua_port_group = type { i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s: No device descriptors found\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@SCSI_ACCESS_STATE_OPTIMAL = common dso_local global i32 0, align 4
@TPGS_SUPPORT_ALL = common dso_local global i32 0, align 4
@optimize_stpg = common dso_local global i64 0, align 8
@ALUA_OPTIMIZE_STPG = common dso_local global i32 0, align 4
@alua_rtpg_work = common dso_local global i32 0, align 4
@port_group_lock = common dso_local global i32 0, align 4
@port_group_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alua_port_group* (%struct.scsi_device*, i32, i32)* @alua_alloc_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alua_port_group* @alua_alloc_pg(%struct.scsi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.alua_port_group*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.alua_port_group*, align 8
  %9 = alloca %struct.alua_port_group*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.alua_port_group* @kzalloc(i32 64, i32 %10)
  store %struct.alua_port_group* %11, %struct.alua_port_group** %8, align 8
  %12 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %13 = icmp ne %struct.alua_port_group* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.alua_port_group* @ERR_PTR(i32 %16)
  store %struct.alua_port_group* %17, %struct.alua_port_group** %4, align 8
  br label %104

18:                                               ; preds = %3
  %19 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %20 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %21 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @scsi_vpd_lun_id(%struct.scsi_device* %19, i8* %22, i32 8)
  %24 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %25 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %27 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %18
  %31 = load i32, i32* @KERN_INFO, align 4
  %32 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %33 = load i32, i32* @ALUA_DH_NAME, align 4
  %34 = call i32 @sdev_printk(i32 %31, %struct.scsi_device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %36 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  %39 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %40 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %18
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %44 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %47 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @SCSI_ACCESS_STATE_OPTIMAL, align 4
  %49 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %50 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @TPGS_SUPPORT_ALL, align 4
  %52 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %53 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %52, i32 0, i32 11
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* @optimize_stpg, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %41
  %57 = load i32, i32* @ALUA_OPTIMIZE_STPG, align 4
  %58 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %59 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %56, %41
  %63 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %64 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %63, i32 0, i32 9
  %65 = call i32 @kref_init(i32* %64)
  %66 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %67 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %66, i32 0, i32 8
  %68 = load i32, i32* @alua_rtpg_work, align 4
  %69 = call i32 @INIT_DELAYED_WORK(i32* %67, i32 %68)
  %70 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %71 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %70, i32 0, i32 7
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  %73 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %74 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %73, i32 0, i32 4
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %77 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %76, i32 0, i32 6
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %80 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %79, i32 0, i32 5
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = call i32 @spin_lock(i32* @port_group_lock)
  %83 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %84 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %87 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.alua_port_group* @alua_find_get_pg(i8* %85, i64 %88, i32 %89)
  store %struct.alua_port_group* %90, %struct.alua_port_group** %9, align 8
  %91 = load %struct.alua_port_group*, %struct.alua_port_group** %9, align 8
  %92 = icmp ne %struct.alua_port_group* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %62
  %94 = call i32 @spin_unlock(i32* @port_group_lock)
  %95 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %96 = call i32 @kfree(%struct.alua_port_group* %95)
  %97 = load %struct.alua_port_group*, %struct.alua_port_group** %9, align 8
  store %struct.alua_port_group* %97, %struct.alua_port_group** %4, align 8
  br label %104

98:                                               ; preds = %62
  %99 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  %100 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %99, i32 0, i32 4
  %101 = call i32 @list_add(i32* %100, i32* @port_group_list)
  %102 = call i32 @spin_unlock(i32* @port_group_lock)
  %103 = load %struct.alua_port_group*, %struct.alua_port_group** %8, align 8
  store %struct.alua_port_group* %103, %struct.alua_port_group** %4, align 8
  br label %104

104:                                              ; preds = %98, %93, %14
  %105 = load %struct.alua_port_group*, %struct.alua_port_group** %4, align 8
  ret %struct.alua_port_group* %105
}

declare dso_local %struct.alua_port_group* @kzalloc(i32, i32) #1

declare dso_local %struct.alua_port_group* @ERR_PTR(i32) #1

declare dso_local i64 @scsi_vpd_lun_id(%struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.alua_port_group* @alua_find_get_pg(i8*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.alua_port_group*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
