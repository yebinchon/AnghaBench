; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ldisc.c_tty_ldisc_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.tty_ldisc*, i32 }
%struct.tty_ldisc = type { i32 }

@N_TTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_ldisc_reinit(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_ldisc*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = call i32 @lockdep_assert_held_write(i32* %9)
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct* %11, i32 %12)
  store %struct.tty_ldisc* %13, %struct.tty_ldisc** %6, align 8
  %14 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %15 = call i64 @IS_ERR(%struct.tty_ldisc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @N_TTY, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.tty_ldisc* %23)
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %2
  %26 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  %28 = load %struct.tty_ldisc*, %struct.tty_ldisc** %27, align 8
  %29 = icmp ne %struct.tty_ldisc* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = load %struct.tty_ldisc*, %struct.tty_ldisc** %33, align 8
  %35 = call i32 @tty_ldisc_close(%struct.tty_struct* %31, %struct.tty_ldisc* %34)
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %36, i32 0, i32 0
  %38 = load %struct.tty_ldisc*, %struct.tty_ldisc** %37, align 8
  %39 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %38)
  br label %40

40:                                               ; preds = %30, %25
  %41 = load %struct.tty_ldisc*, %struct.tty_ldisc** %6, align 8
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 0
  store %struct.tty_ldisc* %41, %struct.tty_ldisc** %43, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @tty_set_termios_ldisc(%struct.tty_struct* %44, i32 %45)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %48 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 0
  %50 = load %struct.tty_ldisc*, %struct.tty_ldisc** %49, align 8
  %51 = call i32 @tty_ldisc_open(%struct.tty_struct* %47, %struct.tty_ldisc* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %40
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 0
  %57 = load %struct.tty_ldisc*, %struct.tty_ldisc** %56, align 8
  %58 = call i32 @tty_ldisc_put(%struct.tty_ldisc* %57)
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 0
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %60, align 8
  br label %61

61:                                               ; preds = %54, %40
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local %struct.tty_ldisc* @tty_ldisc_get(%struct.tty_struct*, i32) #1

declare dso_local i64 @IS_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PTR_ERR(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_close(%struct.tty_struct*, %struct.tty_ldisc*) #1

declare dso_local i32 @tty_ldisc_put(%struct.tty_ldisc*) #1

declare dso_local i32 @tty_set_termios_ldisc(%struct.tty_struct*, i32) #1

declare dso_local i32 @tty_ldisc_open(%struct.tty_struct*, %struct.tty_ldisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
