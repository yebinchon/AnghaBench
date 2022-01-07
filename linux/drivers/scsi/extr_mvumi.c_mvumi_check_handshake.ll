; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_handshake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_mvumi.c_mvumi_check_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvumi_hba = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@HANDSHAKE_READYSTATE = common dso_local global i32 0, align 4
@HANDSHAKE_DONESTATE = common dso_local global i32 0, align 4
@DRBL_MU_RESET = common dso_local global i32 0, align 4
@FW_MAX_DELAY = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid signature [0x%x].\0A\00", align 1
@FW_STATE_STARTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"start firmware handshake...\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"handshake failed at state 0x%x.\0A\00", align 1
@FW_STATE_STARTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"firmware handshake done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.mvumi_hba*)* @mvumi_check_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @mvumi_check_handshake(%struct.mvumi_hba* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.mvumi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mvumi_hba* %0, %struct.mvumi_hba** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %8 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ioread32(i32 %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %51, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HANDSHAKE_READYSTATE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @HANDSHAKE_DONESTATE, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  br i1 %22, label %23, label %60

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HANDSHAKE_READYSTATE, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i32, i32* @DRBL_MU_RESET, align 4
  %29 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %30 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iowrite32(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @FW_MAX_DELAY, align 8
  %39 = load i64, i64* @HZ, align 8
  %40 = mul i64 %38, %39
  %41 = add i64 %37, %40
  %42 = call i64 @time_after(i64 %36, i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %46 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i8 -1, i8* %2, align 1
  br label %95

51:                                               ; preds = %35
  %52 = call i32 @usleep_range(i32 1000, i32 2000)
  %53 = call i32 (...) @rmb()
  %54 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ioread32(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %13

60:                                               ; preds = %21
  %61 = load i32, i32* @FW_STATE_STARTING, align 4
  %62 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %63 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %65 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @dev_dbg(i32* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %83, %60
  %70 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %71 = call i64 @mvumi_handshake_event(%struct.mvumi_hba* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %69
  %74 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %75 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %79 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i8 -1, i8* %2, align 1
  br label %95

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %85 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @FW_STATE_STARTED, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %69, label %89

89:                                               ; preds = %83
  %90 = load %struct.mvumi_hba*, %struct.mvumi_hba** %3, align 8
  %91 = getelementptr inbounds %struct.mvumi_hba, %struct.mvumi_hba* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i8 0, i8* %2, align 1
  br label %95

95:                                               ; preds = %89, %73, %44
  %96 = load i8, i8* %2, align 1
  ret i8 %96
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @iowrite32(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @mvumi_handshake_event(%struct.mvumi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
