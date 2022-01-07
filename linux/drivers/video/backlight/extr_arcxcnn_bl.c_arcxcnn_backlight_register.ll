; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_backlight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_arcxcnn_bl.c_arcxcnn_backlight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcxcnn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.backlight_properties = type { i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"arctic_bl\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@MAX_BRIGHTNESS = common dso_local global i64 0, align 8
@arcxcnn_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arcxcnn*)* @arcxcnn_backlight_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcxcnn_backlight_register(%struct.arcxcnn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arcxcnn*, align 8
  %4 = alloca %struct.backlight_properties*, align 8
  %5 = alloca i8*, align 8
  store %struct.arcxcnn* %0, %struct.arcxcnn** %3, align 8
  %6 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %7 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = sext i32 %10 to i64
  %14 = inttoptr i64 %13 to i8*
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i8* [ %14, %12 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %15 ]
  store i8* %17, i8** %5, align 8
  %18 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %19 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.backlight_properties* @devm_kzalloc(i32 %20, i32 24, i32 %21)
  store %struct.backlight_properties* %22, %struct.backlight_properties** %4, align 8
  %23 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %24 = icmp ne %struct.backlight_properties* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %16
  %29 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %30 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %31 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* @MAX_BRIGHTNESS, align 8
  %33 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %34 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %36 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %41 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %28
  %45 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %46 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %49 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %47, i64* %51, align 8
  br label %52

52:                                               ; preds = %44, %28
  %53 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %54 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %59 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %61 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %65 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %68 = load %struct.backlight_properties*, %struct.backlight_properties** %4, align 8
  %69 = call i32 @devm_backlight_device_register(i32 %62, i8* %63, i32 %66, %struct.arcxcnn* %67, i32* @arcxcnn_bl_ops, %struct.backlight_properties* %68)
  %70 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %71 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.arcxcnn*, %struct.arcxcnn** %3, align 8
  %73 = getelementptr inbounds %struct.arcxcnn, %struct.arcxcnn* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PTR_ERR_OR_ZERO(i32 %74)
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %52, %25
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.backlight_properties* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @devm_backlight_device_register(i32, i8*, i32, %struct.arcxcnn*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
