; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_kopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_kopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_driver = type { i32 }

@tty_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_struct* @tty_kopen(i32 %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.tty_driver*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.tty_driver* null, %struct.tty_driver** %5, align 8
  store i32 -1, i32* %6, align 4
  %7 = call i32 @mutex_lock(i32* @tty_mutex)
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.tty_struct* @tty_lookup_driver(i32 %8, i32* null, i32* %6)
  %10 = bitcast %struct.tty_struct* %9 to %struct.tty_driver*
  store %struct.tty_driver* %10, %struct.tty_driver** %5, align 8
  %11 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %12 = bitcast %struct.tty_driver* %11 to %struct.tty_struct*
  %13 = call i64 @IS_ERR(%struct.tty_struct* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = call i32 @mutex_unlock(i32* @tty_mutex)
  %17 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %18 = bitcast %struct.tty_driver* %17 to %struct.tty_struct*
  %19 = call %struct.tty_struct* @ERR_CAST(%struct.tty_struct* %18)
  store %struct.tty_struct* %19, %struct.tty_struct** %2, align 8
  br label %59

20:                                               ; preds = %1
  %21 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %22 = bitcast %struct.tty_driver* %21 to %struct.tty_struct*
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_struct* %22, i32* null, i32 %23)
  store %struct.tty_struct* %24, %struct.tty_struct** %4, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %26 = call i64 @IS_ERR(%struct.tty_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %53

29:                                               ; preds = %20
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = icmp ne %struct.tty_struct* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %34 = call i32 @tty_kref_put(%struct.tty_struct* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.tty_struct* @ERR_PTR(i32 %36)
  store %struct.tty_struct* %37, %struct.tty_struct** %4, align 8
  br label %52

38:                                               ; preds = %29
  %39 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %40 = bitcast %struct.tty_driver* %39 to %struct.tty_struct*
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.tty_struct* @tty_init_dev(%struct.tty_struct* %40, i32 %41)
  store %struct.tty_struct* %42, %struct.tty_struct** %4, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = call i64 @IS_ERR(%struct.tty_struct* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %53

47:                                               ; preds = %38
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tty_port_set_kopened(i32 %50, i32 1)
  br label %52

52:                                               ; preds = %47, %32
  br label %53

53:                                               ; preds = %52, %46, %28
  %54 = call i32 @mutex_unlock(i32* @tty_mutex)
  %55 = load %struct.tty_driver*, %struct.tty_driver** %5, align 8
  %56 = bitcast %struct.tty_driver* %55 to %struct.tty_struct*
  %57 = call i32 @tty_driver_kref_put(%struct.tty_struct* %56)
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  store %struct.tty_struct* %58, %struct.tty_struct** %2, align 8
  br label %59

59:                                               ; preds = %53, %15
  %60 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  ret %struct.tty_struct* %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tty_struct* @tty_lookup_driver(i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @ERR_CAST(%struct.tty_struct*) #1

declare dso_local %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_struct*, i32*, i32) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local %struct.tty_struct* @ERR_PTR(i32) #1

declare dso_local %struct.tty_struct* @tty_init_dev(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_port_set_kopened(i32, i32) #1

declare dso_local i32 @tty_driver_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
