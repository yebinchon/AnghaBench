; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_btt_devs.c_nd_btt_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_btt = type { i32, i32, i64 }
%struct.nd_namespace_common = type { i64 }
%struct.btt_sb = type { i32, i32 }

@NVDIMM_CCLASS_BTT2 = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd_btt_version(%struct.nd_btt* %0, %struct.nd_namespace_common* %1, %struct.btt_sb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nd_btt*, align 8
  %6 = alloca %struct.nd_namespace_common*, align 8
  %7 = alloca %struct.btt_sb*, align 8
  store %struct.nd_btt* %0, %struct.nd_btt** %5, align 8
  store %struct.nd_namespace_common* %1, %struct.nd_namespace_common** %6, align 8
  store %struct.btt_sb* %2, %struct.btt_sb** %7, align 8
  %8 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %9 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NVDIMM_CCLASS_BTT2, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %3
  %14 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %15 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %17 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %16, i32 0, i32 0
  store i32 2, i32* %17, align 8
  %18 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %19 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %21 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %22 = call i64 @nvdimm_read_bytes(%struct.nd_namespace_common* %20, i64 0, %struct.btt_sb* %21, i32 8, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %92

27:                                               ; preds = %13
  %28 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %29 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %30 = call i32 @nd_btt_arena_is_valid(%struct.nd_btt* %28, %struct.btt_sb* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %27
  %36 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %37 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = icmp ne i32 %39, 2
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %43 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %92

50:                                               ; preds = %41
  br label %91

51:                                               ; preds = %3
  %52 = load i64, i64* @SZ_4K, align 8
  %53 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %54 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %56 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %58 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %6, align 8
  %60 = load i64, i64* @SZ_4K, align 8
  %61 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %62 = call i64 @nvdimm_read_bytes(%struct.nd_namespace_common* %59, i64 %60, %struct.btt_sb* %61, i32 8, i32 0)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @ENXIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %92

67:                                               ; preds = %51
  %68 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %69 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %70 = call i32 @nd_btt_arena_is_valid(%struct.nd_btt* %68, %struct.btt_sb* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %92

75:                                               ; preds = %67
  %76 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %77 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le16_to_cpu(i32 %78)
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.btt_sb*, %struct.btt_sb** %7, align 8
  %83 = getelementptr inbounds %struct.btt_sb, %struct.btt_sb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @le16_to_cpu(i32 %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %75
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %50
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %87, %72, %64, %47, %32, %24
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @nvdimm_read_bytes(%struct.nd_namespace_common*, i64, %struct.btt_sb*, i32, i32) #1

declare dso_local i32 @nd_btt_arena_is_valid(%struct.nd_btt*, %struct.btt_sb*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
