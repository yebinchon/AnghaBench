; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_esp_scsi.c_esp_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esp = type { i64, i32*, i32, i32, %struct.esp_cmd_entry*, i32, %struct.esp_target_data* }
%struct.esp_cmd_entry = type { i32 }
%struct.esp_target_data = type { i32 }
%struct.esp_lun_data = type { %struct.esp_cmd_entry* }
%struct.scsi_device = type { %struct.esp_lun_data* }

@FASHME = common dso_local global i64 0, align 8
@ESP_FDATA = common dso_local global i32 0, align 4
@ESP_CMD_FLUSH = common dso_local global i32 0, align 4
@ESP100 = common dso_local global i64 0, align 8
@ESP_INTRPT = common dso_local global i32 0, align 4
@ESP_INTR_SR = common dso_local global i32 0, align 4
@ESP_CMD_NULL = common dso_local global i32 0, align 4
@ESP_CMD_MOK = common dso_local global i32 0, align 4
@ESP_BUSID_RESELID = common dso_local global i32 0, align 4
@ESP_BUSID_CTR32BIT = common dso_local global i32 0, align 4
@ESP_BUSID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Reconnect, no lp tgt[%u] lun[%u]\0A\00", align 1
@ESP_EVENT_CHECK_PHASE = common dso_local global i32 0, align 4
@ESP_FLAG_QUICKIRQ_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esp*)* @esp_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_reconnect(%struct.esp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esp*, align 8
  %4 = alloca %struct.esp_cmd_entry*, align 8
  %5 = alloca %struct.esp_target_data*, align 8
  %6 = alloca %struct.esp_lun_data*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.esp* %0, %struct.esp** %3, align 8
  %12 = load %struct.esp*, %struct.esp** %3, align 8
  %13 = getelementptr inbounds %struct.esp, %struct.esp* %12, i32 0, i32 4
  %14 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %13, align 8
  %15 = call i32 @BUG_ON(%struct.esp_cmd_entry* %14)
  %16 = load %struct.esp*, %struct.esp** %3, align 8
  %17 = getelementptr inbounds %struct.esp, %struct.esp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @FASHME, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.esp*, %struct.esp** %3, align 8
  %23 = getelementptr inbounds %struct.esp, %struct.esp* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.esp*, %struct.esp** %3, align 8
  %28 = getelementptr inbounds %struct.esp, %struct.esp* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  store i32 %32, i32* %9, align 4
  br label %87

33:                                               ; preds = %1
  %34 = load i32, i32* @ESP_FDATA, align 4
  %35 = call i32 @esp_read8(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.esp*, %struct.esp** %3, align 8
  %38 = getelementptr inbounds %struct.esp, %struct.esp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %164

43:                                               ; preds = %33
  %44 = load %struct.esp*, %struct.esp** %3, align 8
  %45 = getelementptr inbounds %struct.esp, %struct.esp* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52, %43
  br label %164

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ffs(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @ESP_FDATA, align 4
  %64 = call i32 @esp_read8(i32 %63)
  %65 = and i32 %64, 7
  store i32 %65, i32* %9, align 4
  %66 = load %struct.esp*, %struct.esp** %3, align 8
  %67 = load i32, i32* @ESP_CMD_FLUSH, align 4
  %68 = call i32 @scsi_esp_cmd(%struct.esp* %66, i32 %67)
  %69 = load %struct.esp*, %struct.esp** %3, align 8
  %70 = getelementptr inbounds %struct.esp, %struct.esp* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ESP100, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %59
  %75 = load i32, i32* @ESP_INTRPT, align 4
  %76 = call i32 @esp_read8(i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ESP_INTR_SR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %164

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %59
  %84 = load %struct.esp*, %struct.esp** %3, align 8
  %85 = load i32, i32* @ESP_CMD_NULL, align 4
  %86 = call i32 @scsi_esp_cmd(%struct.esp* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %21
  %88 = load %struct.esp*, %struct.esp** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @esp_write_tgt_sync(%struct.esp* %88, i32 %89)
  %91 = load %struct.esp*, %struct.esp** %3, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @esp_write_tgt_config3(%struct.esp* %91, i32 %92)
  %94 = load %struct.esp*, %struct.esp** %3, align 8
  %95 = load i32, i32* @ESP_CMD_MOK, align 4
  %96 = call i32 @scsi_esp_cmd(%struct.esp* %94, i32 %95)
  %97 = load %struct.esp*, %struct.esp** %3, align 8
  %98 = getelementptr inbounds %struct.esp, %struct.esp* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @FASHME, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %87
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @ESP_BUSID_RESELID, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @ESP_BUSID_CTR32BIT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @ESP_BUSID, align 4
  %109 = call i32 @esp_write8(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %102, %87
  %111 = load %struct.esp*, %struct.esp** %3, align 8
  %112 = getelementptr inbounds %struct.esp, %struct.esp* %111, i32 0, i32 6
  %113 = load %struct.esp_target_data*, %struct.esp_target_data** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %113, i64 %115
  store %struct.esp_target_data* %116, %struct.esp_target_data** %5, align 8
  %117 = load %struct.esp_target_data*, %struct.esp_target_data** %5, align 8
  %118 = getelementptr inbounds %struct.esp_target_data, %struct.esp_target_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %9, align 4
  %121 = call %struct.scsi_device* @__scsi_device_lookup_by_target(i32 %119, i32 %120)
  store %struct.scsi_device* %121, %struct.scsi_device** %7, align 8
  %122 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %123 = icmp ne %struct.scsi_device* %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %110
  %125 = load i32, i32* @KERN_ERR, align 4
  %126 = load %struct.esp*, %struct.esp** %3, align 8
  %127 = getelementptr inbounds %struct.esp, %struct.esp* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @shost_printk(i32 %125, i32 %128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  br label %164

132:                                              ; preds = %110
  %133 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %134 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %133, i32 0, i32 0
  %135 = load %struct.esp_lun_data*, %struct.esp_lun_data** %134, align 8
  store %struct.esp_lun_data* %135, %struct.esp_lun_data** %6, align 8
  %136 = load %struct.esp_lun_data*, %struct.esp_lun_data** %6, align 8
  %137 = getelementptr inbounds %struct.esp_lun_data, %struct.esp_lun_data* %136, i32 0, i32 0
  %138 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %137, align 8
  store %struct.esp_cmd_entry* %138, %struct.esp_cmd_entry** %4, align 8
  %139 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %140 = icmp ne %struct.esp_cmd_entry* %139, null
  br i1 %140, label %149, label %141

141:                                              ; preds = %132
  %142 = load %struct.esp*, %struct.esp** %3, align 8
  %143 = load %struct.esp_lun_data*, %struct.esp_lun_data** %6, align 8
  %144 = call %struct.esp_cmd_entry* @esp_reconnect_with_tag(%struct.esp* %142, %struct.esp_lun_data* %143)
  store %struct.esp_cmd_entry* %144, %struct.esp_cmd_entry** %4, align 8
  %145 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %146 = icmp ne %struct.esp_cmd_entry* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  br label %164

148:                                              ; preds = %141
  br label %149

149:                                              ; preds = %148, %132
  %150 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %151 = load %struct.esp*, %struct.esp** %3, align 8
  %152 = getelementptr inbounds %struct.esp, %struct.esp* %151, i32 0, i32 4
  store %struct.esp_cmd_entry* %150, %struct.esp_cmd_entry** %152, align 8
  %153 = load %struct.esp*, %struct.esp** %3, align 8
  %154 = load i32, i32* @ESP_EVENT_CHECK_PHASE, align 4
  %155 = call i32 @esp_event(%struct.esp* %153, i32 %154)
  %156 = load %struct.esp*, %struct.esp** %3, align 8
  %157 = load %struct.esp_cmd_entry*, %struct.esp_cmd_entry** %4, align 8
  %158 = call i32 @esp_restore_pointers(%struct.esp* %156, %struct.esp_cmd_entry* %157)
  %159 = load i32, i32* @ESP_FLAG_QUICKIRQ_CHECK, align 4
  %160 = load %struct.esp*, %struct.esp** %3, align 8
  %161 = getelementptr inbounds %struct.esp, %struct.esp* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  store i32 1, i32* %2, align 4
  br label %167

164:                                              ; preds = %147, %124, %81, %58, %42
  %165 = load %struct.esp*, %struct.esp** %3, align 8
  %166 = call i32 @esp_schedule_reset(%struct.esp* %165)
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %164, %149
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @BUG_ON(%struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_read8(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @scsi_esp_cmd(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_sync(%struct.esp*, i32) #1

declare dso_local i32 @esp_write_tgt_config3(%struct.esp*, i32) #1

declare dso_local i32 @esp_write8(i32, i32) #1

declare dso_local %struct.scsi_device* @__scsi_device_lookup_by_target(i32, i32) #1

declare dso_local i32 @shost_printk(i32, i32, i8*, i32, i32) #1

declare dso_local %struct.esp_cmd_entry* @esp_reconnect_with_tag(%struct.esp*, %struct.esp_lun_data*) #1

declare dso_local i32 @esp_event(%struct.esp*, i32) #1

declare dso_local i32 @esp_restore_pointers(%struct.esp*, %struct.esp_cmd_entry*) #1

declare dso_local i32 @esp_schedule_reset(%struct.esp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
