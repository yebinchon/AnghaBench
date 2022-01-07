; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_channel_attr_groups_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_channel_attr_groups_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.gb_channel = type { i32, %struct.TYPE_5__**, %struct.TYPE_5__*, i32** }
%struct.TYPE_5__ = type { i32** }
%struct.led_classdev = type { %struct.TYPE_5__** }

@GB_LIGHT_CHANNEL_MULTICOLOR = common dso_local global i32 0, align 4
@GB_LIGHT_CHANNEL_FADER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_attr_color = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@dev_attr_fade_in = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@dev_attr_fade_out = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*, %struct.led_classdev*)* @channel_attr_groups_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_attr_groups_set(%struct.gb_channel* %0, %struct.led_classdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_channel*, align 8
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_channel* %0, %struct.gb_channel** %4, align 8
  store %struct.led_classdev* %1, %struct.led_classdev** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %9 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GB_LIGHT_CHANNEL_MULTICOLOR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %19 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GB_LIGHT_CHANNEL_FADER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %129

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kcalloc(i32 %33, i32 8, i32 %34)
  %36 = bitcast i8* %35 to i32**
  %37 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %38 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %37, i32 0, i32 3
  store i32** %36, i32*** %38, align 8
  %39 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %40 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %39, i32 0, i32 3
  %41 = load i32**, i32*** %40, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %129

46:                                               ; preds = %31
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 1, i32 8, i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_5__*
  %50 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %51 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %50, i32 0, i32 2
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %53 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp ne %struct.TYPE_5__* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %46
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %129

59:                                               ; preds = %46
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i32 2, i32 8, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_5__**
  %63 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %64 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %63, i32 0, i32 1
  store %struct.TYPE_5__** %62, %struct.TYPE_5__*** %64, align 8
  %65 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %66 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %66, align 8
  %68 = icmp ne %struct.TYPE_5__** %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %59
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %129

72:                                               ; preds = %59
  %73 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %74 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GB_LIGHT_CHANNEL_MULTICOLOR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %81 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %80, i32 0, i32 3
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32*, i32** %82, i64 %85
  store i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_attr_color, i32 0, i32 0), i32** %86, align 8
  br label %87

87:                                               ; preds = %79, %72
  %88 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %89 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @GB_LIGHT_CHANNEL_FADER, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %87
  %95 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %96 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  store i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev_attr_fade_in, i32 0, i32 0), i32** %101, align 8
  %102 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %103 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %102, i32 0, i32 3
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  store i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_fade_out, i32 0, i32 0), i32** %108, align 8
  br label %109

109:                                              ; preds = %94, %87
  %110 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %111 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %110, i32 0, i32 3
  %112 = load i32**, i32*** %111, align 8
  %113 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %114 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32** %112, i32*** %116, align 8
  %117 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %118 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %121 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %122, i64 0
  store %struct.TYPE_5__* %119, %struct.TYPE_5__** %123, align 8
  %124 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %125 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %125, align 8
  %127 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %128 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %127, i32 0, i32 0
  store %struct.TYPE_5__** %126, %struct.TYPE_5__*** %128, align 8
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %109, %69, %56, %43, %30
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
