; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.gb_tty* }
%struct.gb_tty = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.serial_struct = type { i32, i32 }

@ASYNC_CLOSING_WAIT_NONE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.serial_struct*, align 8
  %5 = alloca %struct.gb_tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %4, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.gb_tty*, %struct.gb_tty** %10, align 8
  store %struct.gb_tty* %11, %struct.gb_tty** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %13 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 10
  store i32 %15, i32* %7, align 4
  %16 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %17 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @ASYNC_CLOSING_WAIT_NONE, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.serial_struct*, %struct.serial_struct** %4, align 8
  %25 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 10
  br label %28

28:                                               ; preds = %23, %21
  %29 = phi i32 [ %22, %21 ], [ %27, %23 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %31 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %35 = call i32 @capable(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %40 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %38, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %47 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %67

58:                                               ; preds = %28
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %61 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %65 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %57
  %68 = load %struct.gb_tty*, %struct.gb_tty** %5, align 8
  %69 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
