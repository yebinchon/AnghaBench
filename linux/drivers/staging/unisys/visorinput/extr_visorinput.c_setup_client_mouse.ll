; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_setup_client_mouse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorinput/extr_visorinput.c_setup_client_mouse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i8*, i8*, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"visor Mouse\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"visormou:input0\00", align 1
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@PIXELS_ACROSS_DEFAULT = common dso_local global i32 0, align 4
@PIXELS_DOWN_DEFAULT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@visorinput_open = common dso_local global i32 0, align 4
@visorinput_close = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.input_dev* (i8*, i32, i32)* @setup_client_mouse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.input_dev* @setup_client_mouse(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.input_dev*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %9, %struct.input_dev** %8, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %11 = icmp ne %struct.input_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.input_dev* null, %struct.input_dev** %4, align 8
  br label %87

13:                                               ; preds = %3
  %14 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = load i32, i32* @BUS_VIRTUAL, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i32 %18, i32* %21, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 6
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 2, i32* %27, align 4
  %28 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %29 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 256, i32* %30, align 4
  %31 = load i32, i32* @EV_KEY, align 4
  %32 = call i32 @BIT_MASK(i32 %31)
  %33 = load i32, i32* @EV_ABS, align 4
  %34 = call i32 @BIT_MASK(i32 %33)
  %35 = or i32 %32, %34
  %36 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @BTN_LEFT, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @set_bit(i32 %40, i32 %43)
  %45 = load i32, i32* @BTN_RIGHT, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @set_bit(i32 %45, i32 %48)
  %50 = load i32, i32* @BTN_MIDDLE, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %13
  %58 = load i32, i32* @PIXELS_ACROSS_DEFAULT, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %13
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @PIXELS_DOWN_DEFAULT, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %66 = load i32, i32* @ABS_X, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @input_set_abs_params(%struct.input_dev* %65, i32 %66, i32 0, i32 %67, i32 0, i32 0)
  %69 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %70 = load i32, i32* @ABS_Y, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @input_set_abs_params(%struct.input_dev* %69, i32 %70, i32 0, i32 %71, i32 0, i32 0)
  %73 = load i32, i32* @visorinput_open, align 4
  %74 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %75 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @visorinput_close, align 4
  %77 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @input_set_drvdata(%struct.input_dev* %79, i8* %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %83 = load i32, i32* @EV_REL, align 4
  %84 = load i32, i32* @REL_WHEEL, align 4
  %85 = call i32 @input_set_capability(%struct.input_dev* %82, i32 %83, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %86, %struct.input_dev** %4, align 8
  br label %87

87:                                               ; preds = %64, %12
  %88 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  ret %struct.input_dev* %88
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, i8*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
