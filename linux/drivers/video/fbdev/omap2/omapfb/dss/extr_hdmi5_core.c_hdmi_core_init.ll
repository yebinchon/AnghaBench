; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5_core.c_hdmi_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_core_vid_config = type { i32, %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32 }
%struct.hdmi_config = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32, i32, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"hdmi_core_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_core_vid_config*, %struct.hdmi_config*)* @hdmi_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_core_init(%struct.hdmi_core_vid_config* %0, %struct.hdmi_config* %1) #0 {
  %3 = alloca %struct.hdmi_core_vid_config*, align 8
  %4 = alloca %struct.hdmi_config*, align 8
  store %struct.hdmi_core_vid_config* %0, %struct.hdmi_core_vid_config** %3, align 8
  store %struct.hdmi_config* %1, %struct.hdmi_config** %4, align 8
  %5 = call i32 @DSSDBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %7 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %9 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %13 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 10
  store i32 %11, i32* %15, align 4
  %16 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %17 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 9
  store i32 %19, i32* %23, align 8
  %24 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %25 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %30 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  store i64 %28, i64* %32, align 8
  %33 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %34 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %38 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i64 %36, i64* %40, align 8
  %41 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %42 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %46 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  store i64 %44, i64* %48, align 8
  %49 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %50 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %54 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 7
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %59 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = sub nsw i64 %62, 1
  %64 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %65 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %67 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %71 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i32 %69, i32* %73, align 4
  %74 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %75 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %79 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  store i32 %77, i32* %81, align 8
  %82 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %83 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %87 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  store i64 %85, i64* %89, align 8
  %90 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %91 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %95 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i64 %93, i64* %97, align 8
  %98 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %99 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %103 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i64 %101, i64* %105, align 8
  %106 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %107 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %109 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %113 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %111, %115
  %117 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %118 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %116, %120
  %122 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %123 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %125 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %128 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 8
  %130 = load %struct.hdmi_config*, %struct.hdmi_config** %4, align 8
  %131 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.hdmi_core_vid_config*, %struct.hdmi_core_vid_config** %3, align 8
  %135 = getelementptr inbounds %struct.hdmi_core_vid_config, %struct.hdmi_core_vid_config* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
