; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_validate_h264_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_validate_h264_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_vde_h264_decoder_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Bad DPB size %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bad level value %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Bad pic_init_qp value %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Bad log2_max_pic_order_cnt_lsb value %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Bad log2_max_frame_num value %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Bad chroma_qp_index_offset value %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Bad pic_order_cnt_type value %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Bad num_ref_idx_l0_active_minus1 value %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Bad num_ref_idx_l1_active_minus1 value %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Bad pic_width_in_mbs value %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Bad pic_height_in_mbs value %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_vde_h264_decoder_ctx*)* @tegra_vde_validate_h264_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_validate_h264_ctx(%struct.device* %0, %struct.tegra_vde_h264_decoder_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_vde_h264_decoder_ctx*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_vde_h264_decoder_ctx* %1, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %6 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %7 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 17
  br i1 %14, label %15, label %23

15:                                               ; preds = %10, %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %164

23:                                               ; preds = %10
  %24 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 15
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %164

36:                                               ; preds = %23
  %37 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %39, 52
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %164

49:                                               ; preds = %36
  %50 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 16
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %164

62:                                               ; preds = %49
  %63 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 16
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %164

75:                                               ; preds = %62
  %76 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %77 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 31
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %83 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %164

88:                                               ; preds = %75
  %89 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %90 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %91, 2
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_err(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %164

101:                                              ; preds = %88
  %102 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 15
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %109 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %164

114:                                              ; preds = %101
  %115 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %116 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %115, i32 0, i32 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 15
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %164

127:                                              ; preds = %114
  %128 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %129 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %134 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %133, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 127
  br i1 %136, label %137, label %145

137:                                              ; preds = %132, %127
  %138 = load %struct.device*, %struct.device** %4, align 8
  %139 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %140 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @dev_err(%struct.device* %138, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %3, align 4
  br label %164

145:                                              ; preds = %132
  %146 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %147 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %152 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %153, 127
  br i1 %154, label %155, label %163

155:                                              ; preds = %150, %145
  %156 = load %struct.device*, %struct.device** %4, align 8
  %157 = load %struct.tegra_vde_h264_decoder_ctx*, %struct.tegra_vde_h264_decoder_ctx** %5, align 8
  %158 = getelementptr inbounds %struct.tegra_vde_h264_decoder_ctx, %struct.tegra_vde_h264_decoder_ctx* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @dev_err(%struct.device* %156, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %164

163:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %155, %137, %119, %106, %93, %80, %67, %54, %41, %28, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
