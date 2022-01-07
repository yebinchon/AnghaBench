; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { i8*, i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)*, i32, %struct.comedi_driver*, i64 }
%struct.comedi_device.0 = type opaque
%struct.comedi_devconfig = type opaque
%struct.comedi_device = type { i8*, %struct.comedi_driver*, i64, i32, i64, i32 }
%struct.comedi_devconfig.1 = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@comedi_drivers_list_lock = common dso_local global i32 0, align 4
@comedi_drivers = common dso_local global %struct.comedi_driver* null, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"driver '%s' does not support attach using comedi_config\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_device_attach(%struct.comedi_device* %0, %struct.comedi_devconfig.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig.1*, align 8
  %6 = alloca %struct.comedi_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig.1* %1, %struct.comedi_devconfig.1** %5, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 5
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %169

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @comedi_drivers_list_lock)
  %20 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %20, %struct.comedi_driver** %6, align 8
  br label %21

21:                                               ; preds = %66, %18
  %22 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %23 = icmp ne %struct.comedi_driver* %22, null
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @try_module_get(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %66

31:                                               ; preds = %24
  %32 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %38 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_devconfig.1, %struct.comedi_devconfig.1* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @comedi_recognize(%struct.comedi_driver* %37, i32 %40)
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %70

49:                                               ; preds = %36
  br label %61

50:                                               ; preds = %31
  %51 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %52 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %55 = getelementptr inbounds %struct.comedi_devconfig.1, %struct.comedi_devconfig.1* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @strcmp(i8* %53, i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %70

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @module_put(i32 %64)
  br label %66

66:                                               ; preds = %61, %30
  %67 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %67, i32 0, i32 3
  %69 = load %struct.comedi_driver*, %struct.comedi_driver** %68, align 8
  store %struct.comedi_driver* %69, %struct.comedi_driver** %6, align 8
  br label %21

70:                                               ; preds = %59, %48, %21
  %71 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %72 = icmp ne %struct.comedi_driver* %71, null
  br i1 %72, label %99, label %73

73:                                               ; preds = %70
  %74 = load %struct.comedi_driver*, %struct.comedi_driver** @comedi_drivers, align 8
  store %struct.comedi_driver* %74, %struct.comedi_driver** %6, align 8
  br label %75

75:                                               ; preds = %92, %73
  %76 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %77 = icmp ne %struct.comedi_driver* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @try_module_get(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %92

85:                                               ; preds = %78
  %86 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %87 = call i32 @comedi_report_boards(%struct.comedi_driver* %86)
  %88 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %89 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @module_put(i32 %90)
  br label %92

92:                                               ; preds = %85, %84
  %93 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %94 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %93, i32 0, i32 3
  %95 = load %struct.comedi_driver*, %struct.comedi_driver** %94, align 8
  store %struct.comedi_driver* %95, %struct.comedi_driver** %6, align 8
  br label %75

96:                                               ; preds = %75
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %7, align 4
  br label %166

99:                                               ; preds = %70
  %100 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %101 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %100, i32 0, i32 1
  %102 = load i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)*, i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)** %101, align 8
  %103 = icmp ne i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)* %102, null
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %106 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %109 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @dev_warn(i32 %107, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @module_put(i32 %114)
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %166

118:                                              ; preds = %99
  %119 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 1
  store %struct.comedi_driver* %119, %struct.comedi_driver** %121, align 8
  %122 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %123 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %128 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i8**
  %131 = load i8*, i8** %130, align 8
  br label %138

132:                                              ; preds = %118
  %133 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 1
  %135 = load %struct.comedi_driver*, %struct.comedi_driver** %134, align 8
  %136 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  br label %138

138:                                              ; preds = %132, %126
  %139 = phi i8* [ %131, %126 ], [ %137, %132 ]
  %140 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %141 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %143 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %142, i32 0, i32 1
  %144 = load i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)*, i32 (%struct.comedi_device.0*, %struct.comedi_devconfig*)** %143, align 8
  %145 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %146 = bitcast %struct.comedi_device* %145 to %struct.comedi_device.0*
  %147 = load %struct.comedi_devconfig.1*, %struct.comedi_devconfig.1** %5, align 8
  %148 = bitcast %struct.comedi_devconfig.1* %147 to %struct.comedi_devconfig*
  %149 = call i32 %144(%struct.comedi_device.0* %146, %struct.comedi_devconfig* %148)
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %138
  %153 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %154 = call i32 @comedi_device_postconfig(%struct.comedi_device* %153)
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %152, %138
  %156 = load i32, i32* %7, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %160 = call i32 @comedi_device_detach(%struct.comedi_device* %159)
  %161 = load %struct.comedi_driver*, %struct.comedi_driver** %6, align 8
  %162 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @module_put(i32 %163)
  br label %165

165:                                              ; preds = %158, %155
  br label %166

166:                                              ; preds = %165, %104, %96
  %167 = call i32 @mutex_unlock(i32* @comedi_drivers_list_lock)
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %15
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i64 @comedi_recognize(%struct.comedi_driver*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @comedi_report_boards(%struct.comedi_driver*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

declare dso_local i32 @comedi_device_postconfig(%struct.comedi_device*) #1

declare dso_local i32 @comedi_device_detach(%struct.comedi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
