; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_tdm.c_ucc_of_parse_tdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qe/extr_qe_tdm.c_ucc_of_parse_tdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.ucc_tdm = type { i32, i8*, i32, i8*, i8*, i8* }
%struct.ucc_tdm_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"fsl,rx-sync-clock\00", align 1
@QE_CLK_NONE = common dso_local global i8* null, align 8
@QE_RSYNC_PIN = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"QE-TDM: Invalid rx-sync-clock property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"fsl,tx-sync-clock\00", align 1
@QE_TSYNC_PIN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"QE-TDM: Invalid tx-sync-clock property\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fsl,tx-timeslot-mask\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"QE-TDM: Invalid tx-timeslot-mask property\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"fsl,rx-timeslot-mask\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"QE-TDM: Invalid rx-timeslot-mask property\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"fsl,tdm-id\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"QE-TDM: No fsl,tdm-id property for this UCC\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"fsl,tdm-internal-loopback\00", align 1
@TDM_INTERNAL_LOOPBACK = common dso_local global i32 0, align 4
@TDM_NORMAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"fsl,tdm-framer-type\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"QE-TDM: No tdm-framer-type property for UCC\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"fsl,siram-entry-id\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"QE-TDM: No siram entry id for UCC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucc_of_parse_tdm(%struct.device_node* %0, %struct.ucc_tdm* %1, %struct.ucc_tdm_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ucc_tdm*, align 8
  %7 = alloca %struct.ucc_tdm_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.ucc_tdm* %1, %struct.ucc_tdm** %6, align 8
  store %struct.ucc_tdm_info* %2, %struct.ucc_tdm_info** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i8* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  %17 = call i8* @qe_clock_source(i8* %16)
  %18 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %19 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i8* %17, i8** %20, align 8
  %21 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %22 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** @QE_CLK_NONE, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %15
  %28 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %29 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @QE_RSYNC_PIN, align 8
  %33 = icmp ugt i8* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27, %15
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %171

38:                                               ; preds = %27
  br label %43

39:                                               ; preds = %3
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %171

43:                                               ; preds = %38
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = call i8* @of_get_property(%struct.device_node* %44, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %45, i8** %8, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = call i8* @qe_clock_source(i8* %49)
  %51 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %52 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %55 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i8*, i8** @QE_CLK_NONE, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %67, label %60

60:                                               ; preds = %48
  %61 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %62 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @QE_TSYNC_PIN, align 8
  %66 = icmp ugt i8* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60, %48
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %171

71:                                               ; preds = %60
  br label %76

72:                                               ; preds = %43
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %171

76:                                               ; preds = %71
  %77 = load %struct.device_node*, %struct.device_node** %5, align 8
  %78 = call i32 @of_property_read_u32_index(%struct.device_node* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0, i8** %10)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %171

85:                                               ; preds = %76
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %88 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i32 @of_property_read_u32_index(%struct.device_node* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 0, i8** %10)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %4, align 4
  br label %171

98:                                               ; preds = %85
  %99 = load i8*, i8** %10, align 8
  %100 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %101 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = load %struct.device_node*, %struct.device_node** %5, align 8
  %103 = call i32 @of_property_read_u32_index(%struct.device_node* %102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 0, i8** %10)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %9, align 4
  %109 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %4, align 4
  br label %171

111:                                              ; preds = %98
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %114 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %116 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %119 = getelementptr inbounds %struct.ucc_tdm_info, %struct.ucc_tdm_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i8* %117, i8** %120, align 8
  %121 = load %struct.device_node*, %struct.device_node** %5, align 8
  %122 = call i64 @of_property_read_bool(%struct.device_node* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %111
  %125 = load i32, i32* @TDM_INTERNAL_LOOPBACK, align 4
  %126 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %127 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  br label %132

128:                                              ; preds = %111
  %129 = load i32, i32* @TDM_NORMAL, align 4
  %130 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %131 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %124
  %133 = load %struct.device_node*, %struct.device_node** %5, align 8
  %134 = call i8* @of_get_property(%struct.device_node* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32* null)
  store i8* %134, i8** %8, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %9, align 4
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %4, align 4
  br label %171

142:                                              ; preds = %132
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @set_tdm_framer(i8* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %171

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %153 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.device_node*, %struct.device_node** %5, align 8
  %155 = call i32 @of_property_read_u32_index(%struct.device_node* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 0, i8** %10)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %9, align 4
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %4, align 4
  br label %171

163:                                              ; preds = %150
  %164 = load i8*, i8** %10, align 8
  %165 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %166 = getelementptr inbounds %struct.ucc_tdm, %struct.ucc_tdm* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ucc_tdm*, %struct.ucc_tdm** %6, align 8
  %168 = load %struct.ucc_tdm_info*, %struct.ucc_tdm_info** %7, align 8
  %169 = call i32 @set_si_param(%struct.ucc_tdm* %167, %struct.ucc_tdm_info* %168)
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %163, %158, %147, %137, %106, %93, %81, %72, %67, %39, %34
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @qe_clock_source(i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i8**) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @set_tdm_framer(i8*) #1

declare dso_local i32 @set_si_param(%struct.ucc_tdm*, %struct.ucc_tdm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
