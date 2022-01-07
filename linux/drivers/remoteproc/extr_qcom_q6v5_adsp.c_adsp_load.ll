; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_adsp.c_adsp_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i64 }
%struct.firmware = type { i32 }
%struct.qcom_adsp = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @adsp_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adsp_load(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.qcom_adsp*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.qcom_adsp*
  store %struct.qcom_adsp* %9, %struct.qcom_adsp** %5, align 8
  %10 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %11 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.firmware*, %struct.firmware** %4, align 8
  %14 = load %struct.rproc*, %struct.rproc** %3, align 8
  %15 = getelementptr inbounds %struct.rproc, %struct.rproc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %18 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %21 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %24 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qcom_adsp*, %struct.qcom_adsp** %5, align 8
  %27 = getelementptr inbounds %struct.qcom_adsp, %struct.qcom_adsp* %26, i32 0, i32 0
  %28 = call i32 @qcom_mdt_load_no_init(i32 %12, %struct.firmware* %13, i32 %16, i32 0, i32 %19, i32 %22, i32 %25, i32* %27)
  ret i32 %28
}

declare dso_local i32 @qcom_mdt_load_no_init(i32, %struct.firmware*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
