; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_unregister_lte_tty_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_unregister_lte_tty_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_dev = type { %struct.gdm** }
%struct.gdm = type { i64, i64, i32 }
%struct.tty_struct = type { i32 }

@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@gdm_table_lock = common dso_local global i32 0, align 4
@gdm_table = common dso_local global i32*** null, align 8
@gdm_driver = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_lte_tty_device(%struct.tty_dev* %0) #0 {
  %2 = alloca %struct.tty_dev*, align 8
  %3 = alloca %struct.gdm*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_dev* %0, %struct.tty_dev** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %57, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TTY_MAX_COUNT, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %60

10:                                               ; preds = %6
  %11 = load %struct.tty_dev*, %struct.tty_dev** %2, align 8
  %12 = getelementptr inbounds %struct.tty_dev, %struct.tty_dev* %11, i32 0, i32 0
  %13 = load %struct.gdm**, %struct.gdm*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gdm*, %struct.gdm** %13, i64 %15
  %17 = load %struct.gdm*, %struct.gdm** %16, align 8
  store %struct.gdm* %17, %struct.gdm** %3, align 8
  %18 = load %struct.gdm*, %struct.gdm** %3, align 8
  %19 = icmp ne %struct.gdm* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %57

21:                                               ; preds = %10
  %22 = call i32 @mutex_lock(i32* @gdm_table_lock)
  %23 = load i32***, i32**** @gdm_table, align 8
  %24 = load %struct.gdm*, %struct.gdm** %3, align 8
  %25 = getelementptr inbounds %struct.gdm, %struct.gdm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32**, i32*** %23, i64 %26
  %28 = load i32**, i32*** %27, align 8
  %29 = load %struct.gdm*, %struct.gdm** %3, align 8
  %30 = getelementptr inbounds %struct.gdm, %struct.gdm* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32*, i32** %28, i64 %31
  store i32* null, i32** %32, align 8
  %33 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  %34 = load %struct.gdm*, %struct.gdm** %3, align 8
  %35 = getelementptr inbounds %struct.gdm, %struct.gdm* %34, i32 0, i32 2
  %36 = call %struct.tty_struct* @tty_port_tty_get(i32* %35)
  store %struct.tty_struct* %36, %struct.tty_struct** %4, align 8
  %37 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %38 = icmp ne %struct.tty_struct* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %21
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = call i32 @tty_vhangup(%struct.tty_struct* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = call i32 @tty_kref_put(%struct.tty_struct* %42)
  br label %44

44:                                               ; preds = %39, %21
  %45 = load i32*, i32** @gdm_driver, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gdm*, %struct.gdm** %3, align 8
  %51 = getelementptr inbounds %struct.gdm, %struct.gdm* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @tty_unregister_device(i32 %49, i64 %52)
  %54 = load %struct.gdm*, %struct.gdm** %3, align 8
  %55 = getelementptr inbounds %struct.gdm, %struct.gdm* %54, i32 0, i32 2
  %56 = call i32 @tty_port_put(i32* %55)
  br label %57

57:                                               ; preds = %44, %20
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %6

60:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @tty_unregister_device(i32, i64) #1

declare dso_local i32 @tty_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
