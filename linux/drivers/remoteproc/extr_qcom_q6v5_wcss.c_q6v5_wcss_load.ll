; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_wcss.c_q6v5_wcss_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, %struct.q6v5_wcss* }
%struct.q6v5_wcss = type { i32, i32, i32, i32, i32 }
%struct.firmware = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, %struct.firmware*)* @q6v5_wcss_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_wcss_load(%struct.rproc* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.q6v5_wcss*, align 8
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %6 = load %struct.rproc*, %struct.rproc** %3, align 8
  %7 = getelementptr inbounds %struct.rproc, %struct.rproc* %6, i32 0, i32 1
  %8 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %7, align 8
  store %struct.q6v5_wcss* %8, %struct.q6v5_wcss** %5, align 8
  %9 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %5, align 8
  %10 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.firmware*, %struct.firmware** %4, align 8
  %13 = load %struct.rproc*, %struct.rproc** %3, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %5, align 8
  %17 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %5, align 8
  %20 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %5, align 8
  %23 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.q6v5_wcss*, %struct.q6v5_wcss** %5, align 8
  %26 = getelementptr inbounds %struct.q6v5_wcss, %struct.q6v5_wcss* %25, i32 0, i32 0
  %27 = call i32 @qcom_mdt_load_no_init(i32 %11, %struct.firmware* %12, i32 %15, i32 0, i32 %18, i32 %21, i32 %24, i32* %26)
  ret i32 %27
}

declare dso_local i32 @qcom_mdt_load_no_init(i32, %struct.firmware*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
