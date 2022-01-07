; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxafb.c_pxafb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxafb_info = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__, i32, %struct.pxafb_mach_info*, %struct.device* }
%struct.TYPE_6__ = type { i32, i8*, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.device = type { i32 }
%struct.pxafb_mach_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PXA_NAME = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@pxafb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@C_STARTUP = common dso_local global i32 0, align 4
@pxafb_task = common dso_local global i32 0, align 4
@LCCR0_OUC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pxafb_info* (%struct.device*, %struct.pxafb_mach_info*)* @pxafb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pxafb_info* @pxafb_init_fbinfo(%struct.device* %0, %struct.pxafb_mach_info* %1) #0 {
  %3 = alloca %struct.pxafb_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pxafb_mach_info*, align 8
  %6 = alloca %struct.pxafb_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pxafb_mach_info* %1, %struct.pxafb_mach_info** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.pxafb_info* @devm_kzalloc(%struct.device* %8, i32 232, i32 %9)
  store %struct.pxafb_info* %10, %struct.pxafb_info** %6, align 8
  %11 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %12 = icmp ne %struct.pxafb_info* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.pxafb_info* @ERR_PTR(i32 %15)
  store %struct.pxafb_info* %16, %struct.pxafb_info** %3, align 8
  br label %139

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %20 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %19, i32 0, i32 10
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %22 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %23 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %22, i32 0, i32 9
  store %struct.pxafb_mach_info* %21, %struct.pxafb_mach_info** %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @devm_clk_get(%struct.device* %24, i32* null)
  %26 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %27 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %29 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %35 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.pxafb_info* @ERR_CAST(i32 %36)
  store %struct.pxafb_info* %37, %struct.pxafb_info** %3, align 8
  br label %139

38:                                               ; preds = %17
  %39 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %40 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PXA_NAME, align 4
  %45 = call i32 @strcpy(i32 %43, i32 %44)
  %46 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %47 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %48 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %46, i32* %50, align 8
  %51 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %52 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %56 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %60 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %64 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %63, i32 0, i32 7
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @FB_ACCEL_NONE, align 4
  %68 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %69 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %73 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 5
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %77 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %78 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  store i32 %76, i32* %80, align 8
  %81 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %82 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 -1, i32* %84, align 8
  %85 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %86 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 -1, i32* %88, align 4
  %89 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %90 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %91 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %95 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %96 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i32 %94, i32* %98, align 8
  %99 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %100 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  store i32* @pxafb_ops, i32** %101, align 8
  %102 = load i32, i32* @FBINFO_DEFAULT, align 4
  %103 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %104 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %107 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i32 -1, i32* %108, align 8
  %109 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %110 = bitcast %struct.pxafb_info* %109 to i8*
  store i8* %110, i8** %7, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = getelementptr i8, i8* %111, i64 168
  store i8* %112, i8** %7, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %115 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* @C_STARTUP, align 4
  %118 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %119 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %121 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %120, i32 0, i32 5
  store i64 -1, i64* %121, align 8
  %122 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %123 = load %struct.pxafb_mach_info*, %struct.pxafb_mach_info** %5, align 8
  %124 = call i32 @pxafb_decode_mach_info(%struct.pxafb_info* %122, %struct.pxafb_mach_info* %123)
  %125 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %126 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %125, i32 0, i32 3
  %127 = call i32 @init_waitqueue_head(i32* %126)
  %128 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %129 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %128, i32 0, i32 2
  %130 = load i32, i32* @pxafb_task, align 4
  %131 = call i32 @INIT_WORK(i32* %129, i32 %130)
  %132 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %133 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %132, i32 0, i32 1
  %134 = call i32 @mutex_init(i32* %133)
  %135 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  %136 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %135, i32 0, i32 0
  %137 = call i32 @init_completion(i32* %136)
  %138 = load %struct.pxafb_info*, %struct.pxafb_info** %6, align 8
  store %struct.pxafb_info* %138, %struct.pxafb_info** %3, align 8
  br label %139

139:                                              ; preds = %38, %33, %13
  %140 = load %struct.pxafb_info*, %struct.pxafb_info** %3, align 8
  ret %struct.pxafb_info* %140
}

declare dso_local %struct.pxafb_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.pxafb_info* @ERR_PTR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.pxafb_info* @ERR_CAST(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @pxafb_decode_mach_info(%struct.pxafb_info*, %struct.pxafb_mach_info*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
