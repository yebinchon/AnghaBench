; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab8500.c_ab8500_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.ab8500_regulator_info = type { %struct.TYPE_4__*, i64, i64, %struct.TYPE_3__, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32, %struct.ab8500_regulator_info* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@shared_mode_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't set regulator mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"%s-set_mode (bank, reg, mask, value): 0x%x, 0x%x, 0x%x, 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @ab8500_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ab8500_regulator_info*, align 8
  %13 = alloca %struct.ab8500_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %14)
  store %struct.ab8500_regulator_info* %15, %struct.ab8500_regulator_info** %12, align 8
  %16 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %17 = icmp eq %struct.ab8500_regulator_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %20 = call i32 @rdev_get_dev(%struct.regulator_dev* %19)
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %184

24:                                               ; preds = %2
  %25 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %26 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %31 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %30, i32 0, i32 13
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %34 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %33, i32 0, i32 12
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %37 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %41 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %40, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %44 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %43, i32 0, i32 10
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %47 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %39, %29
  %50 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %51 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @mutex_lock(i32* @shared_mode_mutex)
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %5, align 4
  switch i32 %57, label %115 [
    i32 128, label %58
    i32 129, label %78
  ]

58:                                               ; preds = %56
  %59 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %60 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = icmp ne %struct.TYPE_4__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %66 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %71 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %75 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %118

78:                                               ; preds = %56
  %79 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %80 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = icmp ne %struct.TYPE_4__* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %78
  %84 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %85 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %87, align 8
  store %struct.ab8500_regulator_info* %88, %struct.ab8500_regulator_info** %13, align 8
  %89 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %13, align 8
  %90 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %83
  %96 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %97 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %175

100:                                              ; preds = %83
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %78
  %102 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %103 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %108 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %10, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %112 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %110, %106
  br label %118

115:                                              ; preds = %56
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %175

118:                                              ; preds = %114, %77
  %119 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %120 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %125 = call i64 @ab8500_regulator_is_enabled(%struct.regulator_dev* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %123, %118
  %128 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %129 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @abx500_mask_and_set_register_interruptible(i32 %130, i64 %131, i64 %132, i64 %133, i64 %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %127
  %139 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %140 = call i32 @rdev_get_dev(%struct.regulator_dev* %139)
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %175

142:                                              ; preds = %127
  %143 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %144 = call i32 @rdev_get_dev(%struct.regulator_dev* %143)
  %145 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %146 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %10, align 8
  %153 = call i32 @dev_vdbg(i32 %144, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %148, i64 %149, i64 %150, i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %142, %123
  %155 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %156 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %154
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %162 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %154
  %164 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %165 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = icmp ne %struct.TYPE_4__* %166, null
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %171 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  store i32 %169, i32* %173, align 8
  br label %174

174:                                              ; preds = %168, %163
  br label %175

175:                                              ; preds = %174, %138, %115, %95
  %176 = load %struct.ab8500_regulator_info*, %struct.ab8500_regulator_info** %12, align 8
  %177 = getelementptr inbounds %struct.ab8500_regulator_info, %struct.ab8500_regulator_info* %176, i32 0, i32 0
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = icmp ne %struct.TYPE_4__* %178, null
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call i32 @mutex_unlock(i32* @shared_mode_mutex)
  br label %182

182:                                              ; preds = %180, %175
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %3, align 4
  br label %184

184:                                              ; preds = %182, %18
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.ab8500_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rdev_get_dev(%struct.regulator_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ab8500_regulator_is_enabled(%struct.regulator_dev*) #1

declare dso_local i32 @abx500_mask_and_set_register_interruptible(i32, i64, i64, i64, i64) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
