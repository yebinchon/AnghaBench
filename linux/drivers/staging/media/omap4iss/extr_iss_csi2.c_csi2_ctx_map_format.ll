; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_ctx_map_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_csi2_ctx_map_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_csi2_device = type { i32, i64, i64, %struct.v4l2_mbus_framefmt* }
%struct.v4l2_mbus_framefmt = type { i32 }

@CSI2_PAD_SINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"CSI2: pixel format %08x unsupported!\0A\00", align 1
@CSI2_OUTPUT_IPIPEIF = common dso_local global i32 0, align 4
@CSI2_OUTPUT_MEMORY = common dso_local global i32 0, align 4
@CSI2_PIX_FMT_OTHERS = common dso_local global i32 0, align 4
@__csi2_fmt_map = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_csi2_device*)* @csi2_ctx_map_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi2_ctx_map_format(%struct.iss_csi2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_csi2_device*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iss_csi2_device* %0, %struct.iss_csi2_device** %3, align 8
  %7 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %8 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %7, i32 0, i32 3
  %9 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %10 = load i64, i64* @CSI2_PAD_SINK, align 8
  %11 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %9, i64 %10
  store %struct.v4l2_mbus_framefmt* %11, %struct.v4l2_mbus_framefmt** %4, align 8
  %12 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 135, label %15
    i32 132, label %15
    i32 141, label %15
    i32 138, label %15
    i32 134, label %16
    i32 131, label %16
    i32 140, label %16
    i32 137, label %16
    i32 139, label %17
    i32 136, label %17
    i32 133, label %17
    i32 130, label %17
    i32 129, label %18
    i32 128, label %18
  ]

15:                                               ; preds = %1, %1, %1, %1
  store i32 0, i32* %5, align 4
  br label %24

16:                                               ; preds = %1, %1, %1, %1
  store i32 1, i32* %5, align 4
  br label %24

17:                                               ; preds = %1, %1, %1, %1
  store i32 2, i32* %5, align 4
  br label %24

18:                                               ; preds = %1, %1
  store i32 3, i32* %5, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %72

24:                                               ; preds = %18, %17, %16, %15
  %25 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %26 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %24
  %32 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %33 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CSI2_OUTPUT_MEMORY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @CSI2_PIX_FMT_OTHERS, align 4
  store i32 %39, i32* %2, align 4
  br label %72

40:                                               ; preds = %31, %24
  %41 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %42 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %56

46:                                               ; preds = %40
  %47 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %48 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @CSI2_OUTPUT_IPIPEIF, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %46, %45
  %57 = phi i32 [ 0, %45 ], [ %55, %46 ]
  store i32 %57, i32* %6, align 4
  %58 = load i32***, i32**** @__csi2_fmt_map, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32**, i32*** %58, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %3, align 8
  %68 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %56, %38, %19
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
