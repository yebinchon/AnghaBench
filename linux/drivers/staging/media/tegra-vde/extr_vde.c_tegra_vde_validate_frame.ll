; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_validate_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/tegra-vde/extr_vde.c_tegra_vde_validate_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_vde_h264_frame = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Bad frame_num %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.tegra_vde_h264_frame*)* @tegra_vde_validate_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_vde_validate_frame(%struct.device* %0, %struct.tegra_vde_h264_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_vde_h264_frame*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_vde_h264_frame* %1, %struct.tegra_vde_h264_frame** %5, align 8
  %6 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %5, align 8
  %7 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 8388607
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.tegra_vde_h264_frame*, %struct.tegra_vde_h264_frame** %5, align 8
  %13 = getelementptr inbounds %struct.tegra_vde_h264_frame, %struct.tegra_vde_h264_frame* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(%struct.device* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
