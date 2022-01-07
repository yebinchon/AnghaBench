; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_raw3270.c_raw3270_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3270_view = type { %struct.raw3270* }
%struct.raw3270 = type { i32 }
%struct.raw3270_request = type { i32 }
%struct.irb = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@SNS0_CMD_REJECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DEV_STAT_ATTENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3270_view*, %struct.raw3270_request*, %struct.irb*)* @raw3270_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3270_init_irq(%struct.raw3270_view* %0, %struct.raw3270_request* %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.raw3270_view*, align 8
  %5 = alloca %struct.raw3270_request*, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.raw3270*, align 8
  store %struct.raw3270_view* %0, %struct.raw3270_view** %4, align 8
  store %struct.raw3270_request* %1, %struct.raw3270_request** %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  %8 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %9 = icmp ne %struct.raw3270_request* %8, null
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = load %struct.irb*, %struct.irb** %6, align 8
  %12 = getelementptr inbounds %struct.irb, %struct.irb* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = load %struct.irb*, %struct.irb** %6, align 8
  %21 = getelementptr inbounds %struct.irb, %struct.irb* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SNS0_CMD_REJECT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %32 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.raw3270_request*, %struct.raw3270_request** %5, align 8
  %37 = getelementptr inbounds %struct.raw3270_request, %struct.raw3270_request* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  br label %39

39:                                               ; preds = %38, %10
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.irb*, %struct.irb** %6, align 8
  %42 = getelementptr inbounds %struct.irb, %struct.irb* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DEV_STAT_ATTENTION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.raw3270_view*, %struct.raw3270_view** %4, align 8
  %51 = getelementptr inbounds %struct.raw3270_view, %struct.raw3270_view* %50, i32 0, i32 0
  %52 = load %struct.raw3270*, %struct.raw3270** %51, align 8
  store %struct.raw3270* %52, %struct.raw3270** %7, align 8
  %53 = load %struct.raw3270*, %struct.raw3270** %7, align 8
  %54 = call i32 @raw3270_read_modified(%struct.raw3270* %53)
  br label %55

55:                                               ; preds = %49, %40
  ret void
}

declare dso_local i32 @raw3270_read_modified(%struct.raw3270*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
