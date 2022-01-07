; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_read_uid_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_read_uid_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"uid crc8 mismatch (expected: %#x, got: %#x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_drom_read_uid_only(%struct.tb_switch* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [9 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %11 = call i32 @tb_eeprom_get_drom_offset(%struct.tb_switch* %10, i64* %7)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %2
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %16
  %23 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %26 = call i32 @tb_eeprom_read_n(%struct.tb_switch* %23, i64 %24, i64* %25, i32 9)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %22
  %32 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = call i64 @tb_crc8(i64* %33, i32 8)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %41 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @tb_sw_warn(%struct.tb_switch* %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %31
  %48 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = bitcast i64* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %39, %29, %19, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @tb_eeprom_get_drom_offset(%struct.tb_switch*, i64*) #1

declare dso_local i32 @tb_eeprom_read_n(%struct.tb_switch*, i64, i64*, i32) #1

declare dso_local i64 @tb_crc8(i64*, i32) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
