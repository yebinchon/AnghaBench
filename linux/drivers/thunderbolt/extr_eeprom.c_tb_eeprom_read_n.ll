; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_read_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_read_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32, i32*, i64)* @tb_eeprom_read_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_eeprom_read_n(%struct.tb_switch* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %13 = call i32 @tb_eeprom_active(%struct.tb_switch* %12, i32 1)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %5, align 4
  br label %66

18:                                               ; preds = %4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %20 = call i32 @tb_eeprom_out(%struct.tb_switch* %19, i32 3)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %66

25:                                               ; preds = %18
  %26 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @tb_eeprom_out(%struct.tb_switch* %26, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %5, align 4
  br label %66

34:                                               ; preds = %25
  %35 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @tb_eeprom_out(%struct.tb_switch* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %66

42:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %9, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @tb_eeprom_in(%struct.tb_switch* %49, i32* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.tb_switch*, %struct.tb_switch** %6, align 8
  %65 = call i32 @tb_eeprom_active(%struct.tb_switch* %64, i32 0)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %57, %40, %32, %23, %16
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @tb_eeprom_active(%struct.tb_switch*, i32) #1

declare dso_local i32 @tb_eeprom_out(%struct.tb_switch*, i32) #1

declare dso_local i32 @tb_eeprom_in(%struct.tb_switch*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
