; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_set_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@MCP795_REG_SECONDS = common dso_local global i32 0, align 4
@MCP795_LP_BIT = common dso_local global i32 0, align 4
@MCP795_REG_MONTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Set mcp795: %ptR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @mcp795_set_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_set_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @mcp795_stop_oscillator(%struct.device* %9, i32* %8)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %123

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @MCP795_REG_SECONDS, align 4
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %19 = call i32 @mcp795_rtcc_read(%struct.device* %16, i32 %17, i32* %18, i32 28)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %123

24:                                               ; preds = %15
  %25 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = and i32 %26, 128
  %28 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bin2bcd(i32 %30)
  %32 = or i32 %27, %31
  %33 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 128
  %37 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %38 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bin2bcd(i32 %39)
  %41 = or i32 %36, %40
  %42 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 1
  store i32 %41, i32* %42, align 4
  %43 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bin2bcd(i32 %45)
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 2
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 248
  %51 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @bin2bcd(i32 %54)
  %56 = or i32 %50, %55
  %57 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 3
  store i32 %56, i32* %57, align 4
  %58 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bin2bcd(i32 %60)
  %62 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 4
  store i32 %61, i32* %62, align 16
  %63 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MCP795_LP_BIT, align 4
  %66 = and i32 %64, %65
  %67 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @bin2bcd(i32 %70)
  %72 = or i32 %66, %71
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  store i32 %72, i32* %73, align 4
  %74 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 100
  br i1 %77, label %78, label %83

78:                                               ; preds = %24
  %79 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 100
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %24
  %84 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bin2bcd(i32 %86)
  %88 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 6
  store i32 %87, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = load i32, i32* @MCP795_REG_SECONDS, align 4
  %91 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 0
  %92 = call i32 @mcp795_rtcc_write(%struct.device* %89, i32 %90, i32* %91, i32 5)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %123

97:                                               ; preds = %83
  %98 = load %struct.device*, %struct.device** %4, align 8
  %99 = load i32, i32* @MCP795_REG_MONTH, align 4
  %100 = getelementptr inbounds [7 x i32], [7 x i32]* %7, i64 0, i64 5
  %101 = call i32 @mcp795_rtcc_write(%struct.device* %98, i32 %99, i32* %100, i32 2)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %123

106:                                              ; preds = %97
  %107 = load %struct.device*, %struct.device** %4, align 8
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %112

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %110
  %113 = phi i32* [ %8, %110 ], [ null, %111 ]
  %114 = call i32 @mcp795_start_oscillator(%struct.device* %107, i32* %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %123

119:                                              ; preds = %112
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %122 = call i32 @dev_dbg(%struct.device* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.rtc_time* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %117, %104, %95, %22, %13
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @mcp795_stop_oscillator(%struct.device*, i32*) #1

declare dso_local i32 @mcp795_rtcc_read(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @bin2bcd(i32) #1

declare dso_local i32 @mcp795_rtcc_write(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @mcp795_start_oscillator(%struct.device*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
