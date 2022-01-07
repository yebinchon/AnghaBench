; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_input_fujitsu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-tablet.c_input_fujitsu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.input_dev*, %struct.TYPE_7__ }
%struct.input_dev = type { i8*, i8*, i32, i32, i32, i64*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { i64* }

@ENOMEM = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@fujitsu = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@EV_REP = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i64 0, align 8
@EV_SW = common dso_local global i32 0, align 4
@SW_DOCK = common dso_local global i64 0, align 8
@SW_TABLET_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i8*)* @input_fujitsu_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_fujitsu_setup(%struct.device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %11, %struct.input_dev** %8, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %13 = icmp ne %struct.input_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %103

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.device* %18, %struct.device** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %24 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @BUS_HOST, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %33 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 5940, i32* %34, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 1, i32* %37, align 4
  %38 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  store i32 257, i32* %40, align 8
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1, i32 0), align 8
  %42 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 5
  store i64* %41, i64** %43, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 2
  store i32 8, i32* %45, align 8
  %46 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1, i32 0), align 8
  %47 = call i32 @ARRAY_SIZE(i64* %46)
  %48 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EV_REP, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @__set_bit(i32 %50, i32 %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %77, %17
  %56 = load i32, i32* %10, align 4
  %57 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1, i32 0), align 8
  %58 = call i32 @ARRAY_SIZE(i64* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1, i32 0), align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %69 = load i32, i32* @EV_KEY, align 4
  %70 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 1, i32 0), align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @input_set_capability(%struct.input_dev* %68, i32 %69, i64 %74)
  br label %76

76:                                               ; preds = %67, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %82 = load i32, i32* @EV_MSC, align 4
  %83 = load i64, i64* @MSC_SCAN, align 8
  %84 = call i32 @input_set_capability(%struct.input_dev* %81, i32 %82, i64 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = load i32, i32* @EV_SW, align 4
  %87 = load i64, i64* @SW_DOCK, align 8
  %88 = call i32 @input_set_capability(%struct.input_dev* %85, i32 %86, i64 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %90 = load i32, i32* @EV_SW, align 4
  %91 = load i64, i64* @SW_TABLET_MODE, align 8
  %92 = call i32 @input_set_capability(%struct.input_dev* %89, i32 %90, i64 %91)
  %93 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %94 = call i32 @input_register_device(%struct.input_dev* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %80
  %98 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %99 = call i32 @input_free_device(%struct.input_dev* %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %103

101:                                              ; preds = %80
  %102 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %102, %struct.input_dev** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @fujitsu, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %97, %14
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
