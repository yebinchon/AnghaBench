; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_apply_skip_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_apply_skip_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_skip_desc = type { i32, i32 }
%struct.v4l2_fract = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_skip_desc*, %struct.v4l2_fract*)* @csi_apply_skip_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_apply_skip_interval(%struct.csi_skip_desc* %0, %struct.v4l2_fract* %1) #0 {
  %3 = alloca %struct.csi_skip_desc*, align 8
  %4 = alloca %struct.v4l2_fract*, align 8
  %5 = alloca i32, align 4
  store %struct.csi_skip_desc* %0, %struct.csi_skip_desc** %3, align 8
  store %struct.v4l2_fract* %1, %struct.v4l2_fract** %4, align 8
  %6 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %3, align 8
  %7 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.csi_skip_desc*, %struct.csi_skip_desc** %3, align 8
  %14 = getelementptr inbounds %struct.csi_skip_desc, %struct.csi_skip_desc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %24 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gcd(i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ugt i32 %27, 1
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = udiv i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.v4l2_fract*, %struct.v4l2_fract** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = udiv i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %29, %2
  ret void
}

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
