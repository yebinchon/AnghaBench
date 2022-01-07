; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_port2ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_nozomi.c_port2ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nozomi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CTRL_MDM = common dso_local global i32 0, align 4
@CTRL_DIAG = common dso_local global i32 0, align 4
@CTRL_APP1 = common dso_local global i32 0, align 4
@CTRL_APP2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ERROR: send flow control received for non-existing port\0A\00", align 1
@CTRL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nozomi*)* @port2ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port2ctrl(i32 %0, %struct.nozomi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.nozomi*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.nozomi* %1, %struct.nozomi** %5, align 8
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %15 [
    i32 128, label %7
    i32 129, label %9
    i32 131, label %11
    i32 130, label %13
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @CTRL_MDM, align 4
  store i32 %8, i32* %3, align 4
  br label %23

9:                                                ; preds = %2
  %10 = load i32, i32* @CTRL_DIAG, align 4
  store i32 %10, i32* %3, align 4
  br label %23

11:                                               ; preds = %2
  %12 = load i32, i32* @CTRL_APP1, align 4
  store i32 %12, i32* %3, align 4
  br label %23

13:                                               ; preds = %2
  %14 = load i32, i32* @CTRL_APP2, align 4
  store i32 %14, i32* %3, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.nozomi*, %struct.nozomi** %5, align 8
  %17 = getelementptr inbounds %struct.nozomi, %struct.nozomi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @CTRL_ERROR, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %13, %11, %9, %7
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
