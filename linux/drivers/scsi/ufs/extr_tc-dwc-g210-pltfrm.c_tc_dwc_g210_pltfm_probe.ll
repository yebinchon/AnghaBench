; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_tc-dwc-g210-pltfrm.c_tc_dwc_g210_pltfm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_tc-dwc-g210-pltfrm.c_tc_dwc_g210_pltfm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.ufs_hba_variant_ops = type { i32 }

@tc_dwc_g210_pltfm_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ufshcd_pltfrm_init() failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc_dwc_g210_pltfm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_dwc_g210_pltfm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.ufs_hba_variant_ops*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load i32, i32* @tc_dwc_g210_pltfm_match, align 4
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.of_device_id* @of_match_node(i32 %9, i32 %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %15 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ufs_hba_variant_ops*
  store %struct.ufs_hba_variant_ops* %17, %struct.ufs_hba_variant_ops** %5, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = load %struct.ufs_hba_variant_ops*, %struct.ufs_hba_variant_ops** %5, align 8
  %20 = call i32 @ufshcd_pltfrm_init(%struct.platform_device* %18, %struct.ufs_hba_variant_ops* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i32 @ufshcd_pltfrm_init(%struct.platform_device*, %struct.ufs_hba_variant_ops*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
