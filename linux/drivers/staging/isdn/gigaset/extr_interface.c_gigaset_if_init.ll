; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_gigaset_if_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_interface.c_gigaset_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32*, i32, i32, i32, %struct.gigaset_driver* }
%struct.gigaset_driver = type { i32, i32 }

@if_wake = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not register device to the tty subsystem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_if_init(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca %struct.gigaset_driver*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 5
  %6 = load %struct.gigaset_driver*, %struct.gigaset_driver** %5, align 8
  store %struct.gigaset_driver* %6, %struct.gigaset_driver** %3, align 8
  %7 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %8 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %14 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %13, i32 0, i32 4
  %15 = load i32, i32* @if_wake, align 4
  %16 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %17 = ptrtoint %struct.cardstate* %16 to i64
  %18 = call i32 @tasklet_init(i32* %14, i32 %15, i64 %17)
  %19 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %20 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 3
  %24 = load %struct.gigaset_driver*, %struct.gigaset_driver** %3, align 8
  %25 = getelementptr inbounds %struct.gigaset_driver, %struct.gigaset_driver* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @tty_port_register_device(i32* %23, i32 %26, i32 %29, i32* null)
  %31 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %32 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %34 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @IS_ERR(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %12
  %39 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %40 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %43 = call i32 @dev_set_drvdata(i32* %41, %struct.cardstate* %42)
  br label %48

44:                                               ; preds = %12
  %45 = call i32 @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %47 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %50 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %11
  ret void
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @tty_port_register_device(i32*, i32, i32, i32*) #1

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.cardstate*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
