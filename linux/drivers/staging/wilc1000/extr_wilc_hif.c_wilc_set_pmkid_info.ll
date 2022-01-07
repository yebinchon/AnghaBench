; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_pmkid_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_set_pmkid_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wilc_pmkid_attr = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }

@WID_PMKID_INFO = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_set_pmkid_info(%struct.wilc_vif* %0, %struct.wilc_pmkid_attr* %1) #0 {
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.wilc_pmkid_attr*, align 8
  %5 = alloca %struct.wid, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %3, align 8
  store %struct.wilc_pmkid_attr* %1, %struct.wilc_pmkid_attr** %4, align 8
  %6 = load i32, i32* @WID_PMKID_INFO, align 4
  %7 = getelementptr inbounds %struct.wid, %struct.wid* %5, i32 0, i32 3
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @WID_STR, align 4
  %9 = getelementptr inbounds %struct.wid, %struct.wid* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load %struct.wilc_pmkid_attr*, %struct.wilc_pmkid_attr** %4, align 8
  %11 = getelementptr inbounds %struct.wilc_pmkid_attr, %struct.wilc_pmkid_attr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.wid, %struct.wid* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.wilc_pmkid_attr*, %struct.wilc_pmkid_attr** %4, align 8
  %19 = bitcast %struct.wilc_pmkid_attr* %18 to i32*
  %20 = getelementptr inbounds %struct.wid, %struct.wid* %5, i32 0, i32 1
  store i32* %19, i32** %20, align 8
  %21 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %22 = load i32, i32* @WILC_SET_CFG, align 4
  %23 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %21, i32 %22, %struct.wid* %5, i32 1)
  ret i32 %23
}

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
