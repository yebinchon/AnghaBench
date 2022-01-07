; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_port_sta_fn_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_port_sta_fn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"2887 Reset Needed: Attempting Port Recovery...\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"6309 Failed to restart board\0A\00", align 1
@LPFC_INTR_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"3175 Failed to enable interrupt\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, i32, i32)* @lpfc_sli4_port_sta_fn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i64 @bf_get(i32 %10, i32* %13)
  %15 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %19 = call i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %82

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_INIT, align 4
  %32 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %34, i32 %35)
  %37 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %38 = call i32 @lpfc_sli_flush_io_rings(%struct.lpfc_hba* %37)
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %40 = call i32 @lpfc_offline(%struct.lpfc_hba* %39)
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %42 = call i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba* %41)
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %44 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @LOG_INIT, align 4
  %51 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %33
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @lpfc_sli4_enable_intr(%struct.lpfc_hba* %54, i64 %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @LPFC_INTR_ERROR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load i32, i32* @LOG_INIT, align 4
  %66 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %53
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %74 = call i32 @lpfc_online(%struct.lpfc_hba* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %79 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %62, %47, %22
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_pdev_status_reg_wait(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_flush_io_rings(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli4_enable_intr(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
