; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32, i32)* }

@EBUSY = common dso_local global i32 0, align 4
@MS_LOCKED = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@EV_START = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_start(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %6 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %5, i32 0, i32 4
  %7 = call i64 @mutex_lock_interruptible(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MS_LOCKED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %12
  %29 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32 (%struct.cardstate*, i32, i32)*, i32 (%struct.cardstate*, i32, i32)** %32, align 8
  %34 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %35 = load i32, i32* @TIOCM_DTR, align 4
  %36 = load i32, i32* @TIOCM_RTS, align 4
  %37 = or i32 %35, %36
  %38 = call i32 %33(%struct.cardstate* %34, i32 0, i32 %37)
  %39 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 7
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %42, align 8
  %44 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %45 = load i32, i32* @B115200, align 4
  %46 = call i32 %43(%struct.cardstate* %44, i32 %45)
  %47 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %48 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %47, i32 0, i32 7
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %50, align 8
  %52 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %53 = load i32, i32* @CS8, align 4
  %54 = call i32 %51(%struct.cardstate* %52, i32 %53)
  %55 = load i32, i32* @TIOCM_DTR, align 4
  %56 = load i32, i32* @TIOCM_RTS, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %59 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %28, %12
  %61 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %62 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %65 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %64, i32 0, i32 6
  %66 = load i32, i32* @EV_START, align 4
  %67 = call i32 @gigaset_add_event(%struct.cardstate* %63, i32* %65, i32 %66, i32* null, i32 0, i32* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %71 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %70, i32 0, i32 3
  store i32 0, i32* %71, align 4
  br label %88

72:                                               ; preds = %60
  %73 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %74 = call i32 @gigaset_schedule_event(%struct.cardstate* %73)
  %75 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %76 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %79 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @wait_event(i32 %77, i32 %83)
  %85 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %86 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %85, i32 0, i32 4
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %2, align 4
  br label %94

88:                                               ; preds = %69
  %89 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %90 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %89, i32 0, i32 4
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %72, %9
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @gigaset_schedule_event(%struct.cardstate*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
