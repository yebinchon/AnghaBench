; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_dlm_recoverd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_recoverd.c_dlm_recoverd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"dlm_recoverd: no lockspace %p\00", align 1
@LSFL_RECOVER_LOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@LSFL_RECOVER_WORK = common dso_local global i32 0, align 4
@LSFL_RECOVER_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @dlm_recoverd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_recoverd(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dlm_ls*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call %struct.dlm_ls* @dlm_find_lockspace_local(i8* %5)
  store %struct.dlm_ls* %6, %struct.dlm_ls** %4, align 8
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %8 = icmp ne %struct.dlm_ls* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @log_print(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 -1, i32* %2, align 4
  br label %91

12:                                               ; preds = %1
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load i32, i32* @LSFL_RECOVER_LOCK, align 4
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 1
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %20, i32 0, i32 2
  %22 = call i32 @wake_up(i32* %21)
  br label %23

23:                                               ; preds = %12, %77
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @set_current_state(i32 %24)
  %26 = call i64 (...) @kthread_should_stop()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @TASK_RUNNING, align 4
  %30 = call i32 @set_current_state(i32 %29)
  br label %78

31:                                               ; preds = %23
  %32 = load i32, i32* @LSFL_RECOVER_WORK, align 4
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @LSFL_RECOVER_DOWN, align 4
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = call i64 (...) @kthread_should_stop()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %78

47:                                               ; preds = %43
  %48 = call i32 (...) @schedule()
  br label %49

49:                                               ; preds = %47, %37, %31
  %50 = load i32, i32* @TASK_RUNNING, align 4
  %51 = call i32 @set_current_state(i32 %50)
  %52 = load i32, i32* @LSFL_RECOVER_DOWN, align 4
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %54 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %53, i32 0, i32 1
  %55 = call i64 @test_and_clear_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %49
  %58 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %59 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %58, i32 0, i32 0
  %60 = call i32 @down_write(i32* %59)
  %61 = load i32, i32* @LSFL_RECOVER_LOCK, align 4
  %62 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %63 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %62, i32 0, i32 1
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %66 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %65, i32 0, i32 2
  %67 = call i32 @wake_up(i32* %66)
  br label %68

68:                                               ; preds = %57, %49
  %69 = load i32, i32* @LSFL_RECOVER_WORK, align 4
  %70 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %71 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %70, i32 0, i32 1
  %72 = call i64 @test_and_clear_bit(i32 %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %76 = call i32 @do_ls_recovery(%struct.dlm_ls* %75)
  br label %77

77:                                               ; preds = %74, %68
  br label %23

78:                                               ; preds = %46, %28
  %79 = load i32, i32* @LSFL_RECOVER_LOCK, align 4
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %81 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %80, i32 0, i32 1
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %86 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %85, i32 0, i32 0
  %87 = call i32 @up_write(i32* %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %90 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %9
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i8*) #1

declare dso_local i32 @log_print(i8*, i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @do_ls_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
