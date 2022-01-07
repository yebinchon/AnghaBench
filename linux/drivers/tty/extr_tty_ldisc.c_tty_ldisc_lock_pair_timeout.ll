; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_lock_pair_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_lock_pair_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@TTY_LDISC_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.tty_struct*, i64)* @tty_ldisc_lock_pair_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_ldisc_lock_pair_timeout(%struct.tty_struct* %0, %struct.tty_struct* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %11 = icmp ult %struct.tty_struct* %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @__tty_ldisc_lock(%struct.tty_struct* %13, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @__tty_ldisc_lock_nested(%struct.tty_struct* %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %26 = call i32 @__tty_ldisc_unlock(%struct.tty_struct* %25)
  br label %27

27:                                               ; preds = %24, %18
  br label %28

28:                                               ; preds = %27, %12
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = icmp eq %struct.tty_struct* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %36 = icmp ne %struct.tty_struct* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %29
  %38 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = icmp ne %struct.tty_struct* %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @__tty_ldisc_lock(%struct.tty_struct* %42, i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @__tty_ldisc_lock_nested(%struct.tty_struct* %48, i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %55 = call i32 @__tty_ldisc_unlock(%struct.tty_struct* %54)
  br label %56

56:                                               ; preds = %53, %47
  br label %57

57:                                               ; preds = %56, %41
  br label %62

58:                                               ; preds = %37, %29
  %59 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @__tty_ldisc_lock(%struct.tty_struct* %59, i64 %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %57
  br label %63

63:                                               ; preds = %62, %28
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %82

69:                                               ; preds = %63
  %70 = load i32, i32* @TTY_LDISC_HALTED, align 4
  %71 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 0
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  %74 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %75 = icmp ne %struct.tty_struct* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* @TTY_LDISC_HALTED, align 4
  %78 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %79 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %78, i32 0, i32 0
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %69
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @__tty_ldisc_lock(%struct.tty_struct*, i64) #1

declare dso_local i32 @__tty_ldisc_lock_nested(%struct.tty_struct*, i64) #1

declare dso_local i32 @__tty_ldisc_unlock(%struct.tty_struct*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
