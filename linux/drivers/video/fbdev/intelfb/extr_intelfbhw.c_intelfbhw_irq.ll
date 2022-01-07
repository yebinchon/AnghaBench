; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IIR = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@PIPE_A_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@VSYNC_PIPE_A_INTERRUPT = common dso_local global i32 0, align 4
@PIPEASTAT = common dso_local global i32 0, align 4
@DSPABASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @intelfbhw_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfbhw_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.intelfb_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.intelfb_info*
  store %struct.intelfb_info* %9, %struct.intelfb_info** %7, align 8
  %10 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %11 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* @IIR, align 4
  %14 = call i32 @INREG16(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %16 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @PIPE_A_EVENT_INTERRUPT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @VSYNC_PIPE_A_INTERRUPT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %37 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = call i32 @IRQ_RETVAL(i32 0)
  store i32 %39, i32* %3, align 4
  br label %77

40:                                               ; preds = %32
  %41 = load i32, i32* @PIPEASTAT, align 4
  %42 = load i32, i32* @PIPEASTAT, align 4
  %43 = call i32 @INREG(i32 %42)
  %44 = call i32 @OUTREG(i32 %41, i32 %43)
  %45 = load i32, i32* @IIR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @OUTREG16(i32 %45, i32 %46)
  %48 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %49 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %40
  %54 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %55 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @DSPABASE, align 4
  %58 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %59 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @OUTREG(i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %53, %40
  %64 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %65 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %70 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = call i32 @wake_up_interruptible(i32* %71)
  %73 = load %struct.intelfb_info*, %struct.intelfb_info** %7, align 8
  %74 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = call i32 @IRQ_RETVAL(i32 1)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %63, %35
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @INREG16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @INREG(i32) #1

declare dso_local i32 @OUTREG16(i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
