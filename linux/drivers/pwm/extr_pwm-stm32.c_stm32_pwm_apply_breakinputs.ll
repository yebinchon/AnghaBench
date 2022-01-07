; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply_breakinputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_apply_breakinputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_pwm = type { i32 }
%struct.device_node = type { i32 }
%struct.stm32_breakinput = type { i32, i32, i32 }

@MAX_BREAKINPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"st,breakinput\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_pwm*, %struct.device_node*)* @stm32_pwm_apply_breakinputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_apply_breakinputs(%struct.stm32_pwm* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_pwm*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stm32_pwm* %0, %struct.stm32_pwm** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %13 = load i32, i32* @MAX_BREAKINPUT, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.stm32_breakinput, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 @of_property_count_elems_of_size(%struct.device_node* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 12)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MAX_BREAKINPUT, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %77

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 12
  %33 = udiv i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = bitcast %struct.stm32_breakinput* %16 to i32*
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @of_property_read_u32_array(%struct.device_node* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %77

43:                                               ; preds = %29
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %72, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %75

54:                                               ; preds = %52
  %55 = load %struct.stm32_pwm*, %struct.stm32_pwm** %4, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %16, i64 %57
  %59 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %16, i64 %62
  %64 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %16, i64 %67
  %69 = getelementptr inbounds %struct.stm32_breakinput, %struct.stm32_breakinput* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @stm32_pwm_set_breakinput(%struct.stm32_pwm* %55, i32 %60, i32 %65, i32 %70)
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %54
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %44

75:                                               ; preds = %52
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %75, %41, %26, %21
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #2

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #2

declare dso_local i32 @stm32_pwm_set_breakinput(%struct.stm32_pwm*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
