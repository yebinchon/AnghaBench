; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_deactivate_labels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_deactivate_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { %struct.nvdimm_drvdata*, i32, %struct.nvdimm* }
%struct.nvdimm_drvdata = type { i32 }
%struct.nvdimm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @deactivate_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_labels(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_mapping*, align 8
  %6 = alloca %struct.nvdimm_drvdata*, align 8
  %7 = alloca %struct.nvdimm*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.nd_region*
  store %struct.nd_region* %9, %struct.nd_region** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %48, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %13 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %10
  %17 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 1
  %19 = load %struct.nd_mapping*, %struct.nd_mapping** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %19, i64 %21
  store %struct.nd_mapping* %22, %struct.nd_mapping** %5, align 8
  %23 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %24 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %23, i32 0, i32 0
  %25 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %24, align 8
  store %struct.nvdimm_drvdata* %25, %struct.nvdimm_drvdata** %6, align 8
  %26 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %27 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %26, i32 0, i32 2
  %28 = load %struct.nvdimm*, %struct.nvdimm** %27, align 8
  store %struct.nvdimm* %28, %struct.nvdimm** %7, align 8
  %29 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %30 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %33 = call i32 @nd_mapping_free_labels(%struct.nd_mapping* %32)
  %34 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %35 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %38 = call i32 @put_ndd(%struct.nvdimm_drvdata* %37)
  %39 = load %struct.nd_mapping*, %struct.nd_mapping** %5, align 8
  %40 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %39, i32 0, i32 0
  store %struct.nvdimm_drvdata* null, %struct.nvdimm_drvdata** %40, align 8
  %41 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %6, align 8
  %42 = icmp ne %struct.nvdimm_drvdata* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %16
  %44 = load %struct.nvdimm*, %struct.nvdimm** %7, align 8
  %45 = getelementptr inbounds %struct.nvdimm, %struct.nvdimm* %44, i32 0, i32 0
  %46 = call i32 @atomic_dec(i32* %45)
  br label %47

47:                                               ; preds = %43, %16
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %10

51:                                               ; preds = %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nd_mapping_free_labels(%struct.nd_mapping*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_ndd(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
