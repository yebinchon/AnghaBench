; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_complete_cmd_with_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_complete_cmd_with_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32 }

@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@SCF_TREAT_READ_AS_NORMAL = common dso_local global i32 0, align 4
@SCF_UNDERFLOW_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_complete_cmd_with_length(%struct.se_cmd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.se_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @SAM_STAT_GOOD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %3
  %11 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SCF_TREAT_READ_AS_NORMAL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %10, %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %53

40:                                               ; preds = %23
  %41 = load i32, i32* @SCF_UNDERFLOW_BIT, align 4
  %42 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %30
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %17, %10
  %58 = load %struct.se_cmd*, %struct.se_cmd** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @target_complete_cmd(%struct.se_cmd* %58, i64 %59)
  ret void
}

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
