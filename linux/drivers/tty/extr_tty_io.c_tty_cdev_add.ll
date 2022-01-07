; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_cdev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_cdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@tty_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, i32, i32, i32)* @tty_cdev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_cdev_add(%struct.tty_driver* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call %struct.TYPE_3__* (...) @cdev_alloc()
  %12 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %13 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %14, i64 %16
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %17, align 8
  %18 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %19 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %20, i64 %22
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %73

29:                                               ; preds = %4
  %30 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %31 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %32, i64 %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32* @tty_fops, i32** %37, align 8
  %38 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %39 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %42 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %40, i32* %48, align 4
  %49 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %50 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %51, i64 %53
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @cdev_add(%struct.TYPE_3__* %55, i32 %56, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %29
  %62 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  %63 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = call i32 @kobject_put(i32* %69)
  br label %71

71:                                               ; preds = %61, %29
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %71, %26
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_3__* @cdev_alloc(...) #1

declare dso_local i32 @cdev_add(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
