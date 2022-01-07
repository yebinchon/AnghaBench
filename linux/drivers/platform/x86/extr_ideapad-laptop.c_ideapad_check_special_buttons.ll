; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_check_special_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_check_special_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VPCCMD_R_SPECIAL_BUTTONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown special button: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*)* @ideapad_check_special_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_check_special_buttons(%struct.ideapad_private* %0) #0 {
  %2 = alloca %struct.ideapad_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ideapad_private* %0, %struct.ideapad_private** %2, align 8
  %5 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %6 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VPCCMD_R_SPECIAL_BUTTONS, align 4
  %11 = call i32 @read_ec_data(i32 %9, i32 %10, i64* %4)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %32, %1
  %13 = load i64, i64* %3, align 8
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @test_bit(i64 %16, i64* %4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  switch i64 %20, label %27 [
    i64 0, label %21
    i64 6, label %21
    i64 1, label %24
  ]

21:                                               ; preds = %19, %19
  %22 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %23 = call i32 @ideapad_input_report(%struct.ideapad_private* %22, i32 65)
  br label %30

24:                                               ; preds = %19
  %25 = load %struct.ideapad_private*, %struct.ideapad_private** %2, align 8
  %26 = call i32 @ideapad_input_report(%struct.ideapad_private* %25, i32 64)
  br label %30

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %27, %24, %21
  br label %31

31:                                               ; preds = %30, %15
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %12

35:                                               ; preds = %12
  ret void
}

declare dso_local i32 @read_ec_data(i32, i32, i64*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i32 @ideapad_input_report(%struct.ideapad_private*, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
