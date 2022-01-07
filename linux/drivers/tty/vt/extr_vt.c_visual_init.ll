; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_visual_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_visual_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.vc_data*, i32)*, i32 }
%struct.vc_data = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__*, i32, i64, i32*, i32**, i32* }

@conswitchp = common dso_local global %struct.TYPE_3__* null, align 8
@con_driver_map = common dso_local global %struct.TYPE_3__** null, align 8
@master_display_fg = common dso_local global i32 0, align 4
@DEFAULT_CURSOR_BLINK_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32)* @visual_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @visual_init(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @module_put(i32 %16)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @conswitchp, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @con_driver_map, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp ne %struct.TYPE_3__* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %18
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @con_driver_map, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  br label %36

36:                                               ; preds = %28, %18
  %37 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @__module_get(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 13
  store i32* @master_display_fg, i32** %47, align 8
  %48 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 12
  %50 = load i32**, i32*** %49, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %36
  %53 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %54 = call i32 @con_free_unimap(%struct.vc_data* %53)
  br label %55

55:                                               ; preds = %52, %36
  %56 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 11
  %58 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 12
  store i32** %57, i32*** %59, align 8
  %60 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 11
  store i32* null, i32** %61, align 8
  %62 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 7
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* @DEFAULT_CURSOR_BLINK_MS, align 4
  %69 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 8
  %71 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32)** %74, align 8
  %76 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 %75(%struct.vc_data* %76, i32 %77)
  %79 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %55
  %84 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 30464, i32 2048
  %90 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %91 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %83, %55
  %93 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %94 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %97 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 1
  %102 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %112 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @con_free_unimap(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
