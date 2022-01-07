; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_sunhv_console_write_paged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sunhv.c_sunhv_console_write_paged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.console = type { i32 }

@sunhv_port = common dso_local global %struct.uart_port* null, align 8
@oops_in_progress = common dso_local global i64 0, align 8
@con_write_page = common dso_local global i32 0, align 4
@HV_EOK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @sunhv_console_write_paged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunhv_console_write_paged(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** @sunhv_port, align 8
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  store i32 1, i32* %9, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* @oops_in_progress, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %3
  %25 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_trylock_irqsave(i32* %26, i64 %27)
  store i32 %28, i32* %9, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %80, %34
  %36 = load i32, i32* %6, align 4
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %35
  %39 = load i32, i32* @con_write_page, align 4
  %40 = call i64 @__pa(i32 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fill_con_write_page(i8* %41, i32 %42, i64* %11)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %5, align 8
  br label %51

51:                                               ; preds = %73, %38
  %52 = load i64, i64* %11, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %51
  store i32 1000000, i32* %14, align 4
  br label %55

55:                                               ; preds = %67, %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %14, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @sun4v_con_write(i64 %60, i64 %61, i64* %13)
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @HV_EOK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  %68 = call i32 @udelay(i32 1)
  br label %55

69:                                               ; preds = %66, %55
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %80

73:                                               ; preds = %69
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %11, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %10, align 8
  br label %51

80:                                               ; preds = %72, %51
  br label %35

81:                                               ; preds = %35
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__pa(i32) #1

declare dso_local i32 @fill_con_write_page(i8*, i32, i64*) #1

declare dso_local i64 @sun4v_con_write(i64, i64, i64*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
