; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_vendor_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_vendor_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.fc_bsg_request* }
%struct.fc_bsg_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_process_vendor_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_vendor_specific(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %5 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %6 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %5, i32 0, i32 0
  %7 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %6, align 8
  store %struct.fc_bsg_request* %7, %struct.fc_bsg_request** %4, align 8
  %8 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %9 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %84 [
    i32 139, label %15
    i32 150, label %18
    i32 149, label %21
    i32 151, label %24
    i32 140, label %27
    i32 146, label %30
    i32 138, label %33
    i32 130, label %36
    i32 132, label %39
    i32 137, label %42
    i32 129, label %45
    i32 128, label %48
    i32 136, label %51
    i32 148, label %54
    i32 145, label %57
    i32 135, label %60
    i32 134, label %63
    i32 143, label %66
    i32 133, label %69
    i32 144, label %72
    i32 142, label %75
    i32 141, label %75
    i32 147, label %78
    i32 131, label %81
  ]

15:                                               ; preds = %1
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = call i32 @qla2x00_process_loopback(%struct.bsg_job* %16)
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = call i32 @qla84xx_reset(%struct.bsg_job* %19)
  store i32 %20, i32* %2, align 4
  br label %87

21:                                               ; preds = %1
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = call i32 @qla84xx_updatefw(%struct.bsg_job* %22)
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %26 = call i32 @qla84xx_mgmt_cmd(%struct.bsg_job* %25)
  store i32 %26, i32* %2, align 4
  br label %87

27:                                               ; preds = %1
  %28 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %29 = call i32 @qla24xx_iidma(%struct.bsg_job* %28)
  store i32 %29, i32* %2, align 4
  br label %87

30:                                               ; preds = %1
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = call i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.bsg_job* %31)
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %1
  %34 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %35 = call i32 @qla2x00_read_optrom(%struct.bsg_job* %34)
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %1
  %37 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %38 = call i32 @qla2x00_update_optrom(%struct.bsg_job* %37)
  store i32 %38, i32* %2, align 4
  br label %87

39:                                               ; preds = %1
  %40 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %41 = call i32 @qla2x00_update_fru_versions(%struct.bsg_job* %40)
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %1
  %43 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %44 = call i32 @qla2x00_read_fru_status(%struct.bsg_job* %43)
  store i32 %44, i32* %2, align 4
  br label %87

45:                                               ; preds = %1
  %46 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %47 = call i32 @qla2x00_write_fru_status(%struct.bsg_job* %46)
  store i32 %47, i32* %2, align 4
  br label %87

48:                                               ; preds = %1
  %49 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %50 = call i32 @qla2x00_write_i2c(%struct.bsg_job* %49)
  store i32 %50, i32* %2, align 4
  br label %87

51:                                               ; preds = %1
  %52 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %53 = call i32 @qla2x00_read_i2c(%struct.bsg_job* %52)
  store i32 %53, i32* %2, align 4
  br label %87

54:                                               ; preds = %1
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = call i32 @qla24xx_process_bidir_cmd(%struct.bsg_job* %55)
  store i32 %56, i32* %2, align 4
  br label %87

57:                                               ; preds = %1
  %58 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %59 = call i32 @qlafx00_mgmt_cmd(%struct.bsg_job* %58)
  store i32 %59, i32* %2, align 4
  br label %87

60:                                               ; preds = %1
  %61 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %62 = call i32 @qla26xx_serdes_op(%struct.bsg_job* %61)
  store i32 %62, i32* %2, align 4
  br label %87

63:                                               ; preds = %1
  %64 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %65 = call i32 @qla8044_serdes_op(%struct.bsg_job* %64)
  store i32 %65, i32* %2, align 4
  br label %87

66:                                               ; preds = %1
  %67 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %68 = call i32 @qla27xx_get_flash_upd_cap(%struct.bsg_job* %67)
  store i32 %68, i32* %2, align 4
  br label %87

69:                                               ; preds = %1
  %70 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %71 = call i32 @qla27xx_set_flash_upd_cap(%struct.bsg_job* %70)
  store i32 %71, i32* %2, align 4
  br label %87

72:                                               ; preds = %1
  %73 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %74 = call i32 @qla27xx_get_bbcr_data(%struct.bsg_job* %73)
  store i32 %74, i32* %2, align 4
  br label %87

75:                                               ; preds = %1, %1
  %76 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %77 = call i32 @qla2x00_get_priv_stats(%struct.bsg_job* %76)
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %1
  %79 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %80 = call i32 @qla2x00_do_dport_diagnostics(%struct.bsg_job* %79)
  store i32 %80, i32* %2, align 4
  br label %87

81:                                               ; preds = %1
  %82 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %83 = call i32 @qla2x00_get_flash_image_status(%struct.bsg_job* %82)
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %1
  %85 = load i32, i32* @ENOSYS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @qla2x00_process_loopback(%struct.bsg_job*) #1

declare dso_local i32 @qla84xx_reset(%struct.bsg_job*) #1

declare dso_local i32 @qla84xx_updatefw(%struct.bsg_job*) #1

declare dso_local i32 @qla84xx_mgmt_cmd(%struct.bsg_job*) #1

declare dso_local i32 @qla24xx_iidma(%struct.bsg_job*) #1

declare dso_local i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_read_optrom(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_update_optrom(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_update_fru_versions(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_read_fru_status(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_write_fru_status(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_write_i2c(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_read_i2c(%struct.bsg_job*) #1

declare dso_local i32 @qla24xx_process_bidir_cmd(%struct.bsg_job*) #1

declare dso_local i32 @qlafx00_mgmt_cmd(%struct.bsg_job*) #1

declare dso_local i32 @qla26xx_serdes_op(%struct.bsg_job*) #1

declare dso_local i32 @qla8044_serdes_op(%struct.bsg_job*) #1

declare dso_local i32 @qla27xx_get_flash_upd_cap(%struct.bsg_job*) #1

declare dso_local i32 @qla27xx_set_flash_upd_cap(%struct.bsg_job*) #1

declare dso_local i32 @qla27xx_get_bbcr_data(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_get_priv_stats(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_do_dport_diagnostics(%struct.bsg_job*) #1

declare dso_local i32 @qla2x00_get_flash_image_status(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
