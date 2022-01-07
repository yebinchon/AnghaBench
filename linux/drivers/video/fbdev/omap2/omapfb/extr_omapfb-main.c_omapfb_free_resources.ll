; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32, i32, i32, i32, i32*, %struct.TYPE_3__*, i32*, %struct.omap_overlay** }
%struct.TYPE_3__ = type { i64, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*)*, i64, i32 (%struct.omap_overlay*)* }

@.str = private unnamed_addr constant [16 x i8] c"free_resources\0A\00", align 1
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb2_device*)* @omapfb_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_free_resources(%struct.omapfb2_device* %0) #0 {
  %2 = alloca %struct.omapfb2_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_overlay*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %2, align 8
  %6 = call i32 @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %8 = icmp eq %struct.omapfb2_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %170

10:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %14 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %11
  %18 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %19 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %18, i32 0, i32 7
  %20 = load %struct.omap_overlay**, %struct.omap_overlay*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %20, i64 %22
  %24 = load %struct.omap_overlay*, %struct.omap_overlay** %23, align 8
  store %struct.omap_overlay* %24, %struct.omap_overlay** %4, align 8
  %25 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %26 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %25, i32 0, i32 2
  %27 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %26, align 8
  %28 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %29 = call i32 %27(%struct.omap_overlay* %28)
  %30 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %31 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %17
  %35 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %36 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %35, i32 0, i32 0
  %37 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %36, align 8
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %4, align 8
  %39 = call i32 %37(%struct.omap_overlay* %38)
  br label %40

40:                                               ; preds = %34, %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %11

44:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %60, %44
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %48 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %53 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @unregister_framebuffer(i32 %58)
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %45

63:                                               ; preds = %45
  %64 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %65 = call i32 @omapfb_free_all_fbmem(%struct.omapfb2_device* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %90, %63
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %69 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %66
  %73 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %74 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %75 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fbinfo_cleanup(%struct.omapfb2_device* %73, i32 %80)
  %82 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %83 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @framebuffer_release(i32 %88)
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %66

93:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %146, %93
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %97 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %94
  %101 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %102 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %101, i32 0, i32 5
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load %struct.omap_dss_device*, %struct.omap_dss_device** %107, align 8
  store %struct.omap_dss_device* %108, %struct.omap_dss_device** %5, align 8
  %109 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %110 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %109, i32 0, i32 5
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %100
  %119 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %120 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %121 = call i32 @omapfb_stop_auto_update(%struct.omapfb2_device* %119, %struct.omap_dss_device* %120)
  br label %122

122:                                              ; preds = %118, %100
  %123 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %124 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @OMAP_DSS_DISPLAY_DISABLED, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %130 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %132, align 8
  %134 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %135 = call i32 %133(%struct.omap_dss_device* %134)
  br label %136

136:                                              ; preds = %128, %122
  %137 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %138 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %140, align 8
  %142 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %143 = call i32 %141(%struct.omap_dss_device* %142)
  %144 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %145 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %144)
  br label %146

146:                                              ; preds = %136
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  br label %94

149:                                              ; preds = %94
  %150 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %151 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %156 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @flush_workqueue(i32* %157)
  %159 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %160 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @destroy_workqueue(i32* %161)
  %163 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %164 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %163, i32 0, i32 4
  store i32* null, i32** %164, align 8
  br label %165

165:                                              ; preds = %154, %149
  %166 = load %struct.omapfb2_device*, %struct.omapfb2_device** %2, align 8
  %167 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @dev_set_drvdata(i32 %168, i32* null)
  br label %170

170:                                              ; preds = %165, %9
  ret void
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @unregister_framebuffer(i32) #1

declare dso_local i32 @omapfb_free_all_fbmem(%struct.omapfb2_device*) #1

declare dso_local i32 @fbinfo_cleanup(%struct.omapfb2_device*, i32) #1

declare dso_local i32 @framebuffer_release(i32) #1

declare dso_local i32 @omapfb_stop_auto_update(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

declare dso_local i32 @flush_workqueue(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
