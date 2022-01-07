; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_sysfs.c_wakealarm_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_sysfs.c_wakealarm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rtc_wkalrm = type { i32, i32 }
%struct.rtc_device = type { i32 }

@EBUSY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wakealarm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wakealarm_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rtc_wkalrm, align 4
  %15 = alloca %struct.rtc_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %13, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.rtc_device* @to_rtc_device(%struct.device* %18)
  store %struct.rtc_device* %19, %struct.rtc_device** %15, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.rtc_device*, %struct.rtc_device** %15, align 8
  %21 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %22 = call i64 @rtc_read_time(%struct.rtc_device* %20, i32* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %5, align 8
  br label %119

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %29 = call i64 @rtc_tm_to_time64(i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 61
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i8*, i8** %16, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %16, align 8
  store i64 1, i64* %13, align 8
  br label %46

45:                                               ; preds = %35
  store i32 1, i32* %17, align 4
  br label %46

46:                                               ; preds = %45, %42
  br label %47

47:                                               ; preds = %46, %27
  %48 = load i8*, i8** %16, align 8
  %49 = call i64 @kstrtos64(i8* %48, i32 0, i64* %12)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %5, align 8
  br label %119

54:                                               ; preds = %47
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %101

68:                                               ; preds = %65, %61
  %69 = load %struct.rtc_device*, %struct.rtc_device** %15, align 8
  %70 = call i64 @rtc_read_alarm(%struct.rtc_device* %69, %struct.rtc_wkalrm* %14)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* %10, align 8
  store i64 %74, i64* %5, align 8
  br label %119

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load i64, i64* %13, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %84 = call i64 @rtc_tm_to_time64(i32* %83)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %12, align 8
  br label %91

88:                                               ; preds = %79
  %89 = load i64, i64* @EBUSY, align 8
  %90 = sub nsw i64 0, %89
  store i64 %90, i64* %5, align 8
  br label %119

91:                                               ; preds = %82
  br label %99

92:                                               ; preds = %75
  %93 = load i64, i64* %13, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i64, i64* @EINVAL, align 8
  %97 = sub nsw i64 0, %96
  store i64 %97, i64* %5, align 8
  br label %119

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %91
  %100 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 0
  store i32 1, i32* %100, align 4
  br label %105

101:                                              ; preds = %65
  %102 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 0
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %103, 300
  store i64 %104, i64* %12, align 8
  br label %105

105:                                              ; preds = %101, %99
  %106 = load i64, i64* %12, align 8
  %107 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %14, i32 0, i32 1
  %108 = call i32 @rtc_time64_to_tm(i64 %106, i32* %107)
  %109 = load %struct.rtc_device*, %struct.rtc_device** %15, align 8
  %110 = call i64 @rtc_set_alarm(%struct.rtc_device* %109, %struct.rtc_wkalrm* %14)
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i64, i64* %10, align 8
  br label %117

115:                                              ; preds = %105
  %116 = load i64, i64* %9, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %117, %95, %88, %73, %52, %25
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local %struct.rtc_device* @to_rtc_device(%struct.device*) #1

declare dso_local i64 @rtc_read_time(%struct.rtc_device*, i32*) #1

declare dso_local i64 @rtc_tm_to_time64(i32*) #1

declare dso_local i64 @kstrtos64(i8*, i32, i64*) #1

declare dso_local i64 @rtc_read_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

declare dso_local i32 @rtc_time64_to_tm(i64, i32*) #1

declare dso_local i64 @rtc_set_alarm(%struct.rtc_device*, %struct.rtc_wkalrm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
