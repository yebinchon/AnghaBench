; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_vpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/device_handler/extr_scsi_dh_alua.c_alua_check_vpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.alua_dh_data = type { i32, i32, i32 }
%struct.alua_port_group = type { i32, i32, i32, i32, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: No target port descriptors found\0A\00", align 1
@ALUA_DH_NAME = common dso_local global i32 0, align 4
@SCSI_DH_DEV_UNSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCSI_DH_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: device %s port group %x rel port %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%s: port group %x rel port %x\0A\00", align 1
@release_port_group = common dso_local global i32 0, align 4
@SCSI_DH_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.alua_dh_data*, i32)* @alua_check_vpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alua_check_vpd(%struct.scsi_device* %0, %struct.alua_dh_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.alua_dh_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.alua_port_group*, align 8
  %11 = alloca %struct.alua_port_group*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.alua_dh_data* %1, %struct.alua_dh_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store %struct.alua_port_group* null, %struct.alua_port_group** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %15 = call i32 @scsi_vpd_tpg_id(%struct.scsi_device* %14, i32* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %21 = load i32, i32* @ALUA_DH_NAME, align 4
  %22 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %19, %struct.scsi_device* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %23, i32* %4, align 4
  br label %140

24:                                               ; preds = %3
  %25 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.alua_port_group* @alua_alloc_pg(%struct.scsi_device* %25, i32 %26, i32 %27)
  store %struct.alua_port_group* %28, %struct.alua_port_group** %10, align 8
  %29 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %30 = call i64 @IS_ERR(%struct.alua_port_group* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.alua_port_group* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @SCSI_DH_NOMEM, align 4
  store i32 %39, i32* %4, align 4
  br label %140

40:                                               ; preds = %32
  %41 = load i32, i32* @SCSI_DH_DEV_UNSUPP, align 4
  store i32 %41, i32* %4, align 4
  br label %140

42:                                               ; preds = %24
  %43 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %44 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* @KERN_INFO, align 4
  %49 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %50 = load i32, i32* @ALUA_DH_NAME, align 4
  %51 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %52 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %48, %struct.scsi_device* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i32 %54, i32 %55)
  br label %64

57:                                               ; preds = %42
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %60 = load i32, i32* @ALUA_DH_NAME, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, %struct.scsi_device*, i8*, i32, ...) @sdev_printk(i32 %58, %struct.scsi_device* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %57, %47
  %65 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %66 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %69 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %72 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %71, i32 0, i32 0
  %73 = call i32 @lockdep_is_held(i32* %72)
  %74 = call %struct.alua_port_group* @rcu_dereference_protected(i32 %70, i32 %73)
  store %struct.alua_port_group* %74, %struct.alua_port_group** %11, align 8
  %75 = load %struct.alua_port_group*, %struct.alua_port_group** %11, align 8
  %76 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %77 = icmp ne %struct.alua_port_group* %75, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %64
  %79 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %80 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.alua_port_group*, %struct.alua_port_group** %11, align 8
  %85 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %84, i32 0, i32 1
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %89 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %88, i32 0, i32 2
  %90 = call i32 @list_del_rcu(i32* %89)
  %91 = load %struct.alua_port_group*, %struct.alua_port_group** %11, align 8
  %92 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %91, i32 0, i32 1
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  br label %95

95:                                               ; preds = %83, %78
  %96 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %97 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %100 = call i32 @rcu_assign_pointer(i32 %98, %struct.alua_port_group* %99)
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %95, %64
  %102 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %103 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %102, i32 0, i32 1
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @spin_lock_irqsave(i32* %103, i64 %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %110 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %109, i32 0, i32 2
  %111 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %112 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %111, i32 0, i32 2
  %113 = call i32 @list_add_rcu(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.alua_port_group*, %struct.alua_port_group** %10, align 8
  %116 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %115, i32 0, i32 1
  %117 = load i64, i64* %13, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %120 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %123 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %122, i32 0, i32 0
  %124 = call i32 @lockdep_is_held(i32* %123)
  %125 = call %struct.alua_port_group* @rcu_dereference_protected(i32 %121, i32 %124)
  %126 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %127 = call i32 @alua_rtpg_queue(%struct.alua_port_group* %125, %struct.scsi_device* %126, i32* null, i32 1)
  %128 = load %struct.alua_dh_data*, %struct.alua_dh_data** %6, align 8
  %129 = getelementptr inbounds %struct.alua_dh_data, %struct.alua_dh_data* %128, i32 0, i32 0
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.alua_port_group*, %struct.alua_port_group** %11, align 8
  %132 = icmp ne %struct.alua_port_group* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %114
  %134 = load %struct.alua_port_group*, %struct.alua_port_group** %11, align 8
  %135 = getelementptr inbounds %struct.alua_port_group, %struct.alua_port_group* %134, i32 0, i32 0
  %136 = load i32, i32* @release_port_group, align 4
  %137 = call i32 @kref_put(i32* %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %114
  %139 = load i32, i32* @SCSI_DH_OK, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %40, %38, %18
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @scsi_vpd_tpg_id(%struct.scsi_device*, i32*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32, ...) #1

declare dso_local %struct.alua_port_group* @alua_alloc_pg(%struct.scsi_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.alua_port_group*) #1

declare dso_local i32 @PTR_ERR(%struct.alua_port_group*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.alua_port_group* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.alua_port_group*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @alua_rtpg_queue(%struct.alua_port_group*, %struct.scsi_device*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
