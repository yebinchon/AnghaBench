; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_n_tty_ioctl_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_n_tty_ioctl_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32 }
%struct.file = type { i32 }

@__DISABLED_CHAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %93 [
    i32 128, label %12
    i32 133, label %82
  ]

12:                                               ; preds = %4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %14 = call i32 @tty_check_change(%struct.tty_struct* %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %99

19:                                               ; preds = %12
  %20 = load i64, i64* %9, align 8
  switch i64 %20, label %77 [
    i64 130, label %21
    i64 129, label %38
    i64 132, label %55
    i64 131, label %66
  ]

21:                                               ; preds = %19
  %22 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %33 = call i32 @__stop_tty(%struct.tty_struct* %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 1
  %37 = call i32 @spin_unlock_irq(i32* %36)
  br label %80

38:                                               ; preds = %19
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 1
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %50 = call i32 @__start_tty(%struct.tty_struct* %49)
  br label %51

51:                                               ; preds = %46, %38
  %52 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %53 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock_irq(i32* %53)
  br label %80

55:                                               ; preds = %19
  %56 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %57 = call i32 @STOP_CHAR(%struct.tty_struct* %56)
  %58 = load i32, i32* @__DISABLED_CHAR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %62 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %63 = call i32 @STOP_CHAR(%struct.tty_struct* %62)
  %64 = call i32 @tty_send_xchar(%struct.tty_struct* %61, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %80

66:                                               ; preds = %19
  %67 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %68 = call i32 @START_CHAR(%struct.tty_struct* %67)
  %69 = load i32, i32* @__DISABLED_CHAR, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %73 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %74 = call i32 @START_CHAR(%struct.tty_struct* %73)
  %75 = call i32 @tty_send_xchar(%struct.tty_struct* %72, i32 %74)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %71, %66
  br label %80

77:                                               ; preds = %19
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %99

80:                                               ; preds = %76, %65, %51, %34
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %5, align 4
  br label %99

82:                                               ; preds = %4
  %83 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %84 = call i32 @tty_check_change(%struct.tty_struct* %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %5, align 4
  br label %99

89:                                               ; preds = %82
  %90 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @__tty_perform_flush(%struct.tty_struct* %90, i64 %91)
  store i32 %92, i32* %5, align 4
  br label %99

93:                                               ; preds = %4
  %94 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %95 = load %struct.file*, %struct.file** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @tty_mode_ioctl(%struct.tty_struct* %94, %struct.file* %95, i32 %96, i64 %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %93, %89, %87, %80, %77, %17
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__stop_tty(%struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @__start_tty(%struct.tty_struct*) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @tty_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @__tty_perform_flush(%struct.tty_struct*, i64) #1

declare dso_local i32 @tty_mode_ioctl(%struct.tty_struct*, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
