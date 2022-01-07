; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_unregister_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_base.c_matroxfb_unregister_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.matroxfb_driver = type { i32 (%struct.matrox_fb_info*, i32)*, i32 }
%struct.matrox_fb_info = type opaque
%struct.matrox_fb_info.0 = type { i32, i32*, %struct.matroxfb_driver**, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@matroxfb_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matroxfb_unregister_driver(%struct.matroxfb_driver* %0) #0 {
  %2 = alloca %struct.matroxfb_driver*, align 8
  %3 = alloca %struct.matrox_fb_info.0*, align 8
  %4 = alloca i32, align 4
  store %struct.matroxfb_driver* %0, %struct.matroxfb_driver** %2, align 8
  %5 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %6 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %5, i32 0, i32 1
  %7 = call i32 @list_del(i32* %6)
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @matroxfb_list, i32 0, i32 0), align 8
  %9 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* %8)
  store %struct.matrox_fb_info.0* %9, %struct.matrox_fb_info.0** %3, align 8
  br label %10

10:                                               ; preds = %90, %1
  %11 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %12 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* @matroxfb_list)
  %13 = icmp ne %struct.matrox_fb_info.0* %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %88, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %18 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %15
  %22 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %23 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %22, i32 0, i32 2
  %24 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %24, i64 %26
  %28 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %27, align 8
  %29 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %30 = icmp eq %struct.matroxfb_driver* %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %21
  %32 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %33 = icmp ne %struct.matroxfb_driver* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %36 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %35, i32 0, i32 0
  %37 = load i32 (%struct.matrox_fb_info*, i32)*, i32 (%struct.matrox_fb_info*, i32)** %36, align 8
  %38 = icmp ne i32 (%struct.matrox_fb_info*, i32)* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %2, align 8
  %41 = getelementptr inbounds %struct.matroxfb_driver, %struct.matroxfb_driver* %40, i32 0, i32 0
  %42 = load i32 (%struct.matrox_fb_info*, i32)*, i32 (%struct.matrox_fb_info*, i32)** %41, align 8
  %43 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %44 = bitcast %struct.matrox_fb_info.0* %43 to %struct.matrox_fb_info*
  %45 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %46 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 %42(%struct.matrox_fb_info* %44, i32 %51)
  br label %53

53:                                               ; preds = %39, %34, %31
  %54 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %55 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %54, i32 0, i32 2
  %56 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %55, align 8
  %57 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %58 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %56, i64 %61
  %63 = load %struct.matroxfb_driver*, %struct.matroxfb_driver** %62, align 8
  %64 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %65 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %64, i32 0, i32 2
  %66 = load %struct.matroxfb_driver**, %struct.matroxfb_driver*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.matroxfb_driver*, %struct.matroxfb_driver** %66, i64 %68
  store %struct.matroxfb_driver* %63, %struct.matroxfb_driver** %69, align 8
  %70 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %71 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %74 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %80 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %88

85:                                               ; preds = %21
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %53
  br label %15

89:                                               ; preds = %15
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.matrox_fb_info.0*, %struct.matrox_fb_info.0** %3, align 8
  %92 = getelementptr inbounds %struct.matrox_fb_info.0, %struct.matrox_fb_info.0* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = call %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__* %94)
  store %struct.matrox_fb_info.0* %95, %struct.matrox_fb_info.0** %3, align 8
  br label %10

96:                                               ; preds = %10
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local %struct.matrox_fb_info.0* @matroxfb_l(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
