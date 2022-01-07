; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_advance_seeds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region_devs.c_nd_region_advance_seeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_region = type { %struct.device*, %struct.device*, %struct.device*, %struct.device* }
%struct.device = type { i32 }
%struct.nd_btt = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device }
%struct.nd_pfn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.nd_dax = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.device }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd_region_advance_seeds(%struct.nd_region* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.nd_region*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nd_btt*, align 8
  %6 = alloca %struct.nd_pfn*, align 8
  %7 = alloca %struct.nd_dax*, align 8
  store %struct.nd_region* %0, %struct.nd_region** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i32 @nvdimm_bus_lock(%struct.device* %8)
  %10 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %11 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = icmp eq %struct.device* %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %17 = call i32 @nd_region_create_ns_seed(%struct.nd_region* %16)
  br label %106

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @is_nd_btt(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.nd_btt* @to_nd_btt(%struct.device* %23)
  store %struct.nd_btt* %24, %struct.nd_btt** %5, align 8
  %25 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %26 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %25, i32 0, i32 3
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = icmp eq %struct.device* %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %32 = call i32 @nd_region_create_btt_seed(%struct.nd_region* %31)
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %35 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %34, i32 0, i32 0
  %36 = load %struct.device*, %struct.device** %35, align 8
  %37 = load %struct.nd_btt*, %struct.nd_btt** %5, align 8
  %38 = getelementptr inbounds %struct.nd_btt, %struct.nd_btt* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = icmp eq %struct.device* %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %44 = call i32 @nd_region_create_ns_seed(%struct.nd_region* %43)
  br label %45

45:                                               ; preds = %42, %33
  br label %105

46:                                               ; preds = %18
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i64 @is_nd_pfn(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = call %struct.nd_pfn* @to_nd_pfn(%struct.device* %51)
  store %struct.nd_pfn* %52, %struct.nd_pfn** %6, align 8
  %53 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %54 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %53, i32 0, i32 2
  %55 = load %struct.device*, %struct.device** %54, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = icmp eq %struct.device* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %60 = call i32 @nd_region_create_pfn_seed(%struct.nd_region* %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %63 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %62, i32 0, i32 0
  %64 = load %struct.device*, %struct.device** %63, align 8
  %65 = load %struct.nd_pfn*, %struct.nd_pfn** %6, align 8
  %66 = getelementptr inbounds %struct.nd_pfn, %struct.nd_pfn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = icmp eq %struct.device* %64, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %72 = call i32 @nd_region_create_ns_seed(%struct.nd_region* %71)
  br label %73

73:                                               ; preds = %70, %61
  br label %104

74:                                               ; preds = %46
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = call i64 @is_nd_dax(%struct.device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %74
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = call %struct.nd_dax* @to_nd_dax(%struct.device* %79)
  store %struct.nd_dax* %80, %struct.nd_dax** %7, align 8
  %81 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %82 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %81, i32 0, i32 1
  %83 = load %struct.device*, %struct.device** %82, align 8
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = icmp eq %struct.device* %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %88 = call i32 @nd_region_create_dax_seed(%struct.nd_region* %87)
  br label %89

89:                                               ; preds = %86, %78
  %90 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %91 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %90, i32 0, i32 0
  %92 = load %struct.device*, %struct.device** %91, align 8
  %93 = load %struct.nd_dax*, %struct.nd_dax** %7, align 8
  %94 = getelementptr inbounds %struct.nd_dax, %struct.nd_dax* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = icmp eq %struct.device* %92, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.nd_region*, %struct.nd_region** %3, align 8
  %101 = call i32 @nd_region_create_ns_seed(%struct.nd_region* %100)
  br label %102

102:                                              ; preds = %99, %89
  br label %103

103:                                              ; preds = %102, %74
  br label %104

104:                                              ; preds = %103, %73
  br label %105

105:                                              ; preds = %104, %45
  br label %106

106:                                              ; preds = %105, %15
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = call i32 @nvdimm_bus_unlock(%struct.device* %107)
  ret void
}

declare dso_local i32 @nvdimm_bus_lock(%struct.device*) #1

declare dso_local i32 @nd_region_create_ns_seed(%struct.nd_region*) #1

declare dso_local i64 @is_nd_btt(%struct.device*) #1

declare dso_local %struct.nd_btt* @to_nd_btt(%struct.device*) #1

declare dso_local i32 @nd_region_create_btt_seed(%struct.nd_region*) #1

declare dso_local i64 @is_nd_pfn(%struct.device*) #1

declare dso_local %struct.nd_pfn* @to_nd_pfn(%struct.device*) #1

declare dso_local i32 @nd_region_create_pfn_seed(%struct.nd_region*) #1

declare dso_local i64 @is_nd_dax(%struct.device*) #1

declare dso_local %struct.nd_dax* @to_nd_dax(%struct.device*) #1

declare dso_local i32 @nd_region_create_dax_seed(%struct.nd_region*) #1

declare dso_local i32 @nvdimm_bus_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
