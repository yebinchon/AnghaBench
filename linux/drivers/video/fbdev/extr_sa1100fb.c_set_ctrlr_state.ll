; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_set_ctrlr_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_set_ctrlr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i64, i32 }

@C_STARTUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*, i64)* @set_ctrlr_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ctrlr_state(%struct.sa1100fb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.sa1100fb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @C_STARTUP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 128
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 131, i64* %4, align 8
  br label %19

19:                                               ; preds = %18, %15, %2
  %20 = load i64, i64* %4, align 8
  switch i64 %20, label %92 [
    i64 133, label %21
    i64 132, label %34
    i64 134, label %34
    i64 130, label %52
    i64 128, label %61
    i64 129, label %72
    i64 131, label %77
  ]

21:                                               ; preds = %19
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 134
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = icmp ne i64 %25, 132
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %32 = call i32 @sa1100fb_disable_controller(%struct.sa1100fb_info* %31)
  br label %33

33:                                               ; preds = %27, %24, %21
  br label %92

34:                                               ; preds = %19, %19
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 134
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %42 = call i32 @__sa1100fb_backlight_power(%struct.sa1100fb_info* %41, i32 0)
  %43 = load i64, i64* %5, align 8
  %44 = icmp ne i64 %43, 133
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %47 = call i32 @sa1100fb_disable_controller(%struct.sa1100fb_info* %46)
  br label %48

48:                                               ; preds = %45, %37
  %49 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %50 = call i32 @__sa1100fb_lcd_power(%struct.sa1100fb_info* %49, i32 0)
  br label %51

51:                                               ; preds = %48, %34
  br label %92

52:                                               ; preds = %19
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %53, 133
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %57 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %56, i32 0, i32 0
  store i64 131, i64* %57, align 8
  %58 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %59 = call i32 @sa1100fb_enable_controller(%struct.sa1100fb_info* %58)
  br label %60

60:                                               ; preds = %55, %52
  br label %92

61:                                               ; preds = %19
  %62 = load i64, i64* %5, align 8
  %63 = icmp eq i64 %62, 131
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %66 = call i32 @sa1100fb_disable_controller(%struct.sa1100fb_info* %65)
  %67 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %68 = call i32 @sa1100fb_setup_gpio(%struct.sa1100fb_info* %67)
  %69 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %70 = call i32 @sa1100fb_enable_controller(%struct.sa1100fb_info* %69)
  br label %71

71:                                               ; preds = %64, %61
  br label %92

72:                                               ; preds = %19
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 132
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %92

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %19, %76
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 131
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %81, i32 0, i32 0
  store i64 131, i64* %82, align 8
  %83 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %84 = call i32 @sa1100fb_setup_gpio(%struct.sa1100fb_info* %83)
  %85 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %86 = call i32 @__sa1100fb_lcd_power(%struct.sa1100fb_info* %85, i32 1)
  %87 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %88 = call i32 @sa1100fb_enable_controller(%struct.sa1100fb_info* %87)
  %89 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %90 = call i32 @__sa1100fb_backlight_power(%struct.sa1100fb_info* %89, i32 1)
  br label %91

91:                                               ; preds = %80, %77
  br label %92

92:                                               ; preds = %19, %91, %75, %71, %60, %51, %33
  %93 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %3, align 8
  %94 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sa1100fb_disable_controller(%struct.sa1100fb_info*) #1

declare dso_local i32 @__sa1100fb_backlight_power(%struct.sa1100fb_info*, i32) #1

declare dso_local i32 @__sa1100fb_lcd_power(%struct.sa1100fb_info*, i32) #1

declare dso_local i32 @sa1100fb_enable_controller(%struct.sa1100fb_info*) #1

declare dso_local i32 @sa1100fb_setup_gpio(%struct.sa1100fb_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
