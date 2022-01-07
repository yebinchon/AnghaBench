; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_unregister_con_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_do_unregister_con_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consw = type { i32 }
%struct.con_driver = type { i32, %struct.consw* }

@EBUSY = common dso_local global i32 0, align 4
@conswitchp = common dso_local global %struct.consw* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_NR_CON_DRIVER = common dso_local global i32 0, align 4
@registered_con_driver = common dso_local global %struct.con_driver* null, align 8
@CON_DRIVER_FLAG_ZOMBIE = common dso_local global i32 0, align 4
@con_driver_unregister_work = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_unregister_con_driver(%struct.consw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.consw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.con_driver*, align 8
  store %struct.consw* %0, %struct.consw** %3, align 8
  %6 = load %struct.consw*, %struct.consw** %3, align 8
  %7 = call i64 @con_is_bound(%struct.consw* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.consw*, %struct.consw** %3, align 8
  %14 = load %struct.consw*, %struct.consw** @conswitchp, align 8
  %15 = icmp eq %struct.consw* %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAX_NR_CON_DRIVER, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.con_driver*, %struct.con_driver** @registered_con_driver, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %25, i64 %27
  store %struct.con_driver* %28, %struct.con_driver** %5, align 8
  %29 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %30 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %29, i32 0, i32 1
  %31 = load %struct.consw*, %struct.consw** %30, align 8
  %32 = load %struct.consw*, %struct.consw** %3, align 8
  %33 = icmp eq %struct.consw* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %36 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %35, i32 0, i32 1
  store %struct.consw* null, %struct.consw** %36, align 8
  %37 = load i32, i32* @CON_DRIVER_FLAG_ZOMBIE, align 4
  %38 = load %struct.con_driver*, %struct.con_driver** %5, align 8
  %39 = getelementptr inbounds %struct.con_driver, %struct.con_driver* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = call i32 @schedule_work(i32* @con_driver_unregister_work)
  store i32 0, i32* %2, align 4
  br label %48

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %34, %16, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @con_is_bound(%struct.consw*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
