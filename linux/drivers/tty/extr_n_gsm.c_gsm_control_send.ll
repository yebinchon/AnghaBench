; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_control = type { i32, i32, i32* }
%struct.gsm_mux = type { i32, i32, i32, i32, i32, %struct.TYPE_2__**, %struct.gsm_control*, i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DLCI_MODE_ADM = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsm_control* (%struct.gsm_mux*, i32, i32*, i32)* @gsm_control_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsm_control* @gsm_control_send(%struct.gsm_mux* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gsm_control*, align 8
  %6 = alloca %struct.gsm_mux*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsm_control*, align 8
  %11 = alloca i64, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gsm_control* @kzalloc(i32 16, i32 %12)
  store %struct.gsm_control* %13, %struct.gsm_control** %10, align 8
  %14 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %15 = icmp eq %struct.gsm_control* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.gsm_control* null, %struct.gsm_control** %5, align 8
  br label %93

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %36, %17
  %19 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %20 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %23 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %22, i32 0, i32 6
  %24 = load %struct.gsm_control*, %struct.gsm_control** %23, align 8
  %25 = icmp eq %struct.gsm_control* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %21, i32 %26)
  %28 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %29 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %28, i32 0, i32 3
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %33 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %32, i32 0, i32 6
  %34 = load %struct.gsm_control*, %struct.gsm_control** %33, align 8
  %35 = icmp ne %struct.gsm_control* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %38 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %37, i32 0, i32 3
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  br label %18

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %44 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %47 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %50 = getelementptr inbounds %struct.gsm_control, %struct.gsm_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %52 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %53 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %52, i32 0, i32 6
  store %struct.gsm_control* %51, %struct.gsm_control** %53, align 8
  %54 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %55 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DLCI_MODE_ADM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %65 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %72

66:                                               ; preds = %41
  %67 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %68 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %71 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %66, %63
  %73 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %74 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %73, i32 0, i32 4
  %75 = load i64, i64* @jiffies, align 8
  %76 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %77 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @HZ, align 4
  %80 = mul nsw i32 %78, %79
  %81 = sdiv i32 %80, 100
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %75, %82
  %84 = call i32 @mod_timer(i32* %74, i64 %83)
  %85 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %86 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  %87 = call i32 @gsm_control_transmit(%struct.gsm_mux* %85, %struct.gsm_control* %86)
  %88 = load %struct.gsm_mux*, %struct.gsm_mux** %6, align 8
  %89 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %88, i32 0, i32 3
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.gsm_control*, %struct.gsm_control** %10, align 8
  store %struct.gsm_control* %92, %struct.gsm_control** %5, align 8
  br label %93

93:                                               ; preds = %72, %16
  %94 = load %struct.gsm_control*, %struct.gsm_control** %5, align 8
  ret %struct.gsm_control* %94
}

declare dso_local %struct.gsm_control* @kzalloc(i32, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @gsm_control_transmit(%struct.gsm_mux*, %struct.gsm_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
