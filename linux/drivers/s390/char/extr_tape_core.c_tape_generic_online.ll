; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tape_core.c_tape_generic_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_device = type { i64, i64, %struct.tape_discipline*, i32 }
%struct.tape_discipline = type { i32 (%struct.tape_device.0*)*, i32, i32 (%struct.tape_device.1*)* }
%struct.tape_device.0 = type opaque
%struct.tape_device.1 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"tape_enable_device(%p, %p)\0A\00", align 1
@TS_INIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Tapestate not INIT (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tape_long_busy_timeout = common dso_local global i32 0, align 4
@TS_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"(%08x): Drive set online\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tape_generic_online(%struct.tape_device* %0, %struct.tape_discipline* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tape_device*, align 8
  %5 = alloca %struct.tape_discipline*, align 8
  %6 = alloca i32, align 4
  store %struct.tape_device* %0, %struct.tape_device** %4, align 8
  store %struct.tape_discipline* %1, %struct.tape_discipline** %5, align 8
  %7 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %8 = ptrtoint %struct.tape_device* %7 to i64
  %9 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %10 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %8, %struct.tape_discipline* %9)
  %11 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %12 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TS_INIT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %18 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %25 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %24, i32 0, i32 3
  %26 = load i32, i32* @tape_long_busy_timeout, align 4
  %27 = call i32 @timer_setup(i32* %25, i32 %26, i32 0)
  %28 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %29 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %30 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %29, i32 0, i32 2
  store %struct.tape_discipline* %28, %struct.tape_discipline** %30, align 8
  %31 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %32 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @try_module_get(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %89

39:                                               ; preds = %23
  %40 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %41 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %40, i32 0, i32 0
  %42 = load i32 (%struct.tape_device.0*)*, i32 (%struct.tape_device.0*)** %41, align 8
  %43 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %44 = bitcast %struct.tape_device* %43 to %struct.tape_device.0*
  %45 = call i32 %42(%struct.tape_device.0* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %83

49:                                               ; preds = %39
  %50 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %51 = call i32 @tape_assign_minor(%struct.tape_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %72

55:                                               ; preds = %49
  %56 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %57 = call i32 @tapechar_setup_device(%struct.tape_device* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %69

61:                                               ; preds = %55
  %62 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %63 = load i32, i32* @TS_UNUSED, align 4
  %64 = call i32 @tape_state_set(%struct.tape_device* %62, i32 %63)
  %65 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %66 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, i64, ...) @DBF_LH(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  store i32 0, i32* %3, align 4
  br label %89

69:                                               ; preds = %60
  %70 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %71 = call i32 @tape_remove_minor(%struct.tape_device* %70)
  br label %72

72:                                               ; preds = %69, %54
  %73 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %74 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %73, i32 0, i32 2
  %75 = load %struct.tape_discipline*, %struct.tape_discipline** %74, align 8
  %76 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %75, i32 0, i32 2
  %77 = load i32 (%struct.tape_device.1*)*, i32 (%struct.tape_device.1*)** %76, align 8
  %78 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %79 = bitcast %struct.tape_device* %78 to %struct.tape_device.1*
  %80 = call i32 %77(%struct.tape_device.1* %79)
  %81 = load %struct.tape_device*, %struct.tape_device** %4, align 8
  %82 = getelementptr inbounds %struct.tape_device, %struct.tape_device* %81, i32 0, i32 2
  store %struct.tape_discipline* null, %struct.tape_discipline** %82, align 8
  br label %83

83:                                               ; preds = %72, %48
  %84 = load %struct.tape_discipline*, %struct.tape_discipline** %5, align 8
  %85 = getelementptr inbounds %struct.tape_discipline, %struct.tape_discipline* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @module_put(i32 %86)
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %61, %36, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DBF_LH(i32, i8*, i64, ...) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @tape_assign_minor(%struct.tape_device*) #1

declare dso_local i32 @tapechar_setup_device(%struct.tape_device*) #1

declare dso_local i32 @tape_state_set(%struct.tape_device*, i32) #1

declare dso_local i32 @tape_remove_minor(%struct.tape_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
