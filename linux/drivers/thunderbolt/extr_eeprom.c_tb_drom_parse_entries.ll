; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i64 }
%struct.tb_drom_header = type { i64 }
%struct.tb_drom_entry_header = type { i64, i32 }

@TB_DROM_DATA_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"drom buffer overrun, aborting\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*)* @tb_drom_parse_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_drom_parse_entries(%struct.tb_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca %struct.tb_drom_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tb_drom_entry_header*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  %9 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %10 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.tb_drom_header*
  store %struct.tb_drom_header* %13, %struct.tb_drom_header** %4, align 8
  store i64 8, i64* %5, align 8
  %14 = load %struct.tb_drom_header*, %struct.tb_drom_header** %4, align 8
  %15 = getelementptr inbounds %struct.tb_drom_header, %struct.tb_drom_header* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TB_DROM_DATA_START, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %70, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %25 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %26, %27
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.tb_drom_entry_header*
  store %struct.tb_drom_entry_header* %30, %struct.tb_drom_entry_header** %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %48, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %38 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %45 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %35, %23
  %49 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %50 = call i32 @tb_sw_warn(%struct.tb_switch* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %77

53:                                               ; preds = %43
  %54 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %55 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %65 [
    i32 129, label %57
    i32 128, label %61
  ]

57:                                               ; preds = %53
  %58 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %59 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %60 = call i32 @tb_drom_parse_entry_generic(%struct.tb_switch* %58, %struct.tb_drom_entry_header* %59)
  store i32 %60, i32* %7, align 4
  br label %65

61:                                               ; preds = %53
  %62 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %63 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %64 = call i32 @tb_drom_parse_entry_port(%struct.tb_switch* %62, %struct.tb_drom_entry_header* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %53, %61, %57
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %77

70:                                               ; preds = %65
  %71 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %8, align 8
  %72 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %5, align 8
  br label %19

76:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %68, %48
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*) #1

declare dso_local i32 @tb_drom_parse_entry_generic(%struct.tb_switch*, %struct.tb_drom_entry_header*) #1

declare dso_local i32 @tb_drom_parse_entry_port(%struct.tb_switch*, %struct.tb_drom_entry_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
