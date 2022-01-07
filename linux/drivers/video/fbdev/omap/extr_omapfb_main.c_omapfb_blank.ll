; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.omapfb_plane_struct* }
%struct.omapfb_plane_struct = type { %struct.omapfb_device* }
%struct.omapfb_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 (...)*, i32 (...)*, i32 (...)* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)* }

@OMAPFB_SUSPENDED = common dso_local global i32 0, align 4
@OMAPFB_ACTIVE = common dso_local global i32 0, align 4
@OMAPFB_MANUAL_UPDATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @omapfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.omapfb_plane_struct*, align 8
  %6 = alloca %struct.omapfb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %10, align 8
  store %struct.omapfb_plane_struct* %11, %struct.omapfb_plane_struct** %5, align 8
  %12 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %12, i32 0, i32 0
  %14 = load %struct.omapfb_device*, %struct.omapfb_device** %13, align 8
  store %struct.omapfb_device* %14, %struct.omapfb_device** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %16 = call i32 @omapfb_rqueue_lock(%struct.omapfb_device* %15)
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %112 [
    i32 128, label %18
    i32 129, label %70
  ]

18:                                               ; preds = %2
  %19 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %20 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @OMAPFB_SUSPENDED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %69

24:                                               ; preds = %18
  %25 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %26 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32 (...)*, i32 (...)** %28, align 8
  %30 = icmp ne i32 (...)* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %33 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %40 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %42, align 8
  %44 = icmp ne i32 (%struct.TYPE_5__*)* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %47 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %49, align 8
  %51 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %52 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %45, %38
  %56 = load i32, i32* @OMAPFB_ACTIVE, align 4
  %57 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %58 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %60 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32 (...)*, i32 (...)** %62, align 8
  %64 = call i32 (...) %63()
  %65 = load i32, i32* @OMAPFB_MANUAL_UPDATE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %55
  br label %69

69:                                               ; preds = %68, %18
  br label %115

70:                                               ; preds = %2
  %71 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %72 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @OMAPFB_ACTIVE, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %78 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %80, align 8
  %82 = icmp ne i32 (%struct.TYPE_5__*)* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %85 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %87, align 8
  %89 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %90 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = call i32 %88(%struct.TYPE_5__* %91)
  br label %93

93:                                               ; preds = %83, %76
  %94 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %95 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (...)*, i32 (...)** %97, align 8
  %99 = icmp ne i32 (...)* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %102 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32 (...)*, i32 (...)** %104, align 8
  %106 = call i32 (...) %105()
  br label %107

107:                                              ; preds = %100, %93
  %108 = load i32, i32* @OMAPFB_SUSPENDED, align 4
  %109 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %110 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %70
  br label %115

112:                                              ; preds = %2
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %111, %69
  %116 = load %struct.omapfb_device*, %struct.omapfb_device** %6, align 8
  %117 = call i32 @omapfb_rqueue_unlock(%struct.omapfb_device* %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %125 = call i32 @omapfb_update_full_screen(%struct.fb_info* %124)
  store i32 %125, i32* %8, align 4
  br label %126

126:                                              ; preds = %123, %120, %115
  %127 = load i32, i32* %8, align 4
  ret i32 %127
}

declare dso_local i32 @omapfb_rqueue_lock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_rqueue_unlock(%struct.omapfb_device*) #1

declare dso_local i32 @omapfb_update_full_screen(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
