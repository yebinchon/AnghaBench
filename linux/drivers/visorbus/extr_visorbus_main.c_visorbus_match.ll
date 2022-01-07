; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorbus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.visor_device = type { %struct.visorchannel* }
%struct.visorchannel = type { i32 }
%struct.visor_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@VISOR_CHANNEL_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @visorbus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorbus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.visor_device*, align 8
  %9 = alloca %struct.visor_driver*, align 8
  %10 = alloca %struct.visorchannel*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.visor_device* @to_visor_device(%struct.device* %11)
  store %struct.visor_device* %12, %struct.visor_device** %8, align 8
  %13 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %14 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %13, i32 0, i32 0
  %15 = load %struct.visorchannel*, %struct.visorchannel** %14, align 8
  %16 = call i32* @visorchannel_get_guid(%struct.visorchannel* %15)
  store i32* %16, i32** %6, align 8
  %17 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %18 = call %struct.visor_driver* @to_visor_driver(%struct.device_driver* %17)
  store %struct.visor_driver* %18, %struct.visor_driver** %9, align 8
  %19 = load %struct.visor_device*, %struct.visor_device** %8, align 8
  %20 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %19, i32 0, i32 0
  %21 = load %struct.visorchannel*, %struct.visorchannel** %20, align 8
  store %struct.visorchannel* %21, %struct.visorchannel** %10, align 8
  %22 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %23 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %93, %27
  %29 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %30 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = call i32 @guid_is_null(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %96

39:                                               ; preds = %28
  %40 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %41 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @guid_equal(i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %39
  %51 = load %struct.visorchannel*, %struct.visorchannel** %10, align 8
  %52 = call i32 @visorchannel_get_header(%struct.visorchannel* %51)
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %55 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %62 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %71 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.visor_driver*, %struct.visor_driver** %9, align 8
  %79 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @VISOR_CHANNEL_SIGNATURE, align 4
  %87 = call i64 @visor_check_channel(i32 %52, %struct.device* %53, i32* %60, i8* %69, i32 %77, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %50
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %97

92:                                               ; preds = %50, %39
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %28

96:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %89, %26
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.visor_device* @to_visor_device(%struct.device*) #1

declare dso_local i32* @visorchannel_get_guid(%struct.visorchannel*) #1

declare dso_local %struct.visor_driver* @to_visor_driver(%struct.device_driver*) #1

declare dso_local i32 @guid_is_null(i32*) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i64 @visor_check_channel(i32, %struct.device*, i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @visorchannel_get_header(%struct.visorchannel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
