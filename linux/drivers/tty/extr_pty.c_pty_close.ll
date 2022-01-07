; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_pty.c_pty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.tty_struct = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.file = type { i32 }

@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@TTY_OTHER_CLOSED = common dso_local global i32 0, align 4
@devpts_mutex = common dso_local global i32 0, align 4
@ptm_driver = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @pty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = icmp ne %struct.tty_struct* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  br label %36

24:                                               ; preds = %2
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = call i64 @tty_io_error(%struct.tty_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %93

29:                                               ; preds = %24
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %93

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* @TTY_IO_ERROR, align 4
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 3
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 7
  %43 = call i32 @wake_up_interruptible(i32* %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 6
  %46 = call i32 @wake_up_interruptible(i32* %45)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 4
  %49 = call i32 @spin_lock_irq(i32* %48)
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 4
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = icmp ne %struct.TYPE_3__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %36
  br label %93

60:                                               ; preds = %36
  %61 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = call i32 @set_bit(i32 %61, i32* %65)
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = call i32 @wake_up_interruptible(i32* %70)
  %72 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %73 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = call i32 @wake_up_interruptible(i32* %75)
  %77 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %78 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %60
  %85 = load i32, i32* @TTY_OTHER_CLOSED, align 4
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 3
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i32 @tty_vhangup(%struct.TYPE_3__* %91)
  br label %93

93:                                               ; preds = %28, %34, %59, %84, %60
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @tty_vhangup(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
