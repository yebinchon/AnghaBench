; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_start_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_start_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32 }
%struct.megasas_evt_log_info = type { i32 }
%union.megasas_evt_class_locale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MR_EVT_LOCALE_ALL = common dso_local global i32 0, align 4
@MR_EVT_CLASS_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_start_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_start_aen(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.megasas_evt_log_info, align 4
  %5 = alloca %union.megasas_evt_class_locale, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %6 = call i32 @memset(%struct.megasas_evt_log_info* %4, i32 0, i32 4)
  %7 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %8 = call i64 @megasas_get_seq_num(%struct.megasas_instance* %7, %struct.megasas_evt_log_info* %4)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = bitcast %union.megasas_evt_class_locale* %5 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @MR_EVT_LOCALE_ALL, align 4
  %15 = bitcast %union.megasas_evt_class_locale* %5 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @MR_EVT_CLASS_DEBUG, align 4
  %18 = bitcast %union.megasas_evt_class_locale* %5 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %21 = getelementptr inbounds %struct.megasas_evt_log_info, %struct.megasas_evt_log_info* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le32_to_cpu(i32 %22)
  %24 = add nsw i64 %23, 1
  %25 = bitcast %union.megasas_evt_class_locale* %5 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @megasas_register_aen(%struct.megasas_instance* %20, i64 %24, i32 %26)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %11, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @memset(%struct.megasas_evt_log_info*, i32, i32) #1

declare dso_local i64 @megasas_get_seq_num(%struct.megasas_instance*, %struct.megasas_evt_log_info*) #1

declare dso_local i32 @megasas_register_aen(%struct.megasas_instance*, i64, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
