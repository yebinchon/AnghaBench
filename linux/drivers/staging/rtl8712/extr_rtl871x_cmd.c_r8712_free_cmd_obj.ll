; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_free_cmd_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_free_cmd_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_obj = type { i64, i64, %struct.cmd_obj*, %struct.cmd_obj* }

@_JoinBss_CMD_ = common dso_local global i64 0, align 8
@_CreateBss_CMD_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_cmd_obj(%struct.cmd_obj* %0) #0 {
  %2 = alloca %struct.cmd_obj*, align 8
  store %struct.cmd_obj* %0, %struct.cmd_obj** %2, align 8
  %3 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %4 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @_JoinBss_CMD_, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %10 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @_CreateBss_CMD_, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %16 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %15, i32 0, i32 3
  %17 = load %struct.cmd_obj*, %struct.cmd_obj** %16, align 8
  %18 = call i32 @kfree(%struct.cmd_obj* %17)
  br label %19

19:                                               ; preds = %14, %8, %1
  %20 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %21 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %20, i32 0, i32 2
  %22 = load %struct.cmd_obj*, %struct.cmd_obj** %21, align 8
  %23 = icmp ne %struct.cmd_obj* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %26 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %31 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %30, i32 0, i32 2
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %31, align 8
  %33 = call i32 @kfree(%struct.cmd_obj* %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %19
  %36 = load %struct.cmd_obj*, %struct.cmd_obj** %2, align 8
  %37 = call i32 @kfree(%struct.cmd_obj* %36)
  ret void
}

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
