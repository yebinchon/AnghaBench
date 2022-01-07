; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_commit_echoes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_commit_echoes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.n_tty_data* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }
%struct.n_tty_data = type { i64, i64, i64, i64, i32 }

@ECHO_COMMIT_WATERMARK = common dso_local global i64 0, align 8
@ECHO_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @commit_echoes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @commit_echoes(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.n_tty_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.n_tty_data*, %struct.n_tty_data** %9, align 8
  store %struct.n_tty_data* %10, %struct.n_tty_data** %3, align 8
  %11 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %12 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %11, i32 0, i32 4
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %15 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %19 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %21 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %24 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %22, %25
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %29 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @ECHO_COMMIT_WATERMARK, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %1
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @ECHO_BLOCK, align 8
  %38 = urem i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @ECHO_BLOCK, align 8
  %41 = urem i64 %39, %40
  %42 = icmp ugt i64 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %35, %1
  %44 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %45 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %44, i32 0, i32 4
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %73

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %50 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %52 = call i64 @__process_echoes(%struct.tty_struct* %51)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.n_tty_data*, %struct.n_tty_data** %3, align 8
  %54 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %53, i32 0, i32 4
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %47
  %59 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %62, align 8
  %64 = icmp ne i32 (%struct.tty_struct*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %67 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %69, align 8
  %71 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %72 = call i32 %70(%struct.tty_struct* %71)
  br label %73

73:                                               ; preds = %43, %65, %58, %47
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @__process_echoes(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
