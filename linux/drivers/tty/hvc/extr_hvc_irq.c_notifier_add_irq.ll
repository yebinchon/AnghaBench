; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_irq.c_notifier_add_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_irq.c_notifier_add_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i32, i32 }

@hvc_handle_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hvc_console\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @notifier_add_irq(%struct.hvc_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hvc_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hvc_struct* %0, %struct.hvc_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %11 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @hvc_handle_interrupt, align 4
  %15 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %16 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %19 = call i32 @request_irq(i32 %13, i32 %14, i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.hvc_struct* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %12
  %23 = load %struct.hvc_struct*, %struct.hvc_struct** %4, align 8
  %24 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %12
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %9
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hvc_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
