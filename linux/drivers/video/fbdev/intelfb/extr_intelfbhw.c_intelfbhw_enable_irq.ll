; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@intelfbhw_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"intelfb\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HWSTAM = common dso_local global i32 0, align 4
@IMR = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@PIPE_A_EVENT_INTERRUPT = common dso_local global i32 0, align 4
@VSYNC_PIPE_A_INTERRUPT = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"changing IER to 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_enable_irq(%struct.intelfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intelfb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %3, align 8
  %5 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %6 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %5, i32 0, i32 2
  %7 = call i32 @test_and_set_bit(i32 0, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %1
  %10 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %11 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @intelfbhw_irq, align 4
  %16 = load i32, i32* @IRQF_SHARED, align 4
  %17 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %18 = call i64 @request_irq(i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.intelfb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %22 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %21, i32 0, i32 2
  %23 = call i32 @clear_bit(i32 0, i32* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %67

26:                                               ; preds = %9
  %27 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load i32, i32* @HWSTAM, align 4
  %31 = call i32 @OUTREG16(i32 %30, i32 65534)
  %32 = load i32, i32* @IMR, align 4
  %33 = call i32 @OUTREG16(i32 %32, i32 0)
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %36 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_irq(i32* %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %40 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @PIPE_A_EVENT_INTERRUPT, align 4
  store i32 %49, i32* %4, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @VSYNC_PIPE_A_INTERRUPT, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IER, align 4
  %55 = call i32 @INREG16(i32 %54)
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @DBG_MSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @IER, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @OUTREG16(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %65 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_irq(i32* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %20
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.intelfb_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @OUTREG16(i32, i32) #1

declare dso_local i32 @INREG16(i32) #1

declare dso_local i32 @DBG_MSG(i8*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
