; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { i32 }
%struct.raw3270_request = type { i32, i32 }
%struct.irb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@CON_UPDATE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.con3270*, %struct.raw3270_request*, %struct.irb*)* @con3270_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_irq(%struct.con3270* %0, %struct.raw3270_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.con3270*, align 8
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca %struct.irb*, align 8
  store %struct.con3270* %0, %struct.con3270** %4, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %7 = load %struct.irb*, %struct.irb** %6, align 8
  %8 = getelementptr inbounds %struct.irb, %struct.irb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.con3270*, %struct.con3270** %4, align 8
  %17 = call i32 @con3270_issue_read(%struct.con3270* %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %20 = icmp ne %struct.raw3270_request* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load %struct.irb*, %struct.irb** %6, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  %33 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %34 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load %struct.irb*, %struct.irb** %6, align 8
  %37 = getelementptr inbounds %struct.irb, %struct.irb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %42 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %35, %30
  br label %60

44:                                               ; preds = %18
  %45 = load %struct.irb*, %struct.irb** %6, align 8
  %46 = getelementptr inbounds %struct.irb, %struct.irb* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* @CON_UPDATE_ALL, align 4
  %55 = load %struct.con3270*, %struct.con3270** %4, align 8
  %56 = getelementptr inbounds %struct.con3270, %struct.con3270* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.con3270*, %struct.con3270** %4, align 8
  %58 = call i32 @con3270_set_timer(%struct.con3270* %57, i32 1)
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %43
  ret void
}

declare dso_local i32 @con3270_issue_read(%struct.con3270*) #1

declare dso_local i32 @con3270_set_timer(%struct.con3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
