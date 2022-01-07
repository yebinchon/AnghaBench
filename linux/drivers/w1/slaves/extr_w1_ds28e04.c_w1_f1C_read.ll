; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds28e04.c_w1_f1C_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32 }

@EIO = common dso_local global i32 0, align 4
@W1_F1C_READ_EEPROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32, i8*)* @w1_f1C_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f1C_read(%struct.w1_slave* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i32], align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %12 = call i64 @w1_reset_select_slave(%struct.w1_slave* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %37

17:                                               ; preds = %4
  %18 = load i32, i32* @W1_F1C_READ_EEPROM, align 4
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  store i32 %24, i32* %25, align 4
  %26 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %27 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %30 = call i32 @w1_write_block(i32 %28, i32* %29, i32 12)
  %31 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %32 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @w1_read_block(i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %17, %14
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @w1_write_block(i32, i32*, i32) #1

declare dso_local i32 @w1_read_block(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
