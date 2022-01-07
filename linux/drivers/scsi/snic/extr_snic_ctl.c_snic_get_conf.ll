; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_get_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_ctl.c_snic_get_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32* }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Retrieving snic params.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to retrieve snic params,\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snic_get_conf(%struct.snic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snic* %0, %struct.snic** %3, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %7)
  store i32 3, i32* %6, align 4
  %9 = load %struct.snic*, %struct.snic** %3, align 8
  %10 = getelementptr inbounds %struct.snic, %struct.snic* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @SNIC_HOST_INFO(i32 %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.snic*, %struct.snic** %3, align 8
  %14 = getelementptr inbounds %struct.snic, %struct.snic* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.snic*, %struct.snic** %3, align 8
  %18 = getelementptr inbounds %struct.snic, %struct.snic* %17, i32 0, i32 1
  %19 = call i32 @memset(%struct.TYPE_2__* %18, i32 0, i32 16)
  %20 = load %struct.snic*, %struct.snic** %3, align 8
  %21 = getelementptr inbounds %struct.snic, %struct.snic* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* @wait, i32** %22, align 8
  %23 = load %struct.snic*, %struct.snic** %3, align 8
  %24 = getelementptr inbounds %struct.snic, %struct.snic* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = call i32 @msleep(i32 50)
  br label %28

28:                                               ; preds = %82, %1
  %29 = load %struct.snic*, %struct.snic** %3, align 8
  %30 = call i32 @snic_queue_exch_ver_req(%struct.snic* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %86

35:                                               ; preds = %28
  %36 = call i32 @msecs_to_jiffies(i32 2000)
  %37 = call i32 @wait_for_completion_timeout(i32* @wait, i32 %36)
  %38 = load %struct.snic*, %struct.snic** %3, align 8
  %39 = getelementptr inbounds %struct.snic, %struct.snic* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.snic*, %struct.snic** %3, align 8
  %43 = getelementptr inbounds %struct.snic, %struct.snic* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %51

48:                                               ; preds = %35
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ 0, %47 ], [ %50, %48 ]
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.snic*, %struct.snic** %3, align 8
  %57 = getelementptr inbounds %struct.snic, %struct.snic* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SNIC_HOST_ERR(i32 %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %63, %60
  %67 = load %struct.snic*, %struct.snic** %3, align 8
  %68 = getelementptr inbounds %struct.snic, %struct.snic* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load %struct.snic*, %struct.snic** %3, align 8
  %72 = getelementptr inbounds %struct.snic, %struct.snic* %71, i32 0, i32 0
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ false, %75 ], [ %81, %78 ]
  br i1 %83, label %28, label %84

84:                                               ; preds = %82
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %33
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @SNIC_HOST_INFO(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @snic_queue_exch_ver_req(%struct.snic*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @SNIC_HOST_ERR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
