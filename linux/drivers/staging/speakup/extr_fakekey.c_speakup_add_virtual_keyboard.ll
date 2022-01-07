; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_fakekey.c_speakup_add_virtual_keyboard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_fakekey.c_speakup_add_virtual_keyboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8*, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@virt_keyboard = common dso_local global %struct.TYPE_9__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Speakup\00", align 1
@BUS_VIRTUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"speakup/input0\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speakup_add_virtual_keyboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_9__* (...) @input_allocate_device()
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** @virt_keyboard, align 8
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %5 = icmp ne %struct.TYPE_9__* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %40

9:                                                ; preds = %0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* @BUS_VIRTUAL, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @EV_KEY, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @__set_bit(i32 %21, i32 %24)
  %26 = load i32, i32* @KEY_DOWN, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @__set_bit(i32 %26, i32 %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %32 = call i32 @input_register_device(%struct.TYPE_9__* %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %9
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @virt_keyboard, align 8
  %37 = call i32 @input_free_device(%struct.TYPE_9__* %36)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** @virt_keyboard, align 8
  br label %38

38:                                               ; preds = %35, %9
  %39 = load i32, i32* %2, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %38, %6
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_9__* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_9__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
