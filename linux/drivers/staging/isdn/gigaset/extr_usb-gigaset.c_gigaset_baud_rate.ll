; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_usb-gigaset.c_gigaset_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32 }

@CBAUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"unsupported baudrate request 0x%x, using default of B9600\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32)* @gigaset_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_baud_rate(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CBAUD, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %21 [
    i32 133, label %11
    i32 129, label %12
    i32 136, label %13
    i32 134, label %14
    i32 131, label %15
    i32 128, label %16
    i32 135, label %17
    i32 132, label %18
    i32 130, label %19
    i32 137, label %20
  ]

11:                                               ; preds = %2
  store i32 300, i32* %6, align 4
  br label %27

12:                                               ; preds = %2
  store i32 600, i32* %6, align 4
  br label %27

13:                                               ; preds = %2
  store i32 1200, i32* %6, align 4
  br label %27

14:                                               ; preds = %2
  store i32 2400, i32* %6, align 4
  br label %27

15:                                               ; preds = %2
  store i32 4800, i32* %6, align 4
  br label %27

16:                                               ; preds = %2
  store i32 9600, i32* %6, align 4
  br label %27

17:                                               ; preds = %2
  store i32 19200, i32* %6, align 4
  br label %27

18:                                               ; preds = %2
  store i32 38400, i32* %6, align 4
  br label %27

19:                                               ; preds = %2
  store i32 57600, i32* %6, align 4
  br label %27

20:                                               ; preds = %2
  store i32 115200, i32* %6, align 4
  br label %27

21:                                               ; preds = %2
  store i32 9600, i32* %6, align 4
  %22 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %23 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 3686399, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @set_value(%struct.cardstate* %31, i32 1, i32 %32)
  ret i32 %33
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @set_value(%struct.cardstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
