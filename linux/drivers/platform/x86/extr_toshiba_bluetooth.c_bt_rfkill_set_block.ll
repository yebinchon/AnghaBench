; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_bt_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_bluetooth.c_bt_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_bluetooth_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @bt_rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt_rfkill_set_block(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.toshiba_bluetooth_dev*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.toshiba_bluetooth_dev*
  store %struct.toshiba_bluetooth_dev* %9, %struct.toshiba_bluetooth_dev** %6, align 8
  %10 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %6, align 8
  %11 = call i32 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %6, align 8
  %18 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %41

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %6, align 8
  %27 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @toshiba_bluetooth_disable(i32 %30)
  store i32 %31, i32* %7, align 4
  br label %39

32:                                               ; preds = %22
  %33 = load %struct.toshiba_bluetooth_dev*, %struct.toshiba_bluetooth_dev** %6, align 8
  %34 = getelementptr inbounds %struct.toshiba_bluetooth_dev, %struct.toshiba_bluetooth_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @toshiba_bluetooth_enable(i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %32, %25
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %21, %14
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @toshiba_bluetooth_sync_status(%struct.toshiba_bluetooth_dev*) #1

declare dso_local i32 @toshiba_bluetooth_disable(i32) #1

declare dso_local i32 @toshiba_bluetooth_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
