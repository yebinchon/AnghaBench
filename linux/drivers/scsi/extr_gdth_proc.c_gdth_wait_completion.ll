; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth_proc.c_gdth_wait_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth_proc.c_gdth_wait_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.gdth_cmndinfo = type { i64 }

@GDTH_MAXCMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32)* @gdth_wait_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdth_wait_completion(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca %struct.gdth_cmndinfo*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %76, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GDTH_MAXCMDS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %79

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %28, align 8
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %9, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %31 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %30)
  store %struct.gdth_cmndinfo* %31, %struct.gdth_cmndinfo** %10, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %12, align 8
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %43 = call i32 @SPECIAL_SCP(%struct.scsi_cmnd* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %21
  %46 = load i64, i64* %12, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load i64, i64* %11, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %10, align 8
  %57 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %68, %55
  %63 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %10, align 8
  %64 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (...) @barrier()
  br label %62

70:                                               ; preds = %62
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @spin_lock_irqsave(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %50, %45, %21
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %17

79:                                               ; preds = %17
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @SPECIAL_SCP(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
