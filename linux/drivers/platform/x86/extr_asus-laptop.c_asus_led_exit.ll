; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-laptop.c_asus_led_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_laptop = type { i32*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_18__ }
%struct.TYPE_15__ = type { %struct.TYPE_18__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__ }
%struct.TYPE_12__ = type { %struct.TYPE_18__ }
%struct.TYPE_11__ = type { %struct.TYPE_18__ }
%struct.TYPE_10__ = type { %struct.TYPE_18__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_laptop*)* @asus_led_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_led_exit(%struct.asus_laptop* %0) #0 {
  %2 = alloca %struct.asus_laptop*, align 8
  store %struct.asus_laptop* %0, %struct.asus_laptop** %2, align 8
  %3 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %4 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %3, i32 0, i32 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @IS_ERR_OR_NULL(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %12 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %17 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IS_ERR_OR_NULL(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %25 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %30 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR_OR_NULL(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %38 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %39)
  br label %41

41:                                               ; preds = %36, %28
  %42 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %43 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IS_ERR_OR_NULL(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %51 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %52)
  br label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %56 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IS_ERR_OR_NULL(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %64 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %65)
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %69 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @IS_ERR_OR_NULL(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  %76 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %77 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %78)
  br label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %82 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IS_ERR_OR_NULL(i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %80
  %89 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %90 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %91)
  br label %93

93:                                               ; preds = %88, %80
  %94 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %95 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @IS_ERR_OR_NULL(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %103 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = call i32 @led_classdev_unregister(%struct.TYPE_18__* %104)
  br label %106

106:                                              ; preds = %101, %93
  %107 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %108 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %113 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @destroy_workqueue(i32* %114)
  %116 = load %struct.asus_laptop*, %struct.asus_laptop** %2, align 8
  %117 = getelementptr inbounds %struct.asus_laptop, %struct.asus_laptop* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %111, %106
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @led_classdev_unregister(%struct.TYPE_18__*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
