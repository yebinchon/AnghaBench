; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_enable_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_enable_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.iommu_domain*, i32, %struct.TYPE_2__ }
%struct.iommu_domain = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"iommu not present\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"can't alloc iommu domain\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rproc_iommu_fault = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"can't attach iommu device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @rproc_enable_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_enable_iommu(%struct.rproc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rproc*, align 8
  %4 = alloca %struct.iommu_domain*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %3, align 8
  %7 = load %struct.rproc*, %struct.rproc** %3, align 8
  %8 = getelementptr inbounds %struct.rproc, %struct.rproc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.rproc*, %struct.rproc** %3, align 8
  %12 = getelementptr inbounds %struct.rproc, %struct.rproc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.iommu_domain* @iommu_domain_alloc(i32 %21)
  store %struct.iommu_domain* %22, %struct.iommu_domain** %4, align 8
  %23 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %24 = icmp ne %struct.iommu_domain* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %18
  %31 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %32 = load i32, i32* @rproc_iommu_fault, align 4
  %33 = load %struct.rproc*, %struct.rproc** %3, align 8
  %34 = call i32 @iommu_set_fault_handler(%struct.iommu_domain* %31, i32 %32, %struct.rproc* %33)
  %35 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @iommu_attach_device(%struct.iommu_domain* %35, %struct.device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %48

44:                                               ; preds = %30
  %45 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %46 = load %struct.rproc*, %struct.rproc** %3, align 8
  %47 = getelementptr inbounds %struct.rproc, %struct.rproc* %46, i32 0, i32 0
  store %struct.iommu_domain* %45, %struct.iommu_domain** %47, align 8
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.iommu_domain*, %struct.iommu_domain** %4, align 8
  %50 = call i32 @iommu_domain_free(%struct.iommu_domain* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %44, %25, %15
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.iommu_domain* @iommu_domain_alloc(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @iommu_set_fault_handler(%struct.iommu_domain*, i32, %struct.rproc*) #1

declare dso_local i32 @iommu_attach_device(%struct.iommu_domain*, %struct.device*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
