; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_dcd_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_dcd_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, %struct.TYPE_6__, i32, i32, i32, i32, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BIT1 = common dso_local global i16 0, align 2
@SerialSignal_DCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"dcd_change %s signals=%04X\0A\00", align 1
@IO_PIN_SHUTDOWN_LIMIT = common dso_local global i64 0, align 8
@IRQ_DCD = common dso_local global i32 0, align 4
@BH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i16)* @dcd_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcd_change(%struct.slgt_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* @BIT1, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i32, i32* @SerialSignal_DCD, align 4
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 10
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load i32, i32* @SerialSignal_DCD, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %30 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %29, i32 0, i32 10
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %22, %11
  %35 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %39 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @DBGISR(i8* %42)
  %44 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = sext i32 %46 to i64
  %49 = load i64, i64* @IO_PIN_SHUTDOWN_LIMIT, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %34
  %52 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %53 = load i32, i32* @IRQ_DCD, align 4
  %54 = call i32 @slgt_irq_off(%struct.slgt_info* %52, i32 %53)
  br label %102

55:                                               ; preds = %34
  %56 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 4
  %63 = call i32 @wake_up_interruptible(i32* %62)
  %64 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 3
  %66 = call i32 @wake_up_interruptible(i32* %65)
  %67 = load i32, i32* @BH_STATUS, align 4
  %68 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 1
  %74 = call i64 @tty_port_check_carrier(%struct.TYPE_6__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %55
  %77 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %78 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SerialSignal_DCD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %85 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = call i32 @wake_up_interruptible(i32* %86)
  br label %101

88:                                               ; preds = %76
  %89 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %90 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @tty_hangup(i64 %98)
  br label %100

100:                                              ; preds = %94, %88
  br label %101

101:                                              ; preds = %100, %83
  br label %102

102:                                              ; preds = %51, %101, %55
  ret void
}

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @tty_port_check_carrier(%struct.TYPE_6__*) #1

declare dso_local i32 @tty_hangup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
