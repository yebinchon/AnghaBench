; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_lockup_action_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_process_lockup_action_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pqi_lockup_action_param = common dso_local global i32 0, align 4
@pqi_lockup_actions = common dso_local global %struct.TYPE_3__* null, align 8
@pqi_lockup_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"%s: invalid lockup action setting \22%s\22 - supported settings: none, reboot, panic\0A\00", align 1
@DRIVER_NAME_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pqi_process_lockup_action_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_process_lockup_action_param() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pqi_lockup_action_param, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %36

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %29, %5
  %7 = load i32, i32* %1, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pqi_lockup_actions, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %6
  %12 = load i32, i32* @pqi_lockup_action_param, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pqi_lockup_actions, align 8
  %14 = load i32, i32* %1, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @strcmp(i32 %12, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pqi_lockup_actions, align 8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @pqi_lockup_action, align 4
  br label %36

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load i32, i32* @DRIVER_NAME_SHORT, align 4
  %34 = load i32, i32* @pqi_lockup_action_param, align 4
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %21, %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
