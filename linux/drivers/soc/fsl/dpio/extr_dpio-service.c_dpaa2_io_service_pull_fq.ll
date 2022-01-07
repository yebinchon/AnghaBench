; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_pull_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/dpio/extr_dpio-service.c_dpaa2_io_service_pull_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_io = type { i32* }
%struct.dpaa2_io_store = type { i32*, i64, i32, i32 }
%struct.qbman_pull_desc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpaa2_io_service_pull_fq(%struct.dpaa2_io* %0, i32 %1, %struct.dpaa2_io_store* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpaa2_io_store*, align 8
  %8 = alloca %struct.qbman_pull_desc, align 4
  %9 = alloca i32, align 4
  store %struct.dpaa2_io* %0, %struct.dpaa2_io** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dpaa2_io_store* %2, %struct.dpaa2_io_store** %7, align 8
  %10 = call i32 @qbman_pull_desc_clear(%struct.qbman_pull_desc* %8)
  %11 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %7, align 8
  %12 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %7, align 8
  %15 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @qbman_pull_desc_set_storage(%struct.qbman_pull_desc* %8, i32 %13, i32 %16, i32 1)
  %18 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %7, align 8
  %19 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @qbman_pull_desc_set_numframes(%struct.qbman_pull_desc* %8, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @qbman_pull_desc_set_fq(%struct.qbman_pull_desc* %8, i32 %23)
  %25 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %26 = call %struct.dpaa2_io* @service_select(%struct.dpaa2_io* %25)
  store %struct.dpaa2_io* %26, %struct.dpaa2_io** %5, align 8
  %27 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %28 = icmp ne %struct.dpaa2_io* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %49

32:                                               ; preds = %3
  %33 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %34 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %7, align 8
  %37 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.dpaa2_io*, %struct.dpaa2_io** %5, align 8
  %39 = getelementptr inbounds %struct.dpaa2_io, %struct.dpaa2_io* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @qbman_swp_pull(i32* %40, %struct.qbman_pull_desc* %8)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load %struct.dpaa2_io_store*, %struct.dpaa2_io_store** %7, align 8
  %46 = getelementptr inbounds %struct.dpaa2_io_store, %struct.dpaa2_io_store* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %44, %32
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @qbman_pull_desc_clear(%struct.qbman_pull_desc*) #1

declare dso_local i32 @qbman_pull_desc_set_storage(%struct.qbman_pull_desc*, i32, i32, i32) #1

declare dso_local i32 @qbman_pull_desc_set_numframes(%struct.qbman_pull_desc*, i32) #1

declare dso_local i32 @qbman_pull_desc_set_fq(%struct.qbman_pull_desc*, i32) #1

declare dso_local %struct.dpaa2_io* @service_select(%struct.dpaa2_io*) #1

declare dso_local i32 @qbman_swp_pull(i32*, %struct.qbman_pull_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
