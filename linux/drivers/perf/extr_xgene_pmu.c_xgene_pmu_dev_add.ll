; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_xgene_pmu.c_xgene_pmu_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_pmu = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }
%struct.xgene_pmu_dev_ctx = type { i32, %struct.xgene_pmu_dev*, %struct.TYPE_2__ }
%struct.xgene_pmu_dev = type { i32, %struct.TYPE_2__*, %struct.xgene_pmu* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PCP_PMU_V3 = common dso_local global i32 0, align 4
@l3c_pmu_v3_attr_groups = common dso_local global i32 0, align 4
@l3c_pmu_attr_groups = common dso_local global i32 0, align 4
@iob_fast_pmu_v3_attr_groups = common dso_local global i32 0, align 4
@iob_pmu_attr_groups = common dso_local global i32 0, align 4
@iob_slow_pmu_v3_attr_groups = common dso_local global i32 0, align 4
@mcb_pmu_v3_attr_groups = common dso_local global i32 0, align 4
@mcb_pmu_attr_groups = common dso_local global i32 0, align 4
@mc_pmu_v3_attr_groups = common dso_local global i32 0, align 4
@mc_pmu_attr_groups = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s PMU: Failed to init perf driver\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s PMU registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_pmu*, %struct.xgene_pmu_dev_ctx*)* @xgene_pmu_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_pmu_dev_add(%struct.xgene_pmu* %0, %struct.xgene_pmu_dev_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgene_pmu*, align 8
  %5 = alloca %struct.xgene_pmu_dev_ctx*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.xgene_pmu_dev*, align 8
  store %struct.xgene_pmu* %0, %struct.xgene_pmu** %4, align 8
  store %struct.xgene_pmu_dev_ctx* %1, %struct.xgene_pmu_dev_ctx** %5, align 8
  %8 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %9 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %8, i32 0, i32 4
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.xgene_pmu_dev* @devm_kzalloc(%struct.device* %11, i32 24, i32 %12)
  store %struct.xgene_pmu_dev* %13, %struct.xgene_pmu_dev** %7, align 8
  %14 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %15 = icmp ne %struct.xgene_pmu_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %172

19:                                               ; preds = %2
  %20 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %21 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %22 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %21, i32 0, i32 2
  store %struct.xgene_pmu* %20, %struct.xgene_pmu** %22, align 8
  %23 = load %struct.xgene_pmu_dev_ctx*, %struct.xgene_pmu_dev_ctx** %5, align 8
  %24 = getelementptr inbounds %struct.xgene_pmu_dev_ctx, %struct.xgene_pmu_dev_ctx* %23, i32 0, i32 2
  %25 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %26 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %25, i32 0, i32 1
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %26, align 8
  %27 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %28 = load %struct.xgene_pmu_dev_ctx*, %struct.xgene_pmu_dev_ctx** %5, align 8
  %29 = getelementptr inbounds %struct.xgene_pmu_dev_ctx, %struct.xgene_pmu_dev_ctx* %28, i32 0, i32 1
  store %struct.xgene_pmu_dev* %27, %struct.xgene_pmu_dev** %29, align 8
  %30 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %31 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %148 [
    i32 130, label %35
    i32 132, label %64
    i32 131, label %79
    i32 128, label %90
    i32 129, label %119
  ]

35:                                               ; preds = %19
  %36 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %37 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %40 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %172

49:                                               ; preds = %35
  %50 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %51 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCP_PMU_V3, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @l3c_pmu_v3_attr_groups, align 4
  %57 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %58 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @l3c_pmu_attr_groups, align 4
  %61 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %62 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %151

64:                                               ; preds = %19
  %65 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %66 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PCP_PMU_V3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i32, i32* @iob_fast_pmu_v3_attr_groups, align 4
  %72 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %73 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @iob_pmu_attr_groups, align 4
  %76 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %77 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  br label %151

79:                                               ; preds = %19
  %80 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %81 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PCP_PMU_V3, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @iob_slow_pmu_v3_attr_groups, align 4
  %87 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %88 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  br label %151

90:                                               ; preds = %19
  %91 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %92 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %95 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %93, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %90
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %172

104:                                              ; preds = %90
  %105 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %106 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @PCP_PMU_V3, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i32, i32* @mcb_pmu_v3_attr_groups, align 4
  %112 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %113 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %118

114:                                              ; preds = %104
  %115 = load i32, i32* @mcb_pmu_attr_groups, align 4
  %116 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %117 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  br label %151

119:                                              ; preds = %19
  %120 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %121 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %124 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %123, i32 0, i32 1
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %122, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %119
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %172

133:                                              ; preds = %119
  %134 = load %struct.xgene_pmu*, %struct.xgene_pmu** %4, align 8
  %135 = getelementptr inbounds %struct.xgene_pmu, %struct.xgene_pmu* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PCP_PMU_V3, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @mc_pmu_v3_attr_groups, align 4
  %141 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %142 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  br label %147

143:                                              ; preds = %133
  %144 = load i32, i32* @mc_pmu_attr_groups, align 4
  %145 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %146 = getelementptr inbounds %struct.xgene_pmu_dev, %struct.xgene_pmu_dev* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %139
  br label %151

148:                                              ; preds = %19
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %172

151:                                              ; preds = %147, %118, %89, %78, %63
  %152 = load %struct.xgene_pmu_dev*, %struct.xgene_pmu_dev** %7, align 8
  %153 = load %struct.xgene_pmu_dev_ctx*, %struct.xgene_pmu_dev_ctx** %5, align 8
  %154 = getelementptr inbounds %struct.xgene_pmu_dev_ctx, %struct.xgene_pmu_dev_ctx* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @xgene_init_perf(%struct.xgene_pmu_dev* %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %151
  %159 = load %struct.device*, %struct.device** %6, align 8
  %160 = load %struct.xgene_pmu_dev_ctx*, %struct.xgene_pmu_dev_ctx** %5, align 8
  %161 = getelementptr inbounds %struct.xgene_pmu_dev_ctx, %struct.xgene_pmu_dev_ctx* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_err(%struct.device* %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %172

166:                                              ; preds = %151
  %167 = load %struct.device*, %struct.device** %6, align 8
  %168 = load %struct.xgene_pmu_dev_ctx*, %struct.xgene_pmu_dev_ctx** %5, align 8
  %169 = getelementptr inbounds %struct.xgene_pmu_dev_ctx, %struct.xgene_pmu_dev_ctx* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @dev_info(%struct.device* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %166, %158, %148, %130, %101, %46, %16
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.xgene_pmu_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @xgene_init_perf(%struct.xgene_pmu_dev*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
