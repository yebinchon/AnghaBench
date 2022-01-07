; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_unregister_command_q.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_unregister_command_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@PREP_FOR_SUSPEND_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"unregister_command_q: error from h_free_crq %ld\0A\00", align 1
@ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"unregister_command_q: unknown error %ld from h_free_crq\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Excessive wait for h_free_crq\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Freeing CRQ: phyp rc %ld, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*)* @ibmvscsis_unregister_command_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_unregister_command_q(%struct.scsi_info* %0) #0 {
  %2 = alloca %struct.scsi_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.scsi_info* %0, %struct.scsi_info** %2, align 8
  %6 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %82, %1
  %8 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @h_free_crq(i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  switch i64 %13, label %57 [
    i64 128, label %14
    i64 136, label %27
    i64 129, label %27
    i64 137, label %33
    i64 131, label %33
    i64 133, label %37
    i64 135, label %41
    i64 130, label %45
    i64 132, label %49
    i64 134, label %53
  ]

14:                                               ; preds = %7
  %15 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 1
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load i32, i32* @PREP_FOR_SUSPEND_FLAGS, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock_bh(i32* %25)
  br label %63

27:                                               ; preds = %7, %7
  %28 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %28, i32 0, i32 0
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* @ERROR, align 8
  store i64 %32, i64* %4, align 8
  br label %63

33:                                               ; preds = %7, %7
  %34 = call i32 @usleep_range(i32 1000, i32 2000)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %63

37:                                               ; preds = %7
  %38 = call i32 @usleep_range(i32 10000, i32 20000)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 10
  store i32 %40, i32* %5, align 4
  br label %63

41:                                               ; preds = %7
  %42 = call i32 @msleep(i32 100)
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 100
  store i32 %44, i32* %5, align 4
  br label %63

45:                                               ; preds = %7
  %46 = call i32 @ssleep(i32 1)
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1000
  store i32 %48, i32* %5, align 4
  br label %63

49:                                               ; preds = %7
  %50 = call i32 @ssleep(i32 10)
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 10000
  store i32 %52, i32* %5, align 4
  br label %63

53:                                               ; preds = %7
  %54 = call i32 @ssleep(i32 100)
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 100000
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %7
  %58 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 0
  %60 = load i64, i64* %3, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* @ERROR, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %57, %53, %49, %45, %41, %37, %33, %27, %14
  %64 = load i32, i32* %5, align 4
  %65 = icmp sgt i32 %64, 300000
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %3, align 8
  %68 = icmp ne i64 %67, 128
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i64, i64* @ERROR, align 8
  store i64 %70, i64* %4, align 8
  %71 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %72 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %66, %63
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %3, align 8
  %77 = icmp ne i64 %76, 128
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @ADAPT_SUCCESS, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %78, %75
  %83 = phi i1 [ false, %75 ], [ %81, %78 ]
  br i1 %83, label %7, label %84

84:                                               ; preds = %82
  %85 = load %struct.scsi_info*, %struct.scsi_info** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %85, i32 0, i32 0
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %87, i64 %88)
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i64 @h_free_crq(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
