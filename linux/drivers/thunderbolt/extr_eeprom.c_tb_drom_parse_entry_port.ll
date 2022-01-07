; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entry_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_eeprom.c_tb_drom_parse_entry_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { %struct.tb_port*, i32, %struct.TYPE_3__ }
%struct.tb_port = type { %struct.TYPE_4__*, i32*, i32, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }
%struct.tb_drom_entry_header = type { i64, i32, i64 }
%struct.tb_drom_entry_port = type { i64, i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"ignoring unnecessary extra entries in DROM\0A\00", align 1
@TB_CFG_PORT = common dso_local global i32 0, align 4
@TB_TYPE_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"port entry has size %#x (expected %#zx)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_switch*, %struct.tb_drom_entry_header*)* @tb_drom_parse_entry_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_drom_parse_entry_port(%struct.tb_switch* %0, %struct.tb_drom_entry_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_switch*, align 8
  %5 = alloca %struct.tb_drom_entry_header*, align 8
  %6 = alloca %struct.tb_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tb_drom_entry_port*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %4, align 8
  store %struct.tb_drom_entry_header* %1, %struct.tb_drom_entry_header** %5, align 8
  %10 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %11 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %14 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %20 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %19, i32 0, i32 1
  %21 = call i32 @dev_info_once(i32* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %24 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %23, i32 0, i32 0
  %25 = load %struct.tb_port*, %struct.tb_port** %24, align 8
  %26 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %27 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %25, i64 %28
  store %struct.tb_port* %29, %struct.tb_port** %6, align 8
  %30 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %31 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %34 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %36 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %95

40:                                               ; preds = %22
  %41 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %42 = load i32, i32* @TB_CFG_PORT, align 4
  %43 = call i32 @tb_port_read(%struct.tb_port* %41, i32* %8, i32 %42, i32 2, i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %95

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %49, 16777215
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @TB_TYPE_PORT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %48
  %55 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %56 = bitcast %struct.tb_drom_entry_header* %55 to i8*
  %57 = bitcast i8* %56 to %struct.tb_drom_entry_port*
  store %struct.tb_drom_entry_port* %57, %struct.tb_drom_entry_port** %9, align 8
  %58 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %59 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 24
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load %struct.tb_switch*, %struct.tb_switch** %4, align 8
  %65 = load %struct.tb_drom_entry_header*, %struct.tb_drom_entry_header** %5, align 8
  %66 = getelementptr inbounds %struct.tb_drom_entry_header, %struct.tb_drom_entry_header* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @tb_sw_warn(%struct.tb_switch* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 24)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %95

71:                                               ; preds = %54
  %72 = load %struct.tb_drom_entry_port*, %struct.tb_drom_entry_port** %9, align 8
  %73 = getelementptr inbounds %struct.tb_drom_entry_port, %struct.tb_drom_entry_port* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %76 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tb_drom_entry_port*, %struct.tb_drom_entry_port** %9, align 8
  %78 = getelementptr inbounds %struct.tb_drom_entry_port, %struct.tb_drom_entry_port* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %71
  %82 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %83 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.tb_drom_entry_port*, %struct.tb_drom_entry_port** %9, align 8
  %88 = getelementptr inbounds %struct.tb_drom_entry_port, %struct.tb_drom_entry_port* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load %struct.tb_port*, %struct.tb_port** %6, align 8
  %92 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %81, %71
  br label %94

94:                                               ; preds = %93, %48
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %63, %46, %39, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dev_info_once(i32*, i8*) #1

declare dso_local i32 @tb_port_read(%struct.tb_port*, i32*, i32, i32, i32) #1

declare dso_local i32 @tb_sw_warn(%struct.tb_switch*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
