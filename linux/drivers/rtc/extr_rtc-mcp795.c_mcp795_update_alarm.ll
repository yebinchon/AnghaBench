; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_update_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_update_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"%s alarm\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@MCP795_REG_ALM0_DAY = common dso_local global i32 0, align 4
@MCP795_ALM0IF_BIT = common dso_local global i32 0, align 4
@MCP795_REG_CONTROL = common dso_local global i32 0, align 4
@MCP795_ALM0_BIT = common dso_local global i32 0, align 4
@MCP795_ALM1_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @mcp795_update_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_update_alarm(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 @dev_dbg(%struct.device* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @MCP795_REG_ALM0_DAY, align 4
  %18 = load i32, i32* @MCP795_ALM0IF_BIT, align 4
  %19 = call i32 @mcp795_rtcc_set_bits(%struct.device* %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load i32, i32* @MCP795_REG_CONTROL, align 4
  %27 = load i32, i32* @MCP795_ALM0_BIT, align 4
  %28 = load i32, i32* @MCP795_ALM0_BIT, align 4
  %29 = call i32 @mcp795_rtcc_set_bits(%struct.device* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %2
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @MCP795_REG_CONTROL, align 4
  %33 = load i32, i32* @MCP795_ALM0_BIT, align 4
  %34 = load i32, i32* @MCP795_ALM1_BIT, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @mcp795_rtcc_set_bits(%struct.device* %31, i32 %32, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %22
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @mcp795_rtcc_set_bits(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
