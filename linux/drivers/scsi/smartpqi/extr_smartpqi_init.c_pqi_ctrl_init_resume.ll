; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_init_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ctrl_init_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"error obtaining controller properties\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error obtaining controller capabilities\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error initializing PQI mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"transition to PQI mode failed\0A\00", align 1
@PQI_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error creating admin queues\0A\00", align 1
@IRQ_MODE_MSIX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"error enabling events\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"error obtaining product detail\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"error enabling multi-lun rescan\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"error updating host wellness\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_ctrl_init_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_ctrl_init_resume(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %5 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %6 = call i32 @pqi_force_sis_mode(%struct.pqi_ctrl_info* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %161

11:                                               ; preds = %1
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = call i32 @sis_wait_for_ctrl_ready_resume(%struct.pqi_ctrl_info* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %161

18:                                               ; preds = %11
  %19 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %20 = call i32 @sis_get_ctrl_properties(%struct.pqi_ctrl_info* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %25 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %161

30:                                               ; preds = %18
  %31 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %32 = call i32 @sis_get_pqi_capabilities(%struct.pqi_ctrl_info* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %37 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %161

42:                                               ; preds = %30
  %43 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %44 = call i32 @sis_init_base_struct_addr(%struct.pqi_ctrl_info* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %49 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %161

54:                                               ; preds = %42
  %55 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %56 = call i32 @pqi_wait_for_pqi_mode_ready(%struct.pqi_ctrl_info* %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %61 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %161

66:                                               ; preds = %54
  %67 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %68 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %70 = load i32, i32* @PQI_MODE, align 4
  %71 = call i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info* %69, i32 %70)
  %72 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %73 = call i32 @pqi_reinit_queues(%struct.pqi_ctrl_info* %72)
  %74 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %75 = call i32 @pqi_create_admin_queues(%struct.pqi_ctrl_info* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %80 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %161

85:                                               ; preds = %66
  %86 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %87 = call i32 @pqi_create_queues(%struct.pqi_ctrl_info* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %161

92:                                               ; preds = %85
  %93 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %94 = load i32, i32* @IRQ_MODE_MSIX, align 4
  %95 = call i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info* %93, i32 %94)
  %96 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %97 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %99 = call i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info* %98)
  %100 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %101 = call i32 @pqi_process_config_table(%struct.pqi_ctrl_info* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %92
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %161

106:                                              ; preds = %92
  %107 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %108 = call i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info* %107)
  %109 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %110 = call i32 @pqi_enable_events(%struct.pqi_ctrl_info* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %106
  %114 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %115 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %114, i32 0, i32 2
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* %4, align 4
  store i32 %119, i32* %2, align 4
  br label %161

120:                                              ; preds = %106
  %121 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %122 = call i32 @pqi_get_ctrl_product_details(%struct.pqi_ctrl_info* %121)
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %127 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %161

132:                                              ; preds = %120
  %133 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %134 = call i32 @pqi_set_diag_rescan(%struct.pqi_ctrl_info* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %139 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_err(i32* %141, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %143 = load i32, i32* %4, align 4
  store i32 %143, i32* %2, align 4
  br label %161

144:                                              ; preds = %132
  %145 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %146 = call i32 @pqi_write_driver_version_to_host_wellness(%struct.pqi_ctrl_info* %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %151 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %150, i32 0, i32 2
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = call i32 @dev_err(i32* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %161

156:                                              ; preds = %144
  %157 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %158 = call i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info* %157)
  %159 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %160 = call i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info* %159)
  store i32 0, i32* %2, align 4
  br label %161

161:                                              ; preds = %156, %149, %137, %125, %113, %104, %90, %78, %59, %47, %35, %23, %16, %9
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @pqi_force_sis_mode(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_wait_for_ctrl_ready_resume(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_get_ctrl_properties(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sis_get_pqi_capabilities(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @sis_init_base_struct_addr(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_wait_for_pqi_mode_ready(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_save_ctrl_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_reinit_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_create_admin_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_create_queues(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_change_irq_mode(%struct.pqi_ctrl_info*, i32) #1

declare dso_local i32 @pqi_ctrl_unblock_requests(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_process_config_table(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_start_heartbeat_timer(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_enable_events(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_get_ctrl_product_details(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_set_diag_rescan(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_write_driver_version_to_host_wellness(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_schedule_update_time_worker(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @pqi_scan_scsi_devices(%struct.pqi_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
