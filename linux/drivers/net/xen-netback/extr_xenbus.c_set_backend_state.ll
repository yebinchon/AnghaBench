; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_set_backend_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_xenbus.c_set_backend_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backend_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.backend_info*, i32)* @set_backend_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_backend_state(%struct.backend_info* %0, i32 %1) #0 {
  %3 = alloca %struct.backend_info*, align 8
  %4 = alloca i32, align 4
  store %struct.backend_info* %0, %struct.backend_info** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %70, %2
  %6 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %7 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %5
  %12 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %13 = getelementptr inbounds %struct.backend_info, %struct.backend_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %68 [
    i32 128, label %15
    i32 132, label %26
    i32 129, label %37
    i32 130, label %50
    i32 131, label %60
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 130, label %17
    i32 131, label %17
    i32 132, label %20
  ]

17:                                               ; preds = %15, %15, %15
  %18 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %19 = call i32 @backend_switch_state(%struct.backend_info* %18, i32 129)
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %22 = call i32 @backend_switch_state(%struct.backend_info* %21, i32 132)
  br label %25

23:                                               ; preds = %15
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %23, %20, %17
  br label %70

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 130, label %28
    i32 131, label %31
  ]

28:                                               ; preds = %26, %26
  %29 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %30 = call i32 @backend_switch_state(%struct.backend_info* %29, i32 129)
  br label %36

31:                                               ; preds = %26
  %32 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %33 = call i32 @backend_switch_state(%struct.backend_info* %32, i32 131)
  br label %36

34:                                               ; preds = %26
  %35 = call i32 (...) @BUG()
  br label %36

36:                                               ; preds = %34, %31, %28
  br label %70

37:                                               ; preds = %11
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %47 [
    i32 130, label %39
    i32 131, label %44
    i32 132, label %44
  ]

39:                                               ; preds = %37
  %40 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %41 = call i32 @backend_connect(%struct.backend_info* %40)
  %42 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %43 = call i32 @backend_switch_state(%struct.backend_info* %42, i32 130)
  br label %49

44:                                               ; preds = %37, %37
  %45 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %46 = call i32 @backend_switch_state(%struct.backend_info* %45, i32 131)
  br label %49

47:                                               ; preds = %37
  %48 = call i32 (...) @BUG()
  br label %49

49:                                               ; preds = %47, %44, %39
  br label %70

50:                                               ; preds = %11
  %51 = load i32, i32* %4, align 4
  switch i32 %51, label %57 [
    i32 129, label %52
    i32 131, label %52
    i32 132, label %52
  ]

52:                                               ; preds = %50, %50, %50
  %53 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %54 = call i32 @backend_disconnect(%struct.backend_info* %53)
  %55 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %56 = call i32 @backend_switch_state(%struct.backend_info* %55, i32 131)
  br label %59

57:                                               ; preds = %50
  %58 = call i32 (...) @BUG()
  br label %59

59:                                               ; preds = %57, %52
  br label %70

60:                                               ; preds = %11
  %61 = load i32, i32* %4, align 4
  switch i32 %61, label %65 [
    i32 129, label %62
    i32 130, label %62
    i32 132, label %62
  ]

62:                                               ; preds = %60, %60, %60
  %63 = load %struct.backend_info*, %struct.backend_info** %3, align 8
  %64 = call i32 @backend_switch_state(%struct.backend_info* %63, i32 132)
  br label %67

65:                                               ; preds = %60
  %66 = call i32 (...) @BUG()
  br label %67

67:                                               ; preds = %65, %62
  br label %70

68:                                               ; preds = %11
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68, %67, %59, %49, %36, %25
  br label %5

71:                                               ; preds = %5
  ret void
}

declare dso_local i32 @backend_switch_state(%struct.backend_info*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @backend_connect(%struct.backend_info*) #1

declare dso_local i32 @backend_disconnect(%struct.backend_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
