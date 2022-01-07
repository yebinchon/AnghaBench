; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_men_mcb.c_serial_8250_men_mcb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_men_mcb.c_serial_8250_men_mcb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcb_device = type { i32 }
%struct.serial_8250_men_mcb_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"error retrieving number of ports!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcb_device*)* @serial_8250_men_mcb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_8250_men_mcb_remove(%struct.mcb_device* %0) #0 {
  %2 = alloca %struct.mcb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.serial_8250_men_mcb_data*, align 8
  store %struct.mcb_device* %0, %struct.mcb_device** %2, align 8
  %6 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %7 = call %struct.serial_8250_men_mcb_data* @mcb_get_drvdata(%struct.mcb_device* %6)
  store %struct.serial_8250_men_mcb_data* %7, %struct.serial_8250_men_mcb_data** %5, align 8
  %8 = load %struct.serial_8250_men_mcb_data*, %struct.serial_8250_men_mcb_data** %5, align 8
  %9 = icmp ne %struct.serial_8250_men_mcb_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %13 = load %struct.serial_8250_men_mcb_data*, %struct.serial_8250_men_mcb_data** %5, align 8
  %14 = getelementptr inbounds %struct.serial_8250_men_mcb_data, %struct.serial_8250_men_mcb_data* %13, i64 0
  %15 = getelementptr inbounds %struct.serial_8250_men_mcb_data, %struct.serial_8250_men_mcb_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_num_ports(%struct.mcb_device* %12, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %11
  %26 = load %struct.mcb_device*, %struct.mcb_device** %2, align 8
  %27 = getelementptr inbounds %struct.mcb_device, %struct.mcb_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %45

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %42, %29
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.serial_8250_men_mcb_data*, %struct.serial_8250_men_mcb_data** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.serial_8250_men_mcb_data, %struct.serial_8250_men_mcb_data* %35, i64 %37
  %39 = getelementptr inbounds %struct.serial_8250_men_mcb_data, %struct.serial_8250_men_mcb_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @serial8250_unregister_port(i32 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %30

45:                                               ; preds = %10, %25, %30
  ret void
}

declare dso_local %struct.serial_8250_men_mcb_data* @mcb_get_drvdata(%struct.mcb_device*) #1

declare dso_local i32 @get_num_ports(%struct.mcb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @serial8250_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
