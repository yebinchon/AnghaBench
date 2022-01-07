; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_tty.c_gdm_tty_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdm = type { i32 }
%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i64, %struct.gdm*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRIVER_STRING = common dso_local global i32 0, align 4
@TTY_MAX_COUNT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@gdm_table_lock = common dso_local global i32 0, align 4
@gdm_table = common dso_local global %struct.gdm*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @gdm_tty_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_tty_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.gdm*, align 8
  %7 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  store %struct.gdm* null, %struct.gdm** %6, align 8
  %8 = load i32, i32* @DRIVER_STRING, align 4
  %9 = load i32, i32* @TTY_MAX_COUNT, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @match_string(i32 %8, i32 %9, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %59

21:                                               ; preds = %2
  %22 = call i32 @mutex_lock(i32* @gdm_table_lock)
  %23 = load %struct.gdm***, %struct.gdm**** @gdm_table, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.gdm**, %struct.gdm*** %23, i64 %25
  %27 = load %struct.gdm**, %struct.gdm*** %26, align 8
  %28 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.gdm*, %struct.gdm** %27, i64 %30
  %32 = load %struct.gdm*, %struct.gdm** %31, align 8
  store %struct.gdm* %32, %struct.gdm** %6, align 8
  %33 = load %struct.gdm*, %struct.gdm** %6, align 8
  %34 = icmp ne %struct.gdm* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %59

39:                                               ; preds = %21
  %40 = load %struct.gdm*, %struct.gdm** %6, align 8
  %41 = getelementptr inbounds %struct.gdm, %struct.gdm* %40, i32 0, i32 0
  %42 = call i32 @tty_port_get(i32* %41)
  %43 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %44 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %45 = call i32 @tty_standard_install(%struct.tty_driver* %43, %struct.tty_struct* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = load %struct.gdm*, %struct.gdm** %6, align 8
  %50 = getelementptr inbounds %struct.gdm, %struct.gdm* %49, i32 0, i32 0
  %51 = call i32 @tty_port_put(i32* %50)
  %52 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %39
  %55 = load %struct.gdm*, %struct.gdm** %6, align 8
  %56 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 1
  store %struct.gdm* %55, %struct.gdm** %57, align 8
  %58 = call i32 @mutex_unlock(i32* @gdm_table_lock)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %54, %48, %35, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @match_string(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_get(i32*) #1

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local i32 @tty_port_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
