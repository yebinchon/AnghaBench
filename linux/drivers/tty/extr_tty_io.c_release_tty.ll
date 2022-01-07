; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_release_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_release_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.tty_struct*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 (%struct.tty_struct*)* }

@tty_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @release_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_tty(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = call i32 @mutex_is_locked(i32* @tty_mutex)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %20, align 8
  %22 = icmp ne i32 (%struct.tty_struct*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %27, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = call i32 %28(%struct.tty_struct* %29)
  br label %31

31:                                               ; preds = %23, %2
  %32 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %33 = call i32 @tty_save_termios(%struct.tty_struct* %32)
  %34 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %35 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = call i32 @tty_driver_remove_tty(i32 %36, %struct.tty_struct* %37)
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 1
  %45 = load %struct.tty_struct*, %struct.tty_struct** %44, align 8
  %46 = icmp ne %struct.tty_struct* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %31
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %48, i32 0, i32 1
  %50 = load %struct.tty_struct*, %struct.tty_struct** %49, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %31
  %55 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @tty_buffer_cancel_work(%struct.TYPE_4__* %57)
  %59 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 1
  %61 = load %struct.tty_struct*, %struct.tty_struct** %60, align 8
  %62 = icmp ne %struct.tty_struct* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %54
  %64 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 1
  %66 = load %struct.tty_struct*, %struct.tty_struct** %65, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = call i32 @tty_buffer_cancel_work(%struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %63, %54
  %71 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %72 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %71, i32 0, i32 1
  %73 = load %struct.tty_struct*, %struct.tty_struct** %72, align 8
  %74 = call i32 @tty_kref_put(%struct.tty_struct* %73)
  %75 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %76 = call i32 @tty_kref_put(%struct.tty_struct* %75)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @tty_save_termios(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_remove_tty(i32, %struct.tty_struct*) #1

declare dso_local i32 @tty_buffer_cancel_work(%struct.TYPE_4__*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
