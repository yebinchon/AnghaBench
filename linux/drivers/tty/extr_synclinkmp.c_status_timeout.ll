; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_status_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclinkmp.c_status_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8, i8, i32, i32 }
%struct.timer_list = type { i32 }

@status_timer = common dso_local global i32 0, align 4
@SerialSignal_DSR = common dso_local global i8 0, align 1
@MISCSTATUS_DSR_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_RI = common dso_local global i8 0, align 1
@MISCSTATUS_RI_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_DCD = common dso_local global i8 0, align 1
@MISCSTATUS_DCD_LATCHED = common dso_local global i8 0, align 1
@SerialSignal_CTS = common dso_local global i8 0, align 1
@MISCSTATUS_CTS_LATCHED = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8
@info = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @status_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i8 0, i8* %3, align 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = ptrtoint %struct.TYPE_6__* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @status_timer, align 4
  %11 = call %struct.TYPE_6__* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = call i32 @get_signals(%struct.TYPE_6__* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  %25 = zext i8 %24 to i32
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = xor i32 %25, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i8 %34, i8* %36, align 4
  %37 = load i8, i8* %6, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @SerialSignal_DSR, align 1
  %40 = zext i8 %39 to i32
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %1
  %44 = load i8, i8* @MISCSTATUS_DSR_LATCHED, align 1
  %45 = zext i8 %44 to i32
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @SerialSignal_DSR, align 1
  %51 = zext i8 %50 to i32
  %52 = and i32 %49, %51
  %53 = or i32 %45, %52
  %54 = load i8, i8* %3, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, %53
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %3, align 1
  br label %58

58:                                               ; preds = %43, %1
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* @SerialSignal_RI, align 1
  %62 = zext i8 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load i8, i8* @MISCSTATUS_RI_LATCHED, align 1
  %67 = zext i8 %66 to i32
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* @SerialSignal_RI, align 1
  %73 = zext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = or i32 %67, %74
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %3, align 1
  br label %80

80:                                               ; preds = %65, %58
  %81 = load i8, i8* %6, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* @SerialSignal_DCD, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i8, i8* @MISCSTATUS_DCD_LATCHED, align 1
  %89 = zext i8 %88 to i32
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @SerialSignal_DCD, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %93, %95
  %97 = or i32 %89, %96
  %98 = load i8, i8* %3, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %99, %97
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %3, align 1
  br label %102

102:                                              ; preds = %87, %80
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8, i8* @SerialSignal_CTS, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load i8, i8* @MISCSTATUS_CTS_LATCHED, align 1
  %111 = zext i8 %110 to i32
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* @SerialSignal_CTS, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %115, %117
  %119 = or i32 %111, %118
  %120 = load i8, i8* %3, align 1
  %121 = zext i8 %120 to i32
  %122 = or i32 %121, %119
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %3, align 1
  br label %124

124:                                              ; preds = %109, %102
  %125 = load i8, i8* %3, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = load i8, i8* %3, align 1
  %130 = call i32 @isr_io_pin(%struct.TYPE_6__* %128, i8 zeroext %129)
  br label %131

131:                                              ; preds = %127, %124
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* @jiffies, align 8
  %135 = call i64 @msecs_to_jiffies(i32 10)
  %136 = add nsw i64 %134, %135
  %137 = call i32 @mod_timer(i32* %133, i64 %136)
  ret void
}

declare dso_local %struct.TYPE_6__* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_signals(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @isr_io_pin(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
