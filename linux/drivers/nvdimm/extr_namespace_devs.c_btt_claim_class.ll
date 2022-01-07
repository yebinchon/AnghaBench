; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_btt_claim_class.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_namespace_devs.c_btt_claim_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region = type { i32, %struct.nd_mapping* }
%struct.nd_mapping = type { i32 }
%struct.nvdimm_drvdata = type { i32 }
%struct.nd_namespace_index = type { i32, i32 }

@NVDIMM_CCLASS_BTT = common dso_local global i32 0, align 4
@NVDIMM_CCLASS_BTT2 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @btt_claim_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btt_claim_class(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.nd_region*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nd_mapping*, align 8
  %8 = alloca %struct.nvdimm_drvdata*, align 8
  %9 = alloca %struct.nd_namespace_index*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nd_region* @to_nd_region(i32 %12)
  store %struct.nd_region* %13, %struct.nd_region** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %63, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %17 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.nd_region*, %struct.nd_region** %4, align 8
  %22 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %21, i32 0, i32 1
  %23 = load %struct.nd_mapping*, %struct.nd_mapping** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nd_mapping, %struct.nd_mapping* %23, i64 %25
  store %struct.nd_mapping* %26, %struct.nd_mapping** %7, align 8
  %27 = load %struct.nd_mapping*, %struct.nd_mapping** %7, align 8
  %28 = call %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping* %27)
  store %struct.nvdimm_drvdata* %28, %struct.nvdimm_drvdata** %8, align 8
  %29 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %8, align 8
  %30 = icmp ne %struct.nvdimm_drvdata* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %66

32:                                               ; preds = %20
  %33 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %8, align 8
  %34 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %8, align 8
  %35 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata* %33, i32 %36)
  store %struct.nd_namespace_index* %37, %struct.nd_namespace_index** %9, align 8
  %38 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %9, align 8
  %39 = icmp eq %struct.nd_namespace_index* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %62

43:                                               ; preds = %32
  %44 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %9, align 8
  %45 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__le16_to_cpu(i32 %46)
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.nd_namespace_index*, %struct.nd_namespace_index** %9, align 8
  %51 = getelementptr inbounds %struct.nd_namespace_index, %struct.nd_namespace_index* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @__le16_to_cpu(i32 %52)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %6, align 4
  br label %61

58:                                               ; preds = %49, %43
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %14

66:                                               ; preds = %31, %14
  %67 = load i32, i32* %6, align 4
  switch i32 %67, label %72 [
    i32 0, label %68
    i32 2, label %68
    i32 1, label %70
    i32 4, label %70
  ]

68:                                               ; preds = %66, %66
  %69 = load i32, i32* @NVDIMM_CCLASS_BTT, align 4
  store i32 %69, i32* %2, align 4
  br label %75

70:                                               ; preds = %66, %66
  %71 = load i32, i32* @NVDIMM_CCLASS_BTT2, align 4
  store i32 %71, i32* %2, align 4
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @ENXIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %70, %68
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.nd_region* @to_nd_region(i32) #1

declare dso_local %struct.nvdimm_drvdata* @to_ndd(%struct.nd_mapping*) #1

declare dso_local %struct.nd_namespace_index* @to_namespace_index(%struct.nvdimm_drvdata*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
