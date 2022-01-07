; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_wcmd.c_vnt_schedule_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_wcmd.c_vnt_schedule_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32*, i64, i32 }

@CMD_Q_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_schedule_command(%struct.vnt_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %7 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %17 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %12, i32* %19, align 4
  %20 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %21 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @CMD_Q_SIZE, align 4
  %24 = call i32 @ADD_ONE_WITH_WRAP_AROUND(i64 %22, i32 %23)
  %25 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %26 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %30 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %11
  %34 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %35 = call i32 @vnt_cmd_complete(%struct.vnt_private* %34)
  br label %36

36:                                               ; preds = %33, %11
  store i32 1, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @ADD_ONE_WITH_WRAP_AROUND(i64, i32) #1

declare dso_local i32 @vnt_cmd_complete(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
