; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_clk_scale_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufs-qcom.c_ufs_qcom_clk_scale_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.ufs_qcom_host = type { %struct.ufs_pa_layer_attr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32 }

@PRE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_hba*, i32, i32)* @ufs_qcom_clk_scale_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_qcom_clk_scale_notify(%struct.ufs_hba* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ufs_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_qcom_host*, align 8
  %8 = alloca %struct.ufs_pa_layer_attr*, align 8
  %9 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %11 = call %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba* %10)
  store %struct.ufs_qcom_host* %11, %struct.ufs_qcom_host** %7, align 8
  %12 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %7, align 8
  %13 = getelementptr inbounds %struct.ufs_qcom_host, %struct.ufs_qcom_host* %12, i32 0, i32 0
  store %struct.ufs_pa_layer_attr* %13, %struct.ufs_pa_layer_attr** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PRE_CHANGE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %22 = call i32 @ufs_qcom_clk_scale_up_pre_change(%struct.ufs_hba* %21)
  store i32 %22, i32* %9, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %25 = call i32 @ufs_qcom_clk_scale_down_pre_change(%struct.ufs_hba* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %57

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %32 = call i32 @ufs_qcom_clk_scale_up_post_change(%struct.ufs_hba* %31)
  store i32 %32, i32* %9, align 4
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %35 = call i32 @ufs_qcom_clk_scale_down_post_change(%struct.ufs_hba* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.ufs_pa_layer_attr*, %struct.ufs_pa_layer_attr** %8, align 8
  %41 = icmp ne %struct.ufs_pa_layer_attr* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39, %36
  br label %58

43:                                               ; preds = %39
  %44 = load %struct.ufs_hba*, %struct.ufs_hba** %4, align 8
  %45 = load %struct.ufs_pa_layer_attr*, %struct.ufs_pa_layer_attr** %8, align 8
  %46 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ufs_pa_layer_attr*, %struct.ufs_pa_layer_attr** %8, align 8
  %49 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ufs_pa_layer_attr*, %struct.ufs_pa_layer_attr** %8, align 8
  %52 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ufs_qcom_cfg_timers(%struct.ufs_hba* %44, i32 %47, i32 %50, i32 %53, i32 0)
  %55 = load %struct.ufs_qcom_host*, %struct.ufs_qcom_host** %7, align 8
  %56 = call i32 @ufs_qcom_update_bus_bw_vote(%struct.ufs_qcom_host* %55)
  br label %57

57:                                               ; preds = %43, %26
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

declare dso_local %struct.ufs_qcom_host* @ufshcd_get_variant(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_clk_scale_up_pre_change(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_clk_scale_down_pre_change(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_clk_scale_up_post_change(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_clk_scale_down_post_change(%struct.ufs_hba*) #1

declare dso_local i32 @ufs_qcom_cfg_timers(%struct.ufs_hba*, i32, i32, i32, i32) #1

declare dso_local i32 @ufs_qcom_update_bus_bw_vote(%struct.ufs_qcom_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
