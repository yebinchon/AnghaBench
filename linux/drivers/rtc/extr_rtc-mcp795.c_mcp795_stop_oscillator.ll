; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_stop_oscillator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_stop_oscillator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@MCP795_REG_SECONDS = common dso_local global i32 0, align 4
@MCP795_ST_BIT = common dso_local global i32 0, align 4
@MCP795_REG_CONTROL = common dso_local global i32 0, align 4
@MCP795_EXTOSC_BIT = common dso_local global i32 0, align 4
@MCP795_REG_DAY = common dso_local global i32 0, align 4
@MCP795_OSCON_BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*)* @mcp795_stop_oscillator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_stop_oscillator(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 5, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @MCP795_REG_SECONDS, align 4
  %11 = load i32, i32* @MCP795_ST_BIT, align 4
  %12 = call i32 @mcp795_rtcc_set_bits(%struct.device* %9, i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %72

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @MCP795_REG_CONTROL, align 4
  %20 = call i32 @mcp795_rtcc_read(%struct.device* %18, i32 %19, i32* %8, i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %72

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @MCP795_EXTOSC_BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load i32, i32* @MCP795_REG_CONTROL, align 4
  %36 = load i32, i32* @MCP795_EXTOSC_BIT, align 4
  %37 = call i32 @mcp795_rtcc_set_bits(%struct.device* %34, i32 %35, i32 %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %72

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %58, %42
  %44 = call i32 @usleep_range(i32 700, i32 800)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* @MCP795_REG_DAY, align 4
  %47 = call i32 @mcp795_rtcc_read(%struct.device* %45, i32 %46, i32* %8, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %62

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @MCP795_OSCON_BIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %62

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %43, label %62

62:                                               ; preds = %58, %56, %50
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  br label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %67, %65 ], [ %69, %68 ]
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %40, %23, %15
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mcp795_rtcc_set_bits(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @mcp795_rtcc_read(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
