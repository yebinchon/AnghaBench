; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_s390_subchannel_remove_chpid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chsc.c_s390_subchannel_remove_chpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.subchannel*, i8*, i32)* }

@CHP_OFFLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.subchannel*, i8*)* @s390_subchannel_remove_chpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s390_subchannel_remove_chpid(%struct.subchannel* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel*, align 8
  %5 = alloca i8*, align 8
  store %struct.subchannel* %0, %struct.subchannel** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %7 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @spin_lock_irq(i32 %8)
  %10 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %11 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %16 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64 (%struct.subchannel*, i8*, i32)*, i64 (%struct.subchannel*, i8*, i32)** %18, align 8
  %20 = icmp ne i64 (%struct.subchannel*, i8*, i32)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %23 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64 (%struct.subchannel*, i8*, i32)*, i64 (%struct.subchannel*, i8*, i32)** %25, align 8
  %27 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @CHP_OFFLINE, align 4
  %30 = call i64 %26(%struct.subchannel* %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33, %14, %2
  %35 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %36 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @spin_unlock_irq(i32 %37)
  store i32 0, i32* %3, align 4
  br label %50

39:                                               ; preds = %32
  %40 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %41 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %43 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load %struct.subchannel*, %struct.subchannel** %4, align 8
  %47 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @css_schedule_eval(i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %39, %34
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @css_schedule_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
