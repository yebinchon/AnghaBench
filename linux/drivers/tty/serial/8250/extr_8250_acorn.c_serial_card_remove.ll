; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_acorn.c_serial_card_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_acorn.c_serial_card_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expansion_card = type { i32 }
%struct.serial_card_info = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expansion_card*)* @serial_card_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_card_remove(%struct.expansion_card* %0) #0 {
  %2 = alloca %struct.expansion_card*, align 8
  %3 = alloca %struct.serial_card_info*, align 8
  %4 = alloca i32, align 4
  store %struct.expansion_card* %0, %struct.expansion_card** %2, align 8
  %5 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %6 = call %struct.serial_card_info* @ecard_get_drvdata(%struct.expansion_card* %5)
  store %struct.serial_card_info* %6, %struct.serial_card_info** %3, align 8
  %7 = load %struct.expansion_card*, %struct.expansion_card** %2, align 8
  %8 = call i32 @ecard_set_drvdata(%struct.expansion_card* %7, i32* null)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.serial_card_info*, %struct.serial_card_info** %3, align 8
  %12 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.serial_card_info*, %struct.serial_card_info** %3, align 8
  %17 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.serial_card_info*, %struct.serial_card_info** %3, align 8
  %26 = getelementptr inbounds %struct.serial_card_info, %struct.serial_card_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @serial8250_unregister_port(i64 %31)
  br label %33

33:                                               ; preds = %24, %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.serial_card_info*, %struct.serial_card_info** %3, align 8
  %39 = call i32 @kfree(%struct.serial_card_info* %38)
  ret void
}

declare dso_local %struct.serial_card_info* @ecard_get_drvdata(%struct.expansion_card*) #1

declare dso_local i32 @ecard_set_drvdata(%struct.expansion_card*, i32*) #1

declare dso_local i32 @serial8250_unregister_port(i64) #1

declare dso_local i32 @kfree(%struct.serial_card_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
