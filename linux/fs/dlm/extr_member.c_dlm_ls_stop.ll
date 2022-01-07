; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_ls_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_ls_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i32, i64, i64, i64, i32*, i32, i32, i32, i32, i32 }

@LSFL_RECOVER_STOP = common dso_local global i32 0, align 4
@LSFL_RUNNING = common dso_local global i32 0, align 4
@LSFL_RECOVER_DOWN = common dso_local global i32 0, align 4
@LSFL_RECOVER_LOCK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_ls_stop(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  %4 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %4, i32 0, i32 9
  %6 = call i32 @down_write(i32* %5)
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @LSFL_RECOVER_STOP, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 6
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @LSFL_RUNNING, align 4
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 6
  %17 = call i32 @test_and_clear_bit(i32 %14, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %25, i32 0, i32 9
  %27 = call i32 @up_write(i32* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load i32, i32* @LSFL_RECOVER_DOWN, align 4
  %32 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %33 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %32, i32 0, i32 6
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %36 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wake_up_process(i32 %37)
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %40 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @LSFL_RECOVER_LOCK, align 4
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %44 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %43, i32 0, i32 6
  %45 = call i32 @test_bit(i32 %42, i32* %44)
  %46 = call i32 @wait_event(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %30, %1
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %49 = call i32 @dlm_recoverd_suspend(%struct.dlm_ls* %48)
  %50 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %51 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %54 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %58 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %57, i32 0, i32 5
  store i32* null, i32** %58, align 8
  %59 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %60 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %62 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %64 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %66 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %69 = call i32 @dlm_recoverd_resume(%struct.dlm_ls* %68)
  %70 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %71 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %47
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %77 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %47
  %79 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %80 = call i32 @dlm_lsop_recover_prep(%struct.dlm_ls* %79)
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dlm_recoverd_suspend(%struct.dlm_ls*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dlm_recoverd_resume(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_lsop_recover_prep(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
