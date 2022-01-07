; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_pmem_forget_poison_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_pmem_forget_poison_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_cmd_clear_error = type { i64, i64 }
%struct.nd_btt = type { %struct.nd_namespace_common* }
%struct.nd_namespace_common = type { i32 }
%struct.nd_pfn = type { %struct.nd_namespace_common* }
%struct.nd_dax = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nd_namespace_common* }
%struct.nd_namespace_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @nd_pmem_forget_poison_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_pmem_forget_poison_check(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nd_cmd_clear_error*, align 8
  %7 = alloca %struct.nd_btt*, align 8
  %8 = alloca %struct.nd_pfn*, align 8
  %9 = alloca %struct.nd_dax*, align 8
  %10 = alloca %struct.nd_namespace_common*, align 8
  %11 = alloca %struct.nd_namespace_io*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.nd_cmd_clear_error*
  store %struct.nd_cmd_clear_error* %19, %struct.nd_cmd_clear_error** %6, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i64 @is_nd_btt(%struct.device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call %struct.nd_btt* @to_nd_btt(%struct.device* %24)
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.nd_btt* [ %25, %23 ], [ null, %26 ]
  store %struct.nd_btt* %28, %struct.nd_btt** %7, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i64 @is_nd_pfn(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call %struct.nd_pfn* @to_nd_pfn(%struct.device* %33)
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi %struct.nd_pfn* [ %34, %32 ], [ null, %35 ]
  store %struct.nd_pfn* %37, %struct.nd_pfn** %8, align 8
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i64 @is_nd_dax(%struct.device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call %struct.nd_dax* @to_nd_dax(%struct.device* %42)
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi %struct.nd_dax* [ %43, %41 ], [ null, %44 ]
  store %struct.nd_dax* %46, %struct.nd_dax** %9, align 8
  store %struct.nd_namespace_common* null, %struct.nd_namespace_common** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %47 = load %struct.nd_dax*, %struct.nd_dax** %9, align 8
  %48 = icmp ne %struct.nd_dax* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49, %45
  store i32 0, i32* %3, align 4
  br label %134

55:                                               ; preds = %49
  %56 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %6, align 8
  %57 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  %59 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %6, align 8
  %60 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nd_cmd_clear_error*, %struct.nd_cmd_clear_error** %6, align 8
  %63 = getelementptr inbounds %struct.nd_cmd_clear_error, %struct.nd_cmd_clear_error* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = sub nsw i64 %65, 1
  store i64 %66, i64* %15, align 8
  %67 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %68 = icmp ne %struct.nd_btt* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %55
  %70 = load %struct.nd_pfn*, %struct.nd_pfn** %8, align 8
  %71 = icmp ne %struct.nd_pfn* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load %struct.nd_dax*, %struct.nd_dax** %9, align 8
  %74 = icmp ne %struct.nd_dax* %73, null
  br i1 %74, label %75, label %104

75:                                               ; preds = %72, %69, %55
  %76 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %77 = icmp ne %struct.nd_btt* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.nd_btt*, %struct.nd_btt** %7, align 8
  %80 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %79, i32 0, i32 0
  %81 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %80, align 8
  store %struct.nd_namespace_common* %81, %struct.nd_namespace_common** %10, align 8
  br label %99

82:                                               ; preds = %75
  %83 = load %struct.nd_pfn*, %struct.nd_pfn** %8, align 8
  %84 = icmp ne %struct.nd_pfn* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.nd_pfn*, %struct.nd_pfn** %8, align 8
  %87 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %86, i32 0, i32 0
  %88 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %87, align 8
  store %struct.nd_namespace_common* %88, %struct.nd_namespace_common** %10, align 8
  br label %98

89:                                               ; preds = %82
  %90 = load %struct.nd_dax*, %struct.nd_dax** %9, align 8
  %91 = icmp ne %struct.nd_dax* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.nd_dax*, %struct.nd_dax** %9, align 8
  %94 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %95, align 8
  store %struct.nd_namespace_common* %96, %struct.nd_namespace_common** %10, align 8
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %78
  %100 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %101 = icmp ne %struct.nd_namespace_common* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %134

103:                                              ; preds = %99
  br label %107

104:                                              ; preds = %72
  %105 = load %struct.device*, %struct.device** %4, align 8
  %106 = call %struct.nd_namespace_common* @to_ndns(%struct.device* %105)
  store %struct.nd_namespace_common* %106, %struct.nd_namespace_common** %10, align 8
  br label %107

107:                                              ; preds = %104, %103
  %108 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %10, align 8
  %109 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %108, i32 0, i32 0
  %110 = call %struct.nd_namespace_io* @to_nd_namespace_io(i32* %109)
  store %struct.nd_namespace_io* %110, %struct.nd_namespace_io** %11, align 8
  %111 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %11, align 8
  %112 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = add nsw i64 %114, %115
  store i64 %116, i64* %16, align 8
  %117 = load %struct.nd_namespace_io*, %struct.nd_namespace_io** %11, align 8
  %118 = getelementptr inbounds %struct.nd_namespace_io, %struct.nd_namespace_io* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = sub nsw i64 %120, %121
  store i64 %122, i64* %17, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %14, align 8
  %125 = icmp sge i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %107
  %127 = load i64, i64* %17, align 8
  %128 = load i64, i64* %15, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, i32* @EBUSY, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %126, %107
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %130, %102, %54
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local %struct.nd_pfn* @to_nd_pfn(%struct.device*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

declare dso_local %struct.nd_dax* @to_nd_dax(%struct.device*) #1

declare dso_local %struct.nd_namespace_common* @to_ndns(%struct.device*) #1

declare dso_local %struct.nd_namespace_io* @to_nd_namespace_io(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
