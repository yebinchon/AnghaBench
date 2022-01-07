; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_send_xchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c_tty_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*, i8*, i32)*, {}* }

@ERESTARTSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = bitcast {}** %13 to i32 (%struct.tty_struct*, i8)**
  %15 = load i32 (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*, i8)** %14, align 8
  %16 = icmp ne i32 (%struct.tty_struct*, i8)* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = bitcast {}** %24 to i32 (%struct.tty_struct*, i8)**
  %26 = load i32 (%struct.tty_struct*, i8)*, i32 (%struct.tty_struct*, i8)** %25, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i32 %26(%struct.tty_struct* %27, i8 signext %28)
  %30 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 1
  %32 = call i32 @up_read(i32* %31)
  store i32 0, i32* %3, align 4
  br label %68

33:                                               ; preds = %2
  %34 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %35 = call i64 @tty_write_lock(%struct.tty_struct* %34, i32 0)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %33
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 1
  %43 = call i32 @down_read(i32* %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %48 = call i32 @start_tty(%struct.tty_struct* %47)
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %51 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.tty_struct*, i8*, i32)*, i32 (%struct.tty_struct*, i8*, i32)** %53, align 8
  %55 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %56 = call i32 %54(%struct.tty_struct* %55, i8* %5, i32 1)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = call i32 @stop_tty(%struct.tty_struct* %60)
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 1
  %65 = call i32 @up_read(i32* %64)
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = call i32 @tty_write_unlock(%struct.tty_struct* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %62, %37, %17
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @tty_write_lock(%struct.tty_struct*, i32) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

declare dso_local i32 @tty_write_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
