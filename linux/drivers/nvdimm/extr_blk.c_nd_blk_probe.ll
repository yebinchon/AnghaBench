; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nd_blk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nd_blk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32, i32 }
%struct.nd_namespace_blk = type { i32 }

@nsblk_rw_bytes = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_blk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_blk_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_namespace_common*, align 8
  %5 = alloca %struct.nd_namespace_blk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device* %6)
  store %struct.nd_namespace_common* %7, %struct.nd_namespace_common** %4, align 8
  %8 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %9 = call i64 @IS_ERR(%struct.nd_namespace_common* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.nd_namespace_common* %12)
  store i32 %13, i32* %2, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %16 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %15, i32 0, i32 1
  %17 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(i32* %16)
  store %struct.nd_namespace_blk* %17, %struct.nd_namespace_blk** %5, align 8
  %18 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %19 = call i32 @nvdimm_namespace_capacity(%struct.nd_namespace_common* %18)
  %20 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %21 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %24 = call i32 @dev_set_drvdata(%struct.device* %22, %struct.nd_namespace_blk* %23)
  %25 = load i32, i32* @nsblk_rw_bytes, align 4
  %26 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %27 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i64 @is_nd_btt(%struct.device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %33 = call i32 @nvdimm_namespace_attach_btt(%struct.nd_namespace_common* %32)
  store i32 %33, i32* %2, align 4
  br label %45

34:                                               ; preds = %14
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %4, align 8
  %37 = call i64 @nd_btt_probe(%struct.device* %35, %struct.nd_namespace_common* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENXIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %44 = call i32 @nsblk_attach_disk(%struct.nd_namespace_blk* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39, %31, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.nd_namespace_common*) #1

declare dso_local i32 @PTR_ERR(%struct.nd_namespace_common*) #1

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(i32*) #1

declare dso_local i32 @nvdimm_namespace_capacity(%struct.nd_namespace_common*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.nd_namespace_blk*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local i32 @nvdimm_namespace_attach_btt(%struct.nd_namespace_common*) #1

declare dso_local i64 @nd_btt_probe(%struct.device*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nsblk_attach_disk(%struct.nd_namespace_blk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
