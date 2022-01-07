; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.matrox_fb_info = type { i32, %struct.matroxfb_driver**, i8**, i32 }
%struct.matroxfb_driver = type { i8* (%struct.matrox_fb_info.0*)*, %struct.TYPE_4__ }
%struct.matrox_fb_info.0 = type opaque
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@matroxfb_list = common dso_local global i32 0, align 4
@matroxfb_driver_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MATROXFB_MAX_FB_DRIVERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @matroxfb_register_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matroxfb_register_device(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  %3 = alloca %struct.matroxfb_driver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %6, i32 0, i32 3
  %8 = call i32 @list_add(i32* %7, i32* @matroxfb_list)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @matroxfb_driver_list, i32 0, i32 0), align 8
  %10 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* %9)
  store %struct.matroxfb_driver* %10, %struct.matroxfb_driver** %3, align 8
  br label %11

11:                                               ; preds = %52, %1
  %12 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %13 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* @matroxfb_driver_list)
  %14 = icmp ne %struct.matroxfb_driver* %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %17 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %16, i32 0, i32 0
  %18 = load i8* (%struct.matrox_fb_info.0*)*, i8* (%struct.matrox_fb_info.0*)** %17, align 8
  %19 = icmp ne i8* (%struct.matrox_fb_info.0*)* %18, null
  br i1 %19, label %20, label %51

20:                                               ; preds = %15
  %21 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %22 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %21, i32 0, i32 0
  %23 = load i8* (%struct.matrox_fb_info.0*)*, i8* (%struct.matrox_fb_info.0*)** %22, align 8
  %24 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %25 = bitcast %struct.matrox_fb_info* %24 to %struct.matrox_fb_info.0*
  %26 = call i8* %23(%struct.matrox_fb_info.0* %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  store i8* %30, i8** %36, align 8
  %37 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %38 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %39 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %38, i32 0, i32 1
  %40 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %40, i64 %43
  store %struct.matroxfb_driver* %37, %struct.matroxfb_driver** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MATROXFB_MAX_FB_DRIVERS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %58

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %20
  br label %51

51:                                               ; preds = %50, %15
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %3, align 8
  %54 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__* %56)
  store %struct.matroxfb_driver* %57, %struct.matroxfb_driver** %3, align 8
  br label %11

58:                                               ; preds = %48, %11
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.matroxfb_driver* @matroxfb_driver_l(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
