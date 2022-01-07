; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hvc_struct* }
%struct.hvc_struct = type { i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.hvc_struct*, i32)* }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @hvc_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hvc_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.hvc_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.hvc_struct*, %struct.hvc_struct** %6, align 8
  store %struct.hvc_struct* %7, %struct.hvc_struct** %3, align 8
  %8 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %9 = icmp ne %struct.hvc_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %13 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %12, i32 0, i32 4
  %14 = call i32 @cancel_work_sync(i32* %13)
  %15 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %16 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %21 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %11
  %26 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %27 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %62

31:                                               ; preds = %11
  %32 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %33 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %36 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %41 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %40, i32 0, i32 3
  %42 = call i32 @tty_port_tty_set(%struct.TYPE_4__* %41, i32* null)
  %43 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %44 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %46 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.hvc_struct*, i32)*, i32 (%struct.hvc_struct*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.hvc_struct*, i32)* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %31
  %52 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %53 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.hvc_struct*, i32)*, i32 (%struct.hvc_struct*, i32)** %55, align 8
  %57 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %58 = load %struct.hvc_struct*, %struct.hvc_struct** %3, align 8
  %59 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %56(%struct.hvc_struct* %57, i32 %60)
  br label %62

62:                                               ; preds = %10, %25, %51, %31
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
