; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_putq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_gdth.c_gdth_putq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.scsi_cmnd*, i32 }
%struct.scsi_cmnd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.gdth_cmndinfo = type { i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"gdth_putq() priority %d\0A\00", align 1
@max_rq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.scsi_cmnd*, i64)* @gdth_putq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdth_putq(%struct.TYPE_5__* %0, %struct.scsi_cmnd* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gdth_cmndinfo*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %12 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %11)
  store %struct.gdth_cmndinfo* %12, %struct.gdth_cmndinfo** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @TRACE(i8* %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %7, align 8
  %21 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.gdth_cmndinfo*, %struct.gdth_cmndinfo** %7, align 8
  %27 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %30, align 8
  %32 = icmp eq %struct.scsi_cmnd* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store %struct.scsi_cmnd* %34, %struct.scsi_cmnd** %36, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %38 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i8* null, i8** %39, align 8
  br label %79

40:                                               ; preds = %28
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %42, align 8
  store %struct.scsi_cmnd* %43, %struct.scsi_cmnd** %8, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %45 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %48, %struct.scsi_cmnd** %9, align 8
  br label %49

49:                                               ; preds = %61, %40
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %51 = icmp ne %struct.scsi_cmnd* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %54 = call %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd* %53)
  %55 = getelementptr inbounds %struct.gdth_cmndinfo, %struct.gdth_cmndinfo* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp sle i64 %56, %57
  br label %59

59:                                               ; preds = %52, %49
  %60 = phi i1 [ false, %49 ], [ %58, %52 ]
  br i1 %60, label %61, label %68

61:                                               ; preds = %59
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  store %struct.scsi_cmnd* %62, %struct.scsi_cmnd** %8, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %67, %struct.scsi_cmnd** %9, align 8
  br label %49

68:                                               ; preds = %59
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %70 = bitcast %struct.scsi_cmnd* %69 to i8*
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i8* %70, i8** %73, align 8
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %75 = bitcast %struct.scsi_cmnd* %74 to i8*
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  br label %79

79:                                               ; preds = %68, %33
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local %struct.gdth_cmndinfo* @gdth_cmnd_priv(%struct.scsi_cmnd*) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
