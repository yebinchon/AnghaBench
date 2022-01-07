; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_get_lightbar_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_lightbar.c_get_lightbar_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cros_ec_dev = type { i32 }
%struct.ec_params_lightbar = type { i32 }
%struct.ec_response_lightbar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cros_ec_command = type { i32, i64 }

@LIGHTBAR_CMD_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cros_ec_dev*, i32*, i32*)* @get_lightbar_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_lightbar_version(%struct.cros_ec_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cros_ec_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ec_params_lightbar*, align 8
  %9 = alloca %struct.ec_response_lightbar*, align 8
  %10 = alloca %struct.cros_ec_command*, align 8
  %11 = alloca i32, align 4
  store %struct.cros_ec_dev* %0, %struct.cros_ec_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %13 = call %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev* %12)
  store %struct.cros_ec_command* %13, %struct.cros_ec_command** %10, align 8
  %14 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %15 = icmp ne %struct.cros_ec_command* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %19 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ec_params_lightbar*
  store %struct.ec_params_lightbar* %21, %struct.ec_params_lightbar** %8, align 8
  %22 = load i32, i32* @LIGHTBAR_CMD_VERSION, align 4
  %23 = load %struct.ec_params_lightbar*, %struct.ec_params_lightbar** %8, align 8
  %24 = getelementptr inbounds %struct.ec_params_lightbar, %struct.ec_params_lightbar* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %5, align 8
  %26 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %29 = call i32 @cros_ec_cmd_xfer(i32 %27, %struct.cros_ec_command* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  store i32 0, i32* %11, align 4
  br label %72

33:                                               ; preds = %17
  %34 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %35 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %71 [
    i32 129, label %37
    i32 128, label %48
  ]

37:                                               ; preds = %33
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32*, i32** %6, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  store i32 1, i32* %11, align 4
  br label %72

48:                                               ; preds = %33
  %49 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %50 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.ec_response_lightbar*
  store %struct.ec_response_lightbar* %52, %struct.ec_response_lightbar** %9, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.ec_response_lightbar*, %struct.ec_response_lightbar** %9, align 8
  %57 = getelementptr inbounds %struct.ec_response_lightbar, %struct.ec_response_lightbar* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %48
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.ec_response_lightbar*, %struct.ec_response_lightbar** %9, align 8
  %66 = getelementptr inbounds %struct.ec_response_lightbar, %struct.ec_response_lightbar* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %61
  store i32 1, i32* %11, align 4
  br label %72

71:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %70, %47, %32
  %73 = load %struct.cros_ec_command*, %struct.cros_ec_command** %10, align 8
  %74 = call i32 @kfree(%struct.cros_ec_command* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %16
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.cros_ec_command* @alloc_lightbar_cmd_msg(%struct.cros_ec_dev*) #1

declare dso_local i32 @cros_ec_cmd_xfer(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
