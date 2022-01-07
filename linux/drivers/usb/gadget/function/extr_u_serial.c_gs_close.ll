; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gs_port* }
%struct.gs_port = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, %struct.gserial*, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.gserial = type { i32 (%struct.gserial*)* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"gs_close: ttyGS%d (%p,%p) ...\0A\00", align 1
@GS_CLOSE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"gs_close: ttyGS%d (%p,%p) done!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @gs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gs_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.gs_port*, align 8
  %6 = alloca %struct.gserial*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.gs_port*, %struct.gs_port** %8, align 8
  store %struct.gs_port* %9, %struct.gs_port** %5, align 8
  %10 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %11 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %10, i32 0, i32 1
  %12 = call i32 @spin_lock_irq(i32* %11)
  %13 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %14 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %20 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @WARN_ON(i32 1)
  br label %32

26:                                               ; preds = %18
  %27 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %28 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %24
  br label %114

33:                                               ; preds = %2
  %34 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %35 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %36, %struct.tty_struct* %37, %struct.file* %38)
  %40 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %41 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %43 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %46 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %45, i32 0, i32 6
  %47 = load %struct.gserial*, %struct.gserial** %46, align 8
  store %struct.gserial* %47, %struct.gserial** %6, align 8
  %48 = load %struct.gserial*, %struct.gserial** %6, align 8
  %49 = icmp ne %struct.gserial* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %33
  %51 = load %struct.gserial*, %struct.gserial** %6, align 8
  %52 = getelementptr inbounds %struct.gserial, %struct.gserial* %51, i32 0, i32 0
  %53 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %52, align 8
  %54 = icmp ne i32 (%struct.gserial*)* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.gserial*, %struct.gserial** %6, align 8
  %57 = getelementptr inbounds %struct.gserial, %struct.gserial* %56, i32 0, i32 0
  %58 = load i32 (%struct.gserial*)*, i32 (%struct.gserial*)** %57, align 8
  %59 = load %struct.gserial*, %struct.gserial** %6, align 8
  %60 = call i32 %58(%struct.gserial* %59)
  br label %61

61:                                               ; preds = %55, %50, %33
  %62 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %63 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %62, i32 0, i32 5
  %64 = call i64 @kfifo_len(i32* %63)
  %65 = icmp sgt i64 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load %struct.gserial*, %struct.gserial** %6, align 8
  %68 = icmp ne %struct.gserial* %67, null
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %71 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %74 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %77 = call i32 @gs_writes_finished(%struct.gs_port* %76)
  %78 = load i32, i32* @GS_CLOSE_TIMEOUT, align 4
  %79 = load i32, i32* @HZ, align 4
  %80 = mul nsw i32 %78, %79
  %81 = call i32 @wait_event_interruptible_timeout(i32 %75, i32 %77, i32 %80)
  %82 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %83 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %82, i32 0, i32 1
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %86 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %85, i32 0, i32 6
  %87 = load %struct.gserial*, %struct.gserial** %86, align 8
  store %struct.gserial* %87, %struct.gserial** %6, align 8
  br label %88

88:                                               ; preds = %69, %66, %61
  %89 = load %struct.gserial*, %struct.gserial** %6, align 8
  %90 = icmp eq %struct.gserial* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %93 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %92, i32 0, i32 5
  %94 = call i32 @kfifo_free(i32* %93)
  br label %99

95:                                               ; preds = %88
  %96 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %97 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %96, i32 0, i32 5
  %98 = call i32 @kfifo_reset(i32* %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %101 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %104 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %106 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %109 = load %struct.file*, %struct.file** %4, align 8
  %110 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %107, %struct.tty_struct* %108, %struct.file* %109)
  %111 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %112 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %111, i32 0, i32 2
  %113 = call i32 @wake_up(i32* %112)
  br label %114

114:                                              ; preds = %99, %32
  %115 = load %struct.gs_port*, %struct.gs_port** %5, align 8
  %116 = getelementptr inbounds %struct.gs_port, %struct.gs_port* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_irq(i32* %116)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.tty_struct*, %struct.file*) #1

declare dso_local i64 @kfifo_len(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @gs_writes_finished(%struct.gs_port*) #1

declare dso_local i32 @kfifo_free(i32*) #1

declare dso_local i32 @kfifo_reset(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
