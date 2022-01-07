; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_nd_pmem_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_pmem.c_nd_pmem_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_namespace_common = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_pmem_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_pmem_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_namespace_common*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device* %6)
  store %struct.nd_namespace_common* %7, %struct.nd_namespace_common** %5, align 8
  %8 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %9 = call i64 @IS_ERR(%struct.nd_namespace_common* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %13 = call i32 @PTR_ERR(%struct.nd_namespace_common* %12)
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %17 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %16, i32 0, i32 0
  %18 = call i32 @to_nd_namespace_io(i32* %17)
  %19 = call i64 @devm_nsio_enable(%struct.device* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %14
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i64 @is_nd_btt(%struct.device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %30 = call i32 @nvdimm_namespace_attach_btt(%struct.nd_namespace_common* %29)
  store i32 %30, i32* %2, align 4
  br label %86

31:                                               ; preds = %24
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call i64 @is_nd_pfn(%struct.device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %38 = call i32 @pmem_attach_disk(%struct.device* %36, %struct.nd_namespace_common* %37)
  store i32 %38, i32* %2, align 4
  br label %86

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %42 = call i32 @nd_btt_probe(%struct.device* %40, %struct.nd_namespace_common* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %39
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %51 = call i32 @nd_pfn_probe(%struct.device* %49, %struct.nd_namespace_common* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %86

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EOPNOTSUPP, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %86

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %68 = call i32 @nd_dax_probe(%struct.device* %66, %struct.nd_namespace_common* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %86

74:                                               ; preds = %65
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %5, align 8
  %85 = call i32 @pmem_attach_disk(%struct.device* %83, %struct.nd_namespace_common* %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %79, %71, %62, %54, %45, %35, %28, %21, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.nd_namespace_common* @nvdimm_namespace_common_probe(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.nd_namespace_common*) #1

declare dso_local i32 @PTR_ERR(%struct.nd_namespace_common*) #1

declare dso_local i64 @devm_nsio_enable(%struct.device*, i32) #1

declare dso_local i32 @to_nd_namespace_io(i32*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local i32 @nvdimm_namespace_attach_btt(%struct.nd_namespace_common*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local i32 @pmem_attach_disk(%struct.device*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nd_btt_probe(%struct.device*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nd_pfn_probe(%struct.device*, %struct.nd_namespace_common*) #1

declare dso_local i32 @nd_dax_probe(%struct.device*, %struct.nd_namespace_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
