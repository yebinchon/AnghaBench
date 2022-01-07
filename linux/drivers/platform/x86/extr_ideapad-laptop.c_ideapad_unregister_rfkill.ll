; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_unregister_rfkill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_ideapad_unregister_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ideapad_private = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ideapad_private*, i32)* @ideapad_unregister_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ideapad_unregister_rfkill(%struct.ideapad_private* %0, i32 %1) #0 {
  %3 = alloca %struct.ideapad_private*, align 8
  %4 = alloca i32, align 4
  store %struct.ideapad_private* %0, %struct.ideapad_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %6 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %16 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rfkill_unregister(i32 %21)
  %23 = load %struct.ideapad_private*, %struct.ideapad_private** %3, align 8
  %24 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @rfkill_destroy(i32 %29)
  br label %31

31:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @rfkill_unregister(i32) #1

declare dso_local i32 @rfkill_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
