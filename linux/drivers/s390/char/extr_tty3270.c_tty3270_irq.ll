; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { i32, i32, i32, i32, i32 }
%struct.raw3270_request = type { i32, i32 }
%struct.irb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@TTY_UPDATE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, %struct.raw3270_request*, %struct.irb*)* @tty3270_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_irq(%struct.tty3270* %0, %struct.raw3270_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.tty3270*, align 8
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca %struct.irb*, align 8
  store %struct.tty3270* %0, %struct.tty3270** %4, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %7 = load %struct.irb*, %struct.irb** %6, align 8
  %8 = getelementptr inbounds %struct.irb, %struct.irb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %17 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %22 = call i32 @tty3270_issue_read(%struct.tty3270* %21, i32 0)
  br label %26

23:                                               ; preds = %15
  %24 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %25 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %29 = icmp ne %struct.raw3270_request* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load %struct.irb*, %struct.irb** %6, align 8
  %32 = getelementptr inbounds %struct.irb, %struct.irb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %30
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  %42 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %43 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %45 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %44, i32 0, i32 3
  %46 = call i32 @raw3270_get_view(i32* %45)
  %47 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %48 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %47, i32 0, i32 2
  %49 = call i32 @tasklet_schedule(i32* %48)
  br label %58

50:                                               ; preds = %30
  %51 = load %struct.irb*, %struct.irb** %6, align 8
  %52 = getelementptr inbounds %struct.irb, %struct.irb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %57 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %39
  br label %75

59:                                               ; preds = %27
  %60 = load %struct.irb*, %struct.irb** %6, align 8
  %61 = getelementptr inbounds %struct.irb, %struct.irb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load i32, i32* @TTY_UPDATE_ALL, align 4
  %70 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %71 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %73 = call i32 @tty3270_set_timer(%struct.tty3270* %72, i32 1)
  br label %74

74:                                               ; preds = %68, %59
  br label %75

75:                                               ; preds = %74, %58
  ret void
}

declare dso_local i32 @tty3270_issue_read(%struct.tty3270*, i32) #1

declare dso_local i32 @raw3270_get_view(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @tty3270_set_timer(%struct.tty3270*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
