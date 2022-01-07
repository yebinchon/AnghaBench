; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_blank_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/vermilion/extr_vermilion.c_vmlfb_blank_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vml_info = type { i32, i32, %struct.vml_par* }
%struct.vml_par = type { i32 }

@VML_PIPEACONF = common dso_local global i32 0, align 4
@VML_PIPE_FORCE_BORDER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vml_info*)* @vmlfb_blank_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmlfb_blank_locked(%struct.vml_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vml_info*, align 8
  %4 = alloca %struct.vml_par*, align 8
  %5 = alloca i32, align 4
  store %struct.vml_info* %0, %struct.vml_info** %3, align 8
  %6 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %7 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %6, i32 0, i32 2
  %8 = load %struct.vml_par*, %struct.vml_par** %7, align 8
  store %struct.vml_par* %8, %struct.vml_par** %4, align 8
  %9 = load %struct.vml_par*, %struct.vml_par** %4, align 8
  %10 = load i32, i32* @VML_PIPEACONF, align 4
  %11 = call i32 @VML_READ32(%struct.vml_par* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %13 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %70 [
    i32 129, label %15
    i32 131, label %34
    i32 128, label %52
    i32 132, label %52
    i32 130, label %61
  ]

15:                                               ; preds = %1
  %16 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %17 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %22 = call i32 @vmlfb_set_par_locked(%struct.vml_info* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.vml_par*, %struct.vml_par** %4, align 8
  %25 = load i32, i32* @VML_PIPEACONF, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @VML_PIPE_FORCE_BORDER, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @VML_WRITE32(%struct.vml_par* %24, i32 %25, i32 %29)
  %31 = load %struct.vml_par*, %struct.vml_par** %4, align 8
  %32 = load i32, i32* @VML_PIPEACONF, align 4
  %33 = call i32 @VML_READ32(%struct.vml_par* %31, i32 %32)
  br label %73

34:                                               ; preds = %1
  %35 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %36 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %41 = call i32 @vmlfb_set_par_locked(%struct.vml_info* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.vml_par*, %struct.vml_par** %4, align 8
  %44 = load i32, i32* @VML_PIPEACONF, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @VML_PIPE_FORCE_BORDER, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @VML_WRITE32(%struct.vml_par* %43, i32 %44, i32 %47)
  %49 = load %struct.vml_par*, %struct.vml_par** %4, align 8
  %50 = load i32, i32* @VML_PIPEACONF, align 4
  %51 = call i32 @VML_READ32(%struct.vml_par* %49, i32 %50)
  br label %73

52:                                               ; preds = %1, %1
  %53 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %54 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %59 = call i32 @vmlfb_disable_pipe(%struct.vml_info* %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %73

61:                                               ; preds = %1
  %62 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %63 = getelementptr inbounds %struct.vml_info, %struct.vml_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load %struct.vml_info*, %struct.vml_info** %3, align 8
  %68 = call i32 @vmlfb_disable_pipe(%struct.vml_info* %67)
  br label %69

69:                                               ; preds = %66, %61
  br label %73

70:                                               ; preds = %1
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %69, %60, %42, %23
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @VML_READ32(%struct.vml_par*, i32) #1

declare dso_local i32 @vmlfb_set_par_locked(%struct.vml_info*) #1

declare dso_local i32 @VML_WRITE32(%struct.vml_par*, i32, i32) #1

declare dso_local i32 @vmlfb_disable_pipe(%struct.vml_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
