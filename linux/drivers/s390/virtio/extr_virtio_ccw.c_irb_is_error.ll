; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_irb_is_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_irb_is_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irb = type { i32 }

@DEV_STAT_CHN_END = common dso_local global i32 0, align 4
@DEV_STAT_DEV_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irb*)* @irb_is_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irb_is_error(%struct.irb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irb*, align 8
  store %struct.irb* %0, %struct.irb** %3, align 8
  %4 = load %struct.irb*, %struct.irb** %3, align 8
  %5 = getelementptr inbounds %struct.irb, %struct.irb* %4, i32 0, i32 0
  %6 = call i64 @scsw_cstat(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.irb*, %struct.irb** %3, align 8
  %11 = getelementptr inbounds %struct.irb, %struct.irb* %10, i32 0, i32 0
  %12 = call i32 @scsw_dstat(i32* %11)
  %13 = load i32, i32* @DEV_STAT_CHN_END, align 4
  %14 = load i32, i32* @DEV_STAT_DEV_END, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %12, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %27

20:                                               ; preds = %9
  %21 = load %struct.irb*, %struct.irb** %3, align 8
  %22 = getelementptr inbounds %struct.irb, %struct.irb* %21, i32 0, i32 0
  %23 = call i64 @scsw_cc(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %19, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @scsw_cstat(i32*) #1

declare dso_local i32 @scsw_dstat(i32*) #1

declare dso_local i64 @scsw_cc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
