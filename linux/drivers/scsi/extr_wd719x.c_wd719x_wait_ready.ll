; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WD719X_AMR_COMMAND = common dso_local global i32 0, align 4
@WD719X_CMD_READY = common dso_local global i64 0, align 8
@WD719X_WAIT_FOR_CMD_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"command register is not ready: 0x%02x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wd719x*)* @wd719x_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wd719x_wait_ready(%struct.wd719x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wd719x*, align 8
  %4 = alloca i32, align 4
  store %struct.wd719x* %0, %struct.wd719x** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %7 = load i32, i32* @WD719X_AMR_COMMAND, align 4
  %8 = call i64 @wd719x_readb(%struct.wd719x* %6, i32 %7)
  %9 = load i64, i64* @WD719X_CMD_READY, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %5
  %13 = call i32 @udelay(i32 1)
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @WD719X_WAIT_FOR_CMD_READY, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %5, label %19

19:                                               ; preds = %14
  %20 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %21 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.wd719x*, %struct.wd719x** %3, align 8
  %25 = load i32, i32* @WD719X_AMR_COMMAND, align 4
  %26 = call i64 @wd719x_readb(%struct.wd719x* %24, i32 %25)
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @wd719x_readb(%struct.wd719x*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
