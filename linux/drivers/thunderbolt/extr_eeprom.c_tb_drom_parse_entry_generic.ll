; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entry_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entry_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i8*, i8* }
%struct.tb_drom_entry_header = type { i32, i32 }
%struct.tb_drom_entry_generic = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, %struct.tb_drom_entry_header*)* @tb_drom_parse_entry_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_drom_parse_entry_generic(%struct.tb_switch* %0, %struct.tb_drom_entry_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb_drom_entry_header*, align 8
  %6 = alloca %struct.tb_drom_entry_generic*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store %struct.tb_drom_entry_header* %1, %struct.tb_drom_entry_header** %5, align 8
  %7 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %8 = bitcast %struct.tb_drom_entry_header* %7 to %struct.tb_drom_entry_generic*
  store %struct.tb_drom_entry_generic* %8, %struct.tb_drom_entry_generic** %6, align 8
  %9 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %10 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %56 [
    i32 1, label %12
    i32 2, label %34
  ]

12:                                               ; preds = %2
  %13 = load %struct.tb_drom_entry_generic*, %struct.tb_drom_entry_generic** %6, align 8
  %14 = getelementptr inbounds %struct.tb_drom_entry_generic, %struct.tb_drom_entry_generic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %17 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kstrndup(i32 %15, i32 %21, i32 %22)
  %24 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %25 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %27 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %12
  br label %56

34:                                               ; preds = %2
  %35 = load %struct.tb_drom_entry_generic*, %struct.tb_drom_entry_generic** %6, align 8
  %36 = getelementptr inbounds %struct.tb_drom_entry_generic, %struct.tb_drom_entry_generic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %39 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = sub i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @kstrndup(i32 %37, i32 %43, i32 %44)
  %46 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %47 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %49 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %34
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %2, %55, %33
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %52, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @kstrndup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
