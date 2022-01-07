; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh_mobile_lcdcfb.c_sh_mobile_lcdc_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_overlay = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.sh_mobile_lcdc_format_info*, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.sh_mobile_lcdc_format_info = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid FOURCC %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LCDC_OVERLAY_BLEND = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to allocate buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_lcdc_overlay*)* @sh_mobile_lcdc_overlay_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_lcdc_overlay_init(%struct.sh_mobile_lcdc_overlay* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_mobile_lcdc_overlay*, align 8
  %4 = alloca %struct.sh_mobile_lcdc_format_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.sh_mobile_lcdc_overlay* %0, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %7 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %8 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %7, i32 0, i32 16
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %15 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %14, i32 0, i32 10
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

21:                                               ; preds = %1
  %22 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %23 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %22, i32 0, i32 10
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sh_mobile_lcdc_format_info* @sh_mobile_format_info(i32 %26)
  store %struct.sh_mobile_lcdc_format_info* %27, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %28 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %29 = icmp eq %struct.sh_mobile_lcdc_format_info* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %32, i32 0, i32 10
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %150

40:                                               ; preds = %21
  %41 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @LCDC_OVERLAY_BLEND, align 4
  %44 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %45 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %44, i32 0, i32 15
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %47 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %46, i32 0, i32 1
  store i32 255, i32* %47, align 4
  %48 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %48, i32 0, i32 14
  store i64 0, i64* %49, align 8
  %50 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %51 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %50, i32 0, i32 13
  store i64 0, i64* %51, align 8
  %52 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %53 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %52, i32 0, i32 12
  store i64 0, i64* %53, align 8
  %54 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %55 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %56 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %55, i32 0, i32 11
  store %struct.sh_mobile_lcdc_format_info* %54, %struct.sh_mobile_lcdc_format_info** %56, align 8
  %57 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %58 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %57, i32 0, i32 10
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %63 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %65 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %68 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %70 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %69, i32 0, i32 10
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %75 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %77 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %78, 2
  %80 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %81 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %83 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %40
  %87 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %88 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %91 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = sdiv i32 %93, 8
  %95 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %96 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %95, i32 0, i32 6
  store i32 %94, i32* %96, align 8
  br label %103

97:                                               ; preds = %40
  %98 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %99 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %102 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %86
  %104 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %105 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %104, i32 0, i32 10
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %110 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %109, i32 0, i32 10
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %108, %113
  %115 = load %struct.sh_mobile_lcdc_format_info*, %struct.sh_mobile_lcdc_format_info** %4, align 8
  %116 = getelementptr inbounds %struct.sh_mobile_lcdc_format_info, %struct.sh_mobile_lcdc_format_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = sdiv i32 %118, 8
  %120 = mul nsw i32 %119, 2
  %121 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %122 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %121, i32 0, i32 7
  store i32 %120, i32* %122, align 4
  %123 = load %struct.device*, %struct.device** %5, align 8
  %124 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %125 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %128 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %127, i32 0, i32 9
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i32 @dma_alloc_coherent(%struct.device* %123, i32 %126, i32* %128, i32 %129)
  %131 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %132 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  %133 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %134 = getelementptr inbounds %struct.sh_mobile_lcdc_overlay, %struct.sh_mobile_lcdc_overlay* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %103
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %150

142:                                              ; preds = %103
  %143 = load %struct.sh_mobile_lcdc_overlay*, %struct.sh_mobile_lcdc_overlay** %3, align 8
  %144 = call i32 @sh_mobile_lcdc_overlay_fb_init(%struct.sh_mobile_lcdc_overlay* %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %150

149:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %147, %137, %30, %20
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.sh_mobile_lcdc_format_info* @sh_mobile_format_info(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @sh_mobile_lcdc_overlay_fb_init(%struct.sh_mobile_lcdc_overlay*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
