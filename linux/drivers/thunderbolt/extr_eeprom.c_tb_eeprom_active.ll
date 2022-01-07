; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_eeprom_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.tb_eeprom_ctl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, i32)* @tb_eeprom_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_eeprom_active(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_eeprom_ctl, align 4
  %7 = alloca i32, align 4
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %9 = call i32 @tb_eeprom_ctl_read(%struct.tb_switch* %8, %struct.tb_eeprom_ctl* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %41

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tb_eeprom_ctl, %struct.tb_eeprom_ctl* %6, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %20 = call i32 @tb_eeprom_ctl_write(%struct.tb_switch* %19, %struct.tb_eeprom_ctl* %6)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tb_eeprom_ctl, %struct.tb_eeprom_ctl* %6, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %28 = call i32 @tb_eeprom_ctl_write(%struct.tb_switch* %27, %struct.tb_eeprom_ctl* %6)
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.tb_eeprom_ctl, %struct.tb_eeprom_ctl* %6, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %32 = call i32 @tb_eeprom_ctl_write(%struct.tb_switch* %31, %struct.tb_eeprom_ctl* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tb_eeprom_ctl, %struct.tb_eeprom_ctl* %6, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %40 = call i32 @tb_eeprom_ctl_write(%struct.tb_switch* %39, %struct.tb_eeprom_ctl* %6)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %25, %23, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @tb_eeprom_ctl_read(%struct.tb_switch*, %struct.tb_eeprom_ctl*) #1

declare dso_local i32 @tb_eeprom_ctl_write(%struct.tb_switch*, %struct.tb_eeprom_ctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
