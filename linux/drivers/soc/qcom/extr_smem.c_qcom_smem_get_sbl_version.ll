; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_sbl_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smem.c_qcom_smem_get_sbl_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smem = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.smem_header* }
%struct.smem_header = type { i32* }

@SMEM_MASTER_SBL_VERSION_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smem*)* @qcom_smem_get_sbl_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smem_get_sbl_version(%struct.qcom_smem* %0) #0 {
  %2 = alloca %struct.qcom_smem*, align 8
  %3 = alloca %struct.smem_header*, align 8
  %4 = alloca i32*, align 8
  store %struct.qcom_smem* %0, %struct.qcom_smem** %2, align 8
  %5 = load %struct.qcom_smem*, %struct.qcom_smem** %2, align 8
  %6 = getelementptr inbounds %struct.qcom_smem, %struct.qcom_smem* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.smem_header*, %struct.smem_header** %9, align 8
  store %struct.smem_header* %10, %struct.smem_header** %3, align 8
  %11 = load %struct.smem_header*, %struct.smem_header** %3, align 8
  %12 = getelementptr inbounds %struct.smem_header, %struct.smem_header* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* @SMEM_MASTER_SBL_VERSION_INDEX, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  ret i32 %18
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
