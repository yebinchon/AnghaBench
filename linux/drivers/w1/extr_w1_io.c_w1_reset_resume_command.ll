; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_reset_resume_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/extr_w1_io.c_w1_reset_resume_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32 }

@W1_RESUME_CMD = common dso_local global i32 0, align 4
@W1_SKIP_ROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @w1_reset_resume_command(%struct.w1_master* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w1_master*, align 8
  store %struct.w1_master* %0, %struct.w1_master** %3, align 8
  %4 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %5 = call i64 @w1_reset_bus(%struct.w1_master* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %10 = load %struct.w1_master*, %struct.w1_master** %3, align 8
  %11 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @W1_RESUME_CMD, align 4
  br label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @W1_SKIP_ROM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i32 @w1_write_8(%struct.w1_master* %9, i32 %19)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @w1_reset_bus(%struct.w1_master*) #1

declare dso_local i32 @w1_write_8(%struct.w1_master*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
