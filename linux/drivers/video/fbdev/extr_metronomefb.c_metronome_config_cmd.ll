; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_config_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_config_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.metronomefb_par = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_5__ = type { i32, i32, i32* }

@epd_frame_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metronomefb_par*)* @metronome_config_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metronome_config_cmd(%struct.metronomefb_par* %0) #0 {
  %2 = alloca %struct.metronomefb_par*, align 8
  store %struct.metronomefb_par* %0, %struct.metronomefb_par** %2, align 8
  %3 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %4 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %3, i32 0, i32 2
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @epd_frame_table, align 8
  %9 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %10 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i32* %7, i32 %14, i32 4)
  %16 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %17 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %23 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = sub nsw i32 %27, 4
  %29 = mul nsw i32 %28, 2
  %30 = call i32 @memset(i32* %21, i32 0, i32 %29)
  %31 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %32 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %31, i32 0, i32 2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 52240, i32* %34, align 8
  %35 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %36 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @calc_img_cksum(i32* %39, i32 4)
  %41 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %42 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %40
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 8
  %49 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %50 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 52240, i32* %52, align 4
  %53 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %54 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = bitcast {}** %56 to i32 (%struct.metronomefb_par*)**
  %58 = load i32 (%struct.metronomefb_par*)*, i32 (%struct.metronomefb_par*)** %57, align 8
  %59 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %60 = call i32 %58(%struct.metronomefb_par* %59)
  ret i32 %60
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @calc_img_cksum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
