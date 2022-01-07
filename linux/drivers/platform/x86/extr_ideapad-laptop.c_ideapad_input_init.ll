; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.input_dev*, %struct.TYPE_5__* }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Ideapad extra buttons\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ideapad/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@ideapad_keymap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to setup input device keymap\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ideapad_private*)* @ideapad_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ideapad_input_init(%struct.ideapad_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ideapad_private*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ideapad_private* %0, %struct.ideapad_private** %3, align 8
  %6 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %6, %struct.input_dev** %4, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %8 = icmp ne %struct.input_dev* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %50

12:                                               ; preds = %1
  %13 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @BUS_HOST, align 4
  %18 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %19 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %22 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %29 = load i32, i32* @ideapad_keymap, align 4
  %30 = call i32 @sparse_keymap_setup(%struct.input_dev* %28, i32 %29, i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %12
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %46

35:                                               ; preds = %12
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = call i32 @input_register_device(%struct.input_dev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %45 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %44, i32 0, i32 0
  store %struct.input_dev* %43, %struct.input_dev** %45, align 8
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %40, %33
  %47 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %48 = call i32 @input_free_device(%struct.input_dev* %47)
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %42, %9
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @sparse_keymap_setup(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
