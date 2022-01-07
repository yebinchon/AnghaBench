; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i32, i32, %struct.rtsx_dev* }
%struct.rtsx_dev = type { i64, i32, %struct.completion*, i32, i64 }
%struct.completion = type { i32 }

@SD_CARD = common dso_local global i64 0, align 8
@SD_EXIST = common dso_local global i64 0, align 8
@MS_CARD = common dso_local global i64 0, align 8
@MS_EXIST = common dso_local global i64 0, align 8
@XD_CARD = common dso_local global i64 0, align 8
@XD_EXIST = common dso_local global i64 0, align 8
@TRANS_NOT_READY = common dso_local global i64 0, align 8
@STATE_TRANS_CMD = common dso_local global i32 0, align 4
@RTSX_HCBAR = common dso_local global i32 0, align 4
@RTSX_HCBCTLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"chip->int_reg = 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@TRANS_RESULT_FAIL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@TRANS_RESULT_OK = common dso_local global i64 0, align 8
@STATE_TRANS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtsx_dev*, align 8
  %8 = alloca %struct.completion, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 3
  %14 = load %struct.rtsx_dev*, %struct.rtsx_dev** %13, align 8
  store %struct.rtsx_dev* %14, %struct.rtsx_dev** %7, align 8
  %15 = call i32 @BIT(i32 31)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @SD_CARD, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i64, i64* @SD_EXIST, align 8
  %21 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %22 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %21, i32 0, i32 4
  store i64 %20, i64* %22, align 8
  br label %44

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @MS_CARD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i64, i64* @MS_EXIST, align 8
  %29 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  br label %43

31:                                               ; preds = %23
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @XD_CARD, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @XD_EXIST, align 8
  %37 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %38 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %41 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %46 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %45, i32 0, i32 3
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %49 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %48, i32 0, i32 2
  store %struct.completion* %8, %struct.completion** %49, align 8
  %50 = load i64, i64* @TRANS_NOT_READY, align 8
  %51 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %52 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = call i32 @init_completion(%struct.completion* %8)
  %54 = load i32, i32* @STATE_TRANS_CMD, align 4
  %55 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %56 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %58 = load i32, i32* @RTSX_HCBAR, align 4
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %60 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @rtsx_writel(%struct.rtsx_chip* %57, i32 %58, i32 %61)
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %64 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, 4
  %67 = and i32 %66, 16777215
  %68 = load i32, i32* %9, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = or i32 %70, 1073741824
  store i32 %71, i32* %9, align 4
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %73 = load i32, i32* @RTSX_HCBCTLR, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @rtsx_writel(%struct.rtsx_chip* %72, i32 %73, i32 %74)
  %76 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %77 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @msecs_to_jiffies(i32 %79)
  %81 = call i64 @wait_for_completion_interruptible_timeout(%struct.completion* %8, i32 %80)
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %44
  %85 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %86 = call i32 @rtsx_dev(%struct.rtsx_chip* %85)
  %87 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %88 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @ETIMEDOUT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %117

93:                                               ; preds = %44
  %94 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %95 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %94, i32 0, i32 3
  %96 = call i32 @spin_lock_irq(i32* %95)
  %97 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %98 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @TRANS_RESULT_FAIL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %113

105:                                              ; preds = %93
  %106 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %107 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @TRANS_RESULT_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %105
  br label %113

113:                                              ; preds = %112, %102
  %114 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %115 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %114, i32 0, i32 3
  %116 = call i32 @spin_unlock_irq(i32* %115)
  br label %117

117:                                              ; preds = %113, %84
  %118 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %119 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %118, i32 0, i32 2
  store %struct.completion* null, %struct.completion** %119, align 8
  %120 = load i32, i32* @STATE_TRANS_NONE, align 4
  %121 = load %struct.rtsx_dev*, %struct.rtsx_dev** %7, align 8
  %122 = getelementptr inbounds %struct.rtsx_dev, %struct.rtsx_dev* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @rtsx_stop_cmd(%struct.rtsx_chip* %126, i64 %127)
  br label %129

129:                                              ; preds = %125, %117
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @rtsx_writel(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(%struct.completion*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_stop_cmd(%struct.rtsx_chip*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
