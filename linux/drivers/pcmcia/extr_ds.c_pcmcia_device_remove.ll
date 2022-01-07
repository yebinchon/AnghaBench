; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pcmcia_device = type { i64, i32, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pcmcia_driver = type { i32, i32, i32 (%struct.pcmcia_device.0*)* }
%struct.pcmcia_device.0 = type opaque

@.str = private unnamed_addr constant [17 x i8] c"removing device\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"pcmcia: driver %s did not release config properly\0A\00", align 1
@MAX_WIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"pcmcia: driver %s did not release window properly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @pcmcia_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_device_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  %5 = alloca %struct.pcmcia_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.pcmcia_device* @to_pcmcia_dev(%struct.device* %7)
  store %struct.pcmcia_device* %8, %struct.pcmcia_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.pcmcia_driver* @to_pcmcia_drv(i32 %11)
  store %struct.pcmcia_driver* %12, %struct.pcmcia_driver** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %16 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %1
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 5
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %38 = call i32 @pcmcia_card_remove(%struct.TYPE_2__* %36, %struct.pcmcia_device* %37)
  br label %39

39:                                               ; preds = %33, %28, %21, %1
  %40 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %41 = icmp ne %struct.pcmcia_driver* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %106

43:                                               ; preds = %39
  %44 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %45 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %44, i32 0, i32 2
  %46 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %45, align 8
  %47 = icmp ne i32 (%struct.pcmcia_device.0*)* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %50 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %49, i32 0, i32 2
  %51 = load i32 (%struct.pcmcia_device.0*)*, i32 (%struct.pcmcia_device.0*)** %50, align 8
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %53 = bitcast %struct.pcmcia_device* %52 to %struct.pcmcia_device.0*
  %54 = call i32 %51(%struct.pcmcia_device.0* %53)
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %57 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %62 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %67 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65, %60, %55
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %73 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_info(%struct.device* %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @MAX_WIN, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %83 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @CLIENT_WIN_REQ(i32 %85)
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %92 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @dev_info(%struct.device* %90, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %89, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %101 = call i32 @pcmcia_put_dev(%struct.pcmcia_device* %100)
  %102 = load %struct.pcmcia_driver*, %struct.pcmcia_driver** %5, align 8
  %103 = getelementptr inbounds %struct.pcmcia_driver, %struct.pcmcia_driver* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @module_put(i32 %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %99, %42
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.pcmcia_device* @to_pcmcia_dev(%struct.device*) #1

declare dso_local %struct.pcmcia_driver* @to_pcmcia_drv(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @pcmcia_card_remove(%struct.TYPE_2__*, %struct.pcmcia_device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @CLIENT_WIN_REQ(i32) #1

declare dso_local i32 @pcmcia_put_dev(%struct.pcmcia_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
