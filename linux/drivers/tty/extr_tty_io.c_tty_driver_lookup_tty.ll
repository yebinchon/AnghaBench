; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_lookup_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_driver_lookup_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.tty_driver = type { %struct.tty_struct**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.file = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* @tty_driver_lookup_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @tty_driver_lookup_tty(%struct.tty_driver* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %9 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)**
  %13 = load %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)** %12, align 8
  %14 = icmp ne %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tty_struct* @ERR_PTR(i32 %20)
  store %struct.tty_struct* %21, %struct.tty_struct** %7, align 8
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %24 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)**
  %28 = load %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)*, %struct.tty_struct* (%struct.tty_driver*, %struct.file*, i32)** %27, align 8
  %29 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.tty_struct* %28(%struct.tty_driver* %29, %struct.file* %30, i32 %31)
  store %struct.tty_struct* %32, %struct.tty_struct** %7, align 8
  br label %33

33:                                               ; preds = %22, %18
  br label %42

34:                                               ; preds = %3
  %35 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %36 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %35, i32 0, i32 0
  %37 = load %struct.tty_struct**, %struct.tty_struct*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.tty_struct*, %struct.tty_struct** %37, i64 %39
  %41 = load %struct.tty_struct*, %struct.tty_struct** %40, align 8
  store %struct.tty_struct* %41, %struct.tty_struct** %7, align 8
  br label %42

42:                                               ; preds = %34, %33
  %43 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %44 = call i32 @IS_ERR(%struct.tty_struct* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %48 = call i32 @tty_kref_get(%struct.tty_struct* %47)
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  ret %struct.tty_struct* %50
}

declare dso_local %struct.tty_struct* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_get(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
