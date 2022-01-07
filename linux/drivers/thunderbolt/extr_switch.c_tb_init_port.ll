; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_tb_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_port = type { i64, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@TB_CFG_PORT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c" Port %d: not implemented\0A\00", align 1
@TB_TYPE_PORT = common dso_local global i64 0, align 8
@TB_PORT_CAP_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"non switch port without a PHY\0A\00", align 1
@TB_PORT_CAP_ADAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_port*)* @tb_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_init_port(%struct.tb_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tb_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tb_port* %0, %struct.tb_port** %3, align 8
  %6 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %7 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %8 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %7, i32 0, i32 5
  %9 = load i32, i32* @TB_CFG_PORT, align 4
  %10 = call i32 @tb_port_read(%struct.tb_port* %6, %struct.TYPE_5__* %8, i32 %9, i32 0, i32 8)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %20 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %19, i32 0, i32 6
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %25 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tb_dbg(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 0, i32* %2, align 4
  br label %94

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %94

30:                                               ; preds = %1
  %31 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %32 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TB_TYPE_PORT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %30
  %38 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %39 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %44 = load i32, i32* @TB_PORT_CAP_PHY, align 4
  %45 = call i32 @tb_port_find_cap(%struct.tb_port* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %51 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %55

52:                                               ; preds = %42
  %53 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %54 = call i32 @tb_port_WARN(%struct.tb_port* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  br label %73

56:                                               ; preds = %37, %30
  %57 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %58 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %56
  %62 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %63 = load i32, i32* @TB_PORT_CAP_ADAP, align 4
  %64 = call i32 @tb_port_find_cap(%struct.tb_port* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %70 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %61
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %75 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %74, i32 0, i32 6
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %80 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %79, i32 0, i32 5
  %81 = call i32 @tb_dump_port(i32 %78, %struct.TYPE_5__* %80)
  %82 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %83 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %73
  %87 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %88 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %87, i32 0, i32 4
  %89 = call i32 @ida_init(i32* %88)
  %90 = load %struct.tb_port*, %struct.tb_port** %3, align 8
  %91 = getelementptr inbounds %struct.tb_port, %struct.tb_port* %90, i32 0, i32 3
  %92 = call i32 @ida_init(i32* %91)
  br label %93

93:                                               ; preds = %86, %73
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %28, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @tb_port_read(%struct.tb_port*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @tb_dbg(i32, i8*, i64) #1

declare dso_local i32 @tb_port_find_cap(%struct.tb_port*, i32) #1

declare dso_local i32 @tb_port_WARN(%struct.tb_port*, i8*) #1

declare dso_local i32 @tb_dump_port(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ida_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
