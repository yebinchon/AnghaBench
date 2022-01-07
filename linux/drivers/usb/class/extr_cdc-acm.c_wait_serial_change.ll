; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_wait_serial_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_wait_serial_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i64, i32, i32, %struct.async_icount, %struct.async_icount }
%struct.async_icount = type { i64, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_RI = common dso_local global i64 0, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acm*, i64)* @wait_serial_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_serial_change(%struct.acm* %0, i64 %1) #0 {
  %3 = alloca %struct.acm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.async_icount, align 8
  %7 = alloca %struct.async_icount, align 8
  store %struct.acm* %0, %struct.acm** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @DECLARE_WAITQUEUE(i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %98, %2
  %12 = load %struct.acm*, %struct.acm** %3, align 8
  %13 = getelementptr inbounds %struct.acm, %struct.acm* %12, i32 0, i32 2
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.acm*, %struct.acm** %3, align 8
  %16 = getelementptr inbounds %struct.acm, %struct.acm* %15, i32 0, i32 3
  %17 = bitcast %struct.async_icount* %6 to i8*
  %18 = bitcast %struct.async_icount* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.acm*, %struct.acm** %3, align 8
  %20 = getelementptr inbounds %struct.acm, %struct.acm* %19, i32 0, i32 4
  %21 = bitcast %struct.async_icount* %7 to i8*
  %22 = bitcast %struct.async_icount* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load %struct.acm*, %struct.acm** %3, align 8
  %24 = getelementptr inbounds %struct.acm, %struct.acm* %23, i32 0, i32 3
  %25 = bitcast %struct.async_icount* %24 to i8*
  %26 = bitcast %struct.async_icount* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = load %struct.acm*, %struct.acm** %3, align 8
  %28 = getelementptr inbounds %struct.acm, %struct.acm* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @TIOCM_DSR, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %11
  %35 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %102

41:                                               ; preds = %34, %11
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @TIOCM_CD, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %102

53:                                               ; preds = %46, %41
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @TIOCM_RI, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %6, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %7, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %102

65:                                               ; preds = %58, %53
  %66 = load %struct.acm*, %struct.acm** %3, align 8
  %67 = getelementptr inbounds %struct.acm, %struct.acm* %66, i32 0, i32 1
  %68 = call i32 @add_wait_queue(i32* %67, i32* @wait)
  %69 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %70 = call i32 @set_current_state(i32 %69)
  %71 = call i32 (...) @schedule()
  %72 = load %struct.acm*, %struct.acm** %3, align 8
  %73 = getelementptr inbounds %struct.acm, %struct.acm* %72, i32 0, i32 1
  %74 = call i32 @remove_wait_queue(i32* %73, i32* @wait)
  %75 = load %struct.acm*, %struct.acm** %3, align 8
  %76 = getelementptr inbounds %struct.acm, %struct.acm* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %65
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @TIOCM_CD, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %102

85:                                               ; preds = %79
  %86 = load i32, i32* @ENODEV, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85
  br label %97

89:                                               ; preds = %65
  %90 = load i32, i32* @current, align 4
  %91 = call i64 @signal_pending(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @ERESTARTSYS, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br i1 %101, label %11, label %102

102:                                              ; preds = %98, %84, %64, %52, %40
  %103 = load i32, i32* %5, align 4
  ret i32 %103
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
