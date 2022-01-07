; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_modify_vp_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_target.c_qlt_modify_vp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }
%struct.vp_config_entry_24xx = type { i32 }

@BIT_5 = common dso_local global i32 0, align 4
@BIT_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlt_modify_vp_config(%struct.scsi_qla_host* %0, %struct.vp_config_entry_24xx* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca %struct.vp_config_entry_24xx*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store %struct.vp_config_entry_24xx* %1, %struct.vp_config_entry_24xx** %4, align 8
  %5 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %6 = call i64 @qla_tgt_mode_enabled(%struct.scsi_qla_host* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %10 = call i64 @qla_dual_mode_enabled(%struct.scsi_qla_host* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8, %2
  %13 = load i32, i32* @BIT_5, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.vp_config_entry_24xx*, %struct.vp_config_entry_24xx** %4, align 8
  %16 = getelementptr inbounds %struct.vp_config_entry_24xx, %struct.vp_config_entry_24xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %12, %8
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %21 = call i64 @qla_tgt_mode_enabled(%struct.scsi_qla_host* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, i32* @BIT_4, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.vp_config_entry_24xx*, %struct.vp_config_entry_24xx** %4, align 8
  %27 = getelementptr inbounds %struct.vp_config_entry_24xx, %struct.vp_config_entry_24xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %19
  ret void
}

declare dso_local i64 @qla_tgt_mode_enabled(%struct.scsi_qla_host*) #1

declare dso_local i64 @qla_dual_mode_enabled(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
