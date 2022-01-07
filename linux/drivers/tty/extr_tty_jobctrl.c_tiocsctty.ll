; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c_tiocsctty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_jobctrl.c_tiocsctty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.tty_struct = type { i64 }
%struct.file = type { i32 }

@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32)* @tiocsctty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiocsctty(%struct.tty_struct* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = call i32 @tty_lock(%struct.tty_struct* %8)
  %10 = call i32 @read_lock(i32* @tasklist_lock)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %19 = call i64 @task_session(%struct.TYPE_5__* %18)
  %20 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %21 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %80

25:                                               ; preds = %17, %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %25
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %80

42:                                               ; preds = %32
  %43 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %52 = call i64 @capable(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @session_clear_tty(i64 %57)
  br label %62

59:                                               ; preds = %50, %47
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %80

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.file*, %struct.file** %5, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FMODE_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %72 = call i64 @capable(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %80

77:                                               ; preds = %70, %63
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = call i32 @proc_set_tty(%struct.tty_struct* %78)
  br label %80

80:                                               ; preds = %77, %74, %59, %39, %24
  %81 = call i32 @read_unlock(i32* @tasklist_lock)
  %82 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %83 = call i32 @tty_unlock(%struct.tty_struct* %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @task_session(%struct.TYPE_5__*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @session_clear_tty(i64) #1

declare dso_local i32 @proc_set_tty(%struct.tty_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
