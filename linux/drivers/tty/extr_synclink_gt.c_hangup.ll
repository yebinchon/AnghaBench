; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.slgt_info* }
%struct.slgt_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [7 x i8] c"hangup\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s hangup\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.slgt_info*, %struct.slgt_info** %6, align 8
  store %struct.slgt_info* %7, %struct.slgt_info** %3, align 8
  %8 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @sanity_check(%struct.slgt_info* %8, i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %57

15:                                               ; preds = %1
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @DBGINFO(i8* %20)
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = call i32 @flush_buffer(%struct.tty_struct* %22)
  %24 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %25 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %29 = call i32 @shutdown(%struct.slgt_info* %28)
  %30 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  store i32* null, i32** %40, align 8
  %41 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %42 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %47 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %46, i32 0, i32 0
  %48 = call i32 @tty_port_set_active(%struct.TYPE_2__* %47, i32 0)
  %49 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %50 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %54 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @wake_up_interruptible(i32* %55)
  br label %57

57:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @shutdown(%struct.slgt_info*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_set_active(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
