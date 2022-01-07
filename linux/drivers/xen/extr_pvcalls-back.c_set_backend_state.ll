; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_set_backend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_pvcalls-back.c_set_backend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xenbus_device = type { i32 }

@pvcalls_back_global = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @set_backend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_backend_state(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %61, %2
  %6 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %7 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %62

11:                                               ; preds = %5
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %59 [
    i32 132, label %15
    i32 129, label %26
    i32 128, label %26
    i32 130, label %39
    i32 131, label %51
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 130, label %17
    i32 131, label %20
  ]

17:                                               ; preds = %15, %15
  %18 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %19 = call i32 @xenbus_switch_state(%struct.xenbus_device* %18, i32 129)
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %22 = call i32 @xenbus_switch_state(%struct.xenbus_device* %21, i32 131)
  br label %25

23:                                               ; preds = %15
  %24 = call i32 @WARN_ON(i32 1)
  br label %25

25:                                               ; preds = %23, %20, %17
  br label %61

26:                                               ; preds = %11, %11
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %36 [
    i32 130, label %28
    i32 131, label %33
    i32 132, label %33
  ]

28:                                               ; preds = %26
  %29 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %30 = call i32 @backend_connect(%struct.xenbus_device* %29)
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %32 = call i32 @xenbus_switch_state(%struct.xenbus_device* %31, i32 130)
  br label %38

33:                                               ; preds = %26, %26
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %35 = call i32 @xenbus_switch_state(%struct.xenbus_device* %34, i32 131)
  br label %38

36:                                               ; preds = %26
  %37 = call i32 @WARN_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %33, %28
  br label %61

39:                                               ; preds = %11
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %48 [
    i32 129, label %41
    i32 131, label %41
    i32 132, label %41
  ]

41:                                               ; preds = %39, %39, %39
  %42 = call i32 @down(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvcalls_back_global, i32 0, i32 0))
  %43 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %44 = call i32 @backend_disconnect(%struct.xenbus_device* %43)
  %45 = call i32 @up(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pvcalls_back_global, i32 0, i32 0))
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %47 = call i32 @xenbus_switch_state(%struct.xenbus_device* %46, i32 131)
  br label %50

48:                                               ; preds = %39
  %49 = call i32 @WARN_ON(i32 1)
  br label %50

50:                                               ; preds = %48, %41
  br label %61

51:                                               ; preds = %11
  %52 = load i32, i32* %4, align 4
  switch i32 %52, label %56 [
    i32 129, label %53
    i32 130, label %53
    i32 132, label %53
  ]

53:                                               ; preds = %51, %51, %51
  %54 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %55 = call i32 @xenbus_switch_state(%struct.xenbus_device* %54, i32 132)
  br label %58

56:                                               ; preds = %51
  %57 = call i32 @WARN_ON(i32 1)
  br label %58

58:                                               ; preds = %56, %53
  br label %61

59:                                               ; preds = %11
  %60 = call i32 @WARN_ON(i32 1)
  br label %61

61:                                               ; preds = %59, %58, %50, %38, %25
  br label %5

62:                                               ; preds = %5
  ret void
}

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @backend_connect(%struct.xenbus_device*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @backend_disconnect(%struct.xenbus_device*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
