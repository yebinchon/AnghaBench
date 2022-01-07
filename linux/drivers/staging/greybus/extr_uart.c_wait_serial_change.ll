; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_wait_serial_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_uart.c_wait_serial_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_tty = type { i64, i32, i32, %struct.async_icount, %struct.async_icount }
%struct.async_icount = type { i64, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_RI = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_tty*, i64)* @wait_serial_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_serial_change(%struct.gb_tty* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_tty*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.async_icount, align 8
  %8 = alloca %struct.async_icount, align 8
  store %struct.gb_tty* %0, %struct.gb_tty** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @wait, align 4
  %10 = load i32, i32* @current, align 4
  %11 = call i32 @DECLARE_WAITQUEUE(i32 %9, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @TIOCM_DSR, align 8
  %14 = load i64, i64* @TIOCM_RI, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @TIOCM_CD, align 8
  %17 = or i64 %15, %16
  %18 = and i64 %12, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %116

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %110, %23
  %25 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %26 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %25, i32 0, i32 2
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %29 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %28, i32 0, i32 3
  %30 = bitcast %struct.async_icount* %7 to i8*
  %31 = bitcast %struct.async_icount* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %33 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %32, i32 0, i32 4
  %34 = bitcast %struct.async_icount* %8 to i8*
  %35 = bitcast %struct.async_icount* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 24, i1 false)
  %36 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %37 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %36, i32 0, i32 3
  %38 = bitcast %struct.async_icount* %37 to i8*
  %39 = bitcast %struct.async_icount* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  %40 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %41 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %40, i32 0, i32 2
  %42 = call i32 @spin_unlock_irq(i32* %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @TIOCM_DSR, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %8, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %114

54:                                               ; preds = %47, %24
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TIOCM_CD, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %8, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %114

66:                                               ; preds = %59, %54
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @TIOCM_RI, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %8, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %114

78:                                               ; preds = %71, %66
  %79 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %80 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %79, i32 0, i32 1
  %81 = call i32 @add_wait_queue(i32* %80, i32* @wait)
  %82 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %83 = call i32 @set_current_state(i32 %82)
  %84 = call i32 (...) @schedule()
  %85 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %86 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %85, i32 0, i32 1
  %87 = call i32 @remove_wait_queue(i32* %86, i32* @wait)
  %88 = load %struct.gb_tty*, %struct.gb_tty** %4, align 8
  %89 = getelementptr inbounds %struct.gb_tty, %struct.gb_tty* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %78
  %93 = load i64, i64* %5, align 8
  %94 = load i64, i64* @TIOCM_CD, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %114

98:                                               ; preds = %92
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %109

101:                                              ; preds = %78
  %102 = load i32, i32* @current, align 4
  %103 = call i64 @signal_pending(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @ERESTARTSYS, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %101
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  br i1 %113, label %24, label %114

114:                                              ; preds = %110, %97, %77, %65, %53
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %20
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
