; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_uart_port = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.uart_port = type { i64, i32, i32 }

@sprd_port = common dso_local global %struct.sprd_uart_port** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"uart%d can't get uart clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"uart%d can't get source clock\0A\00", align 1
@SPRD_DEFAULT_SOURCE_CLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"uart%d can't get enable clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sprd_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_clk_init(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.sprd_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.sprd_uart_port**, %struct.sprd_uart_port*** @sprd_port, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.sprd_uart_port*, %struct.sprd_uart_port** %7, i64 %10
  %12 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %11, align 8
  store %struct.sprd_uart_port* %12, %struct.sprd_uart_port** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @devm_clk_get(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = bitcast i8* %16 to %struct.clk*
  store %struct.clk* %17, %struct.clk** %4, align 8
  %18 = load %struct.clk*, %struct.clk** %4, align 8
  %19 = call i64 @IS_ERR(%struct.clk* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  store %struct.clk* null, %struct.clk** %4, align 8
  br label %29

29:                                               ; preds = %21, %1
  %30 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @devm_clk_get(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %34 = bitcast i8* %33 to %struct.clk*
  store %struct.clk* %34, %struct.clk** %5, align 8
  %35 = load %struct.clk*, %struct.clk** %5, align 8
  %36 = call i64 @IS_ERR(%struct.clk* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  store %struct.clk* null, %struct.clk** %5, align 8
  br label %46

46:                                               ; preds = %38, %29
  %47 = load %struct.clk*, %struct.clk** %4, align 8
  %48 = icmp ne %struct.clk* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = load %struct.clk*, %struct.clk** %5, align 8
  %52 = call i64 @clk_set_parent(%struct.clk* %50, %struct.clk* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @SPRD_DEFAULT_SOURCE_CLK, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.clk*, %struct.clk** %4, align 8
  %60 = call i32 @clk_get_rate(%struct.clk* %59)
  %61 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @devm_clk_get(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %68 = bitcast i8* %67 to %struct.clk*
  %69 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %6, align 8
  %70 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %69, i32 0, i32 0
  store %struct.clk* %68, %struct.clk** %70, align 8
  %71 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %6, align 8
  %72 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %71, i32 0, i32 0
  %73 = load %struct.clk*, %struct.clk** %72, align 8
  %74 = call i64 @IS_ERR(%struct.clk* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %106

76:                                               ; preds = %63
  %77 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %6, align 8
  %78 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %77, i32 0, i32 0
  %79 = load %struct.clk*, %struct.clk** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.clk* %79)
  %81 = load i32, i32* @EPROBE_DEFER, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EPROBE_DEFER, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %107

87:                                               ; preds = %76
  %88 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @dev_warn(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %93)
  %95 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %96 = call i32 @sprd_uart_is_console(%struct.uart_port* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %87
  %99 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %6, align 8
  %100 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %99, i32 0, i32 0
  %101 = load %struct.clk*, %struct.clk** %100, align 8
  %102 = call i32 @PTR_ERR(%struct.clk* %101)
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %87
  %104 = load %struct.sprd_uart_port*, %struct.sprd_uart_port** %6, align 8
  %105 = getelementptr inbounds %struct.sprd_uart_port, %struct.sprd_uart_port* %104, i32 0, i32 0
  store %struct.clk* null, %struct.clk** %105, align 8
  br label %106

106:                                              ; preds = %103, %63
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %98, %84
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i64 @clk_set_parent(%struct.clk*, %struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @sprd_uart_is_console(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
