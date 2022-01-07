; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_cmd_interrupted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_transport.c_target_cmd_interrupted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32 (%struct.se_cmd*, i32, i32*)*, i32 }

@CMD_T_ABORTED = common dso_local global i32 0, align 4
@target_abort_work = common dso_local global i32 0, align 4
@target_completion_wq = common dso_local global i32 0, align 4
@CMD_T_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_cmd_interrupted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_cmd_interrupted(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CMD_T_ABORTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 2
  %14 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %13, align 8
  %15 = icmp ne i32 (%struct.se_cmd*, i32, i32*)* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 2
  %19 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %18, align 8
  %20 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %21 = call i32 %19(%struct.se_cmd* %20, i32 0, i32* %4)
  br label %22

22:                                               ; preds = %16, %11
  %23 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %24 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %23, i32 0, i32 3
  %25 = load i32, i32* @target_abort_work, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load i32, i32* @target_completion_wq, align 4
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %28, i32 0, i32 3
  %30 = call i32 @queue_work(i32 %27, i32* %29)
  store i32 1, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %33 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CMD_T_STOP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %31
  %39 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 2
  %41 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %40, align 8
  %42 = icmp ne i32 (%struct.se_cmd*, i32, i32*)* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %45 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %44, i32 0, i32 2
  %46 = load i32 (%struct.se_cmd*, i32, i32*)*, i32 (%struct.se_cmd*, i32, i32*)** %45, align 8
  %47 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %48 = call i32 %46(%struct.se_cmd* %47, i32 0, i32* %4)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 1
  %52 = call i32 @complete_all(i32* %51)
  store i32 1, i32* %2, align 4
  br label %55

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %49, %22
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
