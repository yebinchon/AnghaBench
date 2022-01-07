; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_common.c_gigaset_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i32, i32 }

@VALID_MINOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EV_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_shutdown(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %4 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %5 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %8 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VALID_MINOR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %15 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %14, i32 0, i32 2
  %16 = call i32 @mutex_unlock(i32* %15)
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %48

19:                                               ; preds = %1
  %20 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %21 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %23 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %24 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %23, i32 0, i32 4
  %25 = load i32, i32* @EV_SHUTDOWN, align 4
  %26 = call i32 @gigaset_add_event(%struct.cardstate* %22, i32* %24, i32 %25, i32* null, i32 0, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %44

29:                                               ; preds = %19
  %30 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %31 = call i32 @gigaset_schedule_event(%struct.cardstate* %30)
  %32 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %33 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %36 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i32 @wait_event(i32 %34, i32 %40)
  %42 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %43 = call i32 @cleanup_cs(%struct.cardstate* %42)
  br label %44

44:                                               ; preds = %29, %28
  %45 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @gigaset_schedule_event(%struct.cardstate*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @cleanup_cs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
