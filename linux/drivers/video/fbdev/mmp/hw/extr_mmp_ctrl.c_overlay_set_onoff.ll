; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/hw/extr_mmp_ctrl.c_overlay_set_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_overlay = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"overlay %s is already %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmp_overlay*, i32)* @overlay_set_onoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @overlay_set_onoff(%struct.mmp_overlay* %0, i32 %1) #0 {
  %3 = alloca %struct.mmp_overlay*, align 8
  %4 = alloca i32, align 4
  store %struct.mmp_overlay* %0, %struct.mmp_overlay** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %6 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %12 = call %struct.TYPE_7__* @overlay_to_ctrl(%struct.mmp_overlay* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %16 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %21 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @stat_name(i32 %22)
  %24 = call i32 @dev_info(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  br label %54

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %28 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dmafetch_onoff(%struct.mmp_overlay* %29, i32 %30)
  %32 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %33 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_6__*)*, i64 (%struct.TYPE_6__*)** %36, align 8
  %38 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %39 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i64 %37(%struct.TYPE_6__* %40)
  %42 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %43 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %41, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %25
  %49 = load %struct.mmp_overlay*, %struct.mmp_overlay** %3, align 8
  %50 = getelementptr inbounds %struct.mmp_overlay, %struct.mmp_overlay* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @path_onoff(%struct.TYPE_6__* %51, i32 %52)
  br label %54

54:                                               ; preds = %10, %48, %25
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @overlay_to_ctrl(%struct.mmp_overlay*) #1

declare dso_local i32 @stat_name(i32) #1

declare dso_local i32 @dmafetch_onoff(%struct.mmp_overlay*, i32) #1

declare dso_local i32 @path_onoff(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
