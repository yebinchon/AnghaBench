; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_chardev.c_ptp_set_pinfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_chardev.c_ptp_set_pinfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock = type { %struct.ptp_clock_info* }
%struct.ptp_clock_info = type { i32, i32, i32, i64 (%struct.ptp_clock_info*, i32, i32, i32)*, %struct.ptp_pin_desc* }
%struct.ptp_pin_desc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"driver cannot use function %u on pin %u\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptp_set_pinfunc(%struct.ptp_clock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ptp_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ptp_clock_info*, align 8
  %11 = alloca %struct.ptp_pin_desc*, align 8
  %12 = alloca %struct.ptp_pin_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.ptp_clock* %0, %struct.ptp_clock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ptp_clock*, %struct.ptp_clock** %6, align 8
  %15 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %14, i32 0, i32 0
  %16 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %15, align 8
  store %struct.ptp_clock_info* %16, %struct.ptp_clock_info** %10, align 8
  store %struct.ptp_pin_desc* null, %struct.ptp_pin_desc** %11, align 8
  %17 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %18 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %17, i32 0, i32 4
  %19 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %19, i64 %21
  store %struct.ptp_pin_desc* %22, %struct.ptp_pin_desc** %12, align 8
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %59, %4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %26 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %23
  %30 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %31 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %30, i32 0, i32 4
  %32 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %32, i64 %34
  %36 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  %41 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %42 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %41, i32 0, i32 4
  %43 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %43, i64 %45
  %47 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %53 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %52, i32 0, i32 4
  %54 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %54, i64 %56
  store %struct.ptp_pin_desc* %57, %struct.ptp_pin_desc** %11, align 8
  br label %62

58:                                               ; preds = %40, %29
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %23

62:                                               ; preds = %51, %23
  %63 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %11, align 8
  %64 = icmp ne %struct.ptp_pin_desc* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %146

70:                                               ; preds = %65, %62
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %100 [
    i32 130, label %72
    i32 131, label %73
    i32 129, label %83
    i32 128, label %93
  ]

72:                                               ; preds = %70
  br label %103

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %76 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp uge i32 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %146

82:                                               ; preds = %73
  br label %103

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %86 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp uge i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %146

92:                                               ; preds = %83
  br label %103

93:                                               ; preds = %70
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %146

99:                                               ; preds = %93
  br label %103

100:                                              ; preds = %70
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %146

103:                                              ; preds = %99, %92, %82, %72
  %104 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %105 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %104, i32 0, i32 3
  %106 = load i64 (%struct.ptp_clock_info*, i32, i32, i32)*, i64 (%struct.ptp_clock_info*, i32, i32, i32)** %105, align 8
  %107 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i64 %106(%struct.ptp_clock_info* %107, i32 %108, i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %103
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* @EOPNOTSUPP, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %146

119:                                              ; preds = %103
  %120 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %11, align 8
  %121 = icmp ne %struct.ptp_pin_desc* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %123, i32 %124, i32 %125)
  %127 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %11, align 8
  %128 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %127, i32 0, i32 0
  store i32 130, i32* %128, align 4
  %129 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %11, align 8
  %130 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %122, %119
  %132 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %10, align 8
  %133 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %12, align 8
  %134 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %12, align 8
  %137 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ptp_disable_pinfunc(%struct.ptp_clock_info* %132, i32 %135, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %12, align 8
  %142 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.ptp_pin_desc*, %struct.ptp_pin_desc** %12, align 8
  %145 = getelementptr inbounds %struct.ptp_pin_desc, %struct.ptp_pin_desc* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %131, %113, %100, %96, %89, %79, %69
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ptp_disable_pinfunc(%struct.ptp_clock_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
