; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_csi2.c_omap4iss_csi2_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { %struct.iss_csi2_device, %struct.iss_csi2_device }
%struct.iss_csi2_device = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CSI2_PAD_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_csi2_create_links(%struct.iss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iss_device*, align 8
  %4 = alloca %struct.iss_csi2_device*, align 8
  %5 = alloca %struct.iss_csi2_device*, align 8
  %6 = alloca i32, align 4
  store %struct.iss_device* %0, %struct.iss_device** %3, align 8
  %7 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %8 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %7, i32 0, i32 1
  store %struct.iss_csi2_device* %8, %struct.iss_csi2_device** %4, align 8
  %9 = load %struct.iss_device*, %struct.iss_device** %3, align 8
  %10 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %9, i32 0, i32 0
  store %struct.iss_csi2_device* %10, %struct.iss_csi2_device** %5, align 8
  %11 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %12 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %15 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %4, align 8
  %16 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i32 @media_create_pad_link(i32* %13, i32 %14, i32* %18, i32 0, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %39

24:                                               ; preds = %1
  %25 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %26 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* @CSI2_PAD_SOURCE, align 4
  %29 = load %struct.iss_csi2_device*, %struct.iss_csi2_device** %5, align 8
  %30 = getelementptr inbounds %struct.iss_csi2_device, %struct.iss_csi2_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @media_create_pad_link(i32* %27, i32 %28, i32* %32, i32 0, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %39

38:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %36, %22
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @media_create_pad_link(i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
