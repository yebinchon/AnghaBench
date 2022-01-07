; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_region.c_nd_region_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nd_region_data = type { i32, i32 }
%struct.nd_region = type { i64, i32, i32, i32, i32, i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i64, i64 }

@nd_region_probe.once = internal global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"online cpus (%d) < concurrent i/o lanes (%d) < possible cpus (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"setting nr_cpus=%d may yield better libnvdimm device performance\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"badblocks\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"'badblocks' notification disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"failed to register %d namespace%s, continuing...\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @nd_region_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nd_region_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_region_data*, align 8
  %7 = alloca %struct.nd_region*, align 8
  %8 = alloca %struct.resource, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.nd_region* @to_nd_region(%struct.device* %9)
  store %struct.nd_region* %10, %struct.nd_region** %7, align 8
  %11 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %12 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 (...) @num_online_cpus()
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %1
  %17 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %18 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 (...) @num_possible_cpus()
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = call i32 @test_and_set_bit(i32 0, i64* @nd_region_probe.once)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = call i64 (...) @num_online_cpus()
  %28 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %29 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 (...) @num_possible_cpus()
  %32 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %26, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30, i64 %31)
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %35 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (%struct.device*, i8*, i64, ...) @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %25, %22, %16, %1
  %39 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %40 = call i32 @nd_region_activate(%struct.nd_region* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %155

45:                                               ; preds = %38
  %46 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %47 = call i32 @nd_blk_region_init(%struct.nd_region* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %155

52:                                               ; preds = %45
  %53 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %54 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %53, i32 0, i32 7
  %55 = call i64 @is_memory(%struct.TYPE_5__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %101

57:                                               ; preds = %52
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %60 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %59, i32 0, i32 4
  %61 = call i64 @devm_init_badblocks(%struct.device* %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %155

66:                                               ; preds = %57
  %67 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %68 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @sysfs_get_dirent(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %74 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 4
  %75 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %76 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %66
  %80 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %81 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %80, i32 0, i32 7
  %82 = call i32 @dev_warn(%struct.TYPE_5__* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %66
  %84 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %85 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 1
  store i64 %86, i64* %87, align 8
  %88 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %89 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %92 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = sub nsw i64 %94, 1
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  store i64 %95, i64* %96, align 8
  %97 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %98 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %99 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %98, i32 0, i32 4
  %100 = call i32 @nvdimm_badblocks_populate(%struct.nd_region* %97, i32* %99, %struct.resource* %8)
  br label %101

101:                                              ; preds = %83, %52
  %102 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %103 = call i32 @nd_region_register_namespaces(%struct.nd_region* %102, i32* %4)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %155

108:                                              ; preds = %101
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = call %struct.nd_region_data* @dev_get_drvdata(%struct.device* %109)
  store %struct.nd_region_data* %110, %struct.nd_region_data** %6, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.nd_region_data*, %struct.nd_region_data** %6, align 8
  %113 = getelementptr inbounds %struct.nd_region_data, %struct.nd_region_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %114, %115
  %117 = load %struct.nd_region_data*, %struct.nd_region_data** %6, align 8
  %118 = getelementptr inbounds %struct.nd_region_data, %struct.nd_region_data* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %108
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @ENODEV, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %155

131:                                              ; preds = %124, %121, %108
  %132 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %133 = call i32 @nd_btt_create(%struct.nd_region* %132)
  %134 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %135 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %137 = call i32 @nd_pfn_create(%struct.nd_region* %136)
  %138 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %139 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %141 = call i32 @nd_dax_create(%struct.nd_region* %140)
  %142 = load %struct.nd_region*, %struct.nd_region** %7, align 8
  %143 = getelementptr inbounds %struct.nd_region, %struct.nd_region* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  %144 = load i32, i32* %4, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %155

147:                                              ; preds = %131
  %148 = load %struct.device*, %struct.device** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp eq i32 %150, 1
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %154 = call i32 @dev_err(%struct.device* %148, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %149, i8* %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %147, %146, %128, %106, %63, %50, %43
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local %struct.nd_region* @to_nd_region(%struct.device*) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i64 @num_possible_cpus(...) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @nd_region_activate(%struct.nd_region*) #1

declare dso_local i32 @nd_blk_region_init(%struct.nd_region*) #1

declare dso_local i64 @is_memory(%struct.TYPE_5__*) #1

declare dso_local i64 @devm_init_badblocks(%struct.device*, i32*) #1

declare dso_local i32 @sysfs_get_dirent(i32, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @nvdimm_badblocks_populate(%struct.nd_region*, i32*, %struct.resource*) #1

declare dso_local i32 @nd_region_register_namespaces(%struct.nd_region*, i32*) #1

declare dso_local %struct.nd_region_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @nd_btt_create(%struct.nd_region*) #1

declare dso_local i32 @nd_pfn_create(%struct.nd_region*) #1

declare dso_local i32 @nd_dax_create(%struct.nd_region*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
