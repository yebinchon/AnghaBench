; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_step_wise.c_get_target_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_step_wise.c_get_target_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_instance = type { i64, i64, i64, i32, %struct.thermal_cooling_device* }
%struct.thermal_cooling_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.thermal_cooling_device*, i64*)* }

@.str = private unnamed_addr constant [15 x i8] c"cur_state=%ld\0A\00", align 1
@THERMAL_NO_TARGET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.thermal_instance*, i32, i32)* @get_target_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_target_state(%struct.thermal_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.thermal_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thermal_cooling_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.thermal_instance* %0, %struct.thermal_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %12 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %11, i32 0, i32 4
  %13 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %12, align 8
  store %struct.thermal_cooling_device* %13, %struct.thermal_cooling_device** %8, align 8
  %14 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %15 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.thermal_cooling_device*, i64*)*, i32 (%struct.thermal_cooling_device*, i64*)** %17, align 8
  %19 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %20 = call i32 %18(%struct.thermal_cooling_device* %19, i64* %9)
  %21 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %22 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %25 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %29 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %68, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  %38 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %39 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp uge i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %44 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  br label %62

46:                                               ; preds = %35
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  %49 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %50 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %55 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  br label %60

57:                                               ; preds = %46
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi i64 [ %56, %53 ], [ %59, %57 ]
  br label %62

62:                                               ; preds = %60, %42
  %63 = phi i64 [ %45, %42 ], [ %61, %60 ]
  store i64 %63, i64* %10, align 8
  br label %66

64:                                               ; preds = %32
  %65 = load i64, i64* @THERMAL_NO_TARGET, align 8
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %4, align 8
  br label %157

68:                                               ; preds = %3
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %154 [
    i32 128, label %70
    i32 129, label %99
    i32 131, label %107
    i32 130, label %137
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %70
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %76 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = add i64 %80, 1
  br label %86

82:                                               ; preds = %73
  %83 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %84 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i64 [ %81, %79 ], [ %85, %82 ]
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %90 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %95 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %93, %86
  br label %98

98:                                               ; preds = %97, %70
  br label %155

99:                                               ; preds = %68
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %104 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %102, %99
  br label %155

107:                                              ; preds = %68
  %108 = load i64, i64* %9, align 8
  %109 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %110 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ule i64 %108, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* @THERMAL_NO_TARGET, align 8
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %116, %113
  br label %136

119:                                              ; preds = %107
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %135, label %122

122:                                              ; preds = %119
  %123 = load i64, i64* %9, align 8
  %124 = sub i64 %123, 1
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %127 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ugt i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %132 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %130, %122
  br label %135

135:                                              ; preds = %134, %119
  br label %136

136:                                              ; preds = %135, %118
  br label %155

137:                                              ; preds = %68
  %138 = load i64, i64* %9, align 8
  %139 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %140 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = load i64, i64* @THERMAL_NO_TARGET, align 8
  store i64 %147, i64* %10, align 8
  br label %148

148:                                              ; preds = %146, %143
  br label %153

149:                                              ; preds = %137
  %150 = load %struct.thermal_instance*, %struct.thermal_instance** %5, align 8
  %151 = getelementptr inbounds %struct.thermal_instance, %struct.thermal_instance* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %149, %148
  br label %155

154:                                              ; preds = %68
  br label %155

155:                                              ; preds = %154, %153, %136, %106, %98
  %156 = load i64, i64* %10, align 8
  store i64 %156, i64* %4, align 8
  br label %157

157:                                              ; preds = %155, %66
  %158 = load i64, i64* %4, align 8
  ret i64 %158
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
