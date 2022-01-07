; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { %struct.TYPE_11__, %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"CSI2 pads links creation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"ISP IPIPEIF pads links creation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ISP RESIZER pads links creation failed\0A\00", align 1
@CSI2_PAD_SOURCE = common dso_local global i32 0, align 4
@IPIPEIF_PAD_SINK = common dso_local global i32 0, align 4
@IPIPEIF_PAD_SOURCE_VP = common dso_local global i32 0, align 4
@RESIZER_PAD_SINK = common dso_local global i32 0, align 4
@IPIPE_PAD_SINK = common dso_local global i32 0, align 4
@IPIPE_PAD_SOURCE_VP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_device*)* @iss_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_create_links(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %5 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %6 = call i32 @omap4iss_csi2_create_links(%struct.iss_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %11 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %118

15:                                               ; preds = %1
  %16 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %17 = call i32 @omap4iss_ipipeif_create_links(%struct.iss_device* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %22 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %118

26:                                               ; preds = %15
  %27 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %28 = call i32 @omap4iss_resizer_create_links(%struct.iss_device* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %33 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %118

37:                                               ; preds = %26
  %38 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %39 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %43 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %44 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32, i32* @IPIPEIF_PAD_SINK, align 4
  %48 = call i32 @media_create_pad_link(i32* %41, i32 %42, i32* %46, i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %118

53:                                               ; preds = %37
  %54 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %55 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %59 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %60 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* @IPIPEIF_PAD_SINK, align 4
  %64 = call i32 @media_create_pad_link(i32* %57, i32 %58, i32* %62, i32 %63, i32 0)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %118

69:                                               ; preds = %53
  %70 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %71 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* @IPIPEIF_PAD_SOURCE_VP, align 4
  %75 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %76 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i32, i32* @RESIZER_PAD_SINK, align 4
  %80 = call i32 @media_create_pad_link(i32* %73, i32 %74, i32* %78, i32 %79, i32 0)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %118

85:                                               ; preds = %69
  %86 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %87 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* @IPIPEIF_PAD_SOURCE_VP, align 4
  %91 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %92 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = load i32, i32* @IPIPE_PAD_SINK, align 4
  %96 = call i32 @media_create_pad_link(i32* %89, i32 %90, i32* %94, i32 %95, i32 0)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %118

101:                                              ; preds = %85
  %102 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %103 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* @IPIPE_PAD_SOURCE_VP, align 4
  %107 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %108 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* @RESIZER_PAD_SINK, align 4
  %112 = call i32 @media_create_pad_link(i32* %105, i32 %106, i32* %110, i32 %111, i32 0)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %118

117:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %117, %115, %99, %83, %67, %51, %31, %20, %9
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @omap4iss_csi2_create_links(%struct.iss_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @omap4iss_ipipeif_create_links(%struct.iss_device*) #1

declare dso_local i32 @omap4iss_resizer_create_links(%struct.iss_device*) #1

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
