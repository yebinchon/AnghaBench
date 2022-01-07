; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.rtc_time, i64 }
%struct.rtc_time = type { i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SEC_PER_DAY = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@MCP795_REG_ALM0_SECONDS = common dso_local global i32 0, align 4
@MCP795_ALM0C2_BIT = common dso_local global i32 0, align 4
@MCP795_ALM0C1_BIT = common dso_local global i32 0, align 4
@MCP795_ALM0C0_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Alarm IRQ armed\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Set alarm: %ptRdr(%d) %ptRt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mcp795_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.rtc_time, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @mcp795_read_time(%struct.device* %11, %struct.rtc_time* %6)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %3, align 4
  br label %175

17:                                               ; preds = %2
  %18 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %6)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %20 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %19, i32 0, i32 0
  %21 = call i64 @rtc_tm_to_time64(%struct.rtc_time* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %175

28:                                               ; preds = %17
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i32, i32* @SEC_PER_DAY, align 4
  %33 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %34 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @is_leap_year(i32 %36)
  %38 = add nsw i32 365, %37
  %39 = mul nsw i32 %32, %38
  %40 = sext i32 %39 to i64
  %41 = icmp sge i64 %31, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load i32, i32* @EDOM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %175

45:                                               ; preds = %28
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @mcp795_update_alarm(%struct.device* %46, i32 0)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %175

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load i32, i32* @MCP795_REG_ALM0_SECONDS, align 4
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %56 = call i32 @mcp795_rtcc_read(%struct.device* %53, i32 %54, i32* %55, i32 24)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %3, align 4
  br label %175

61:                                               ; preds = %52
  %62 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %63 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  %65 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %66 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 4
  %68 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %69 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %69, i32 0, i32 2
  store i32 -1, i32* %70, align 8
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = and i32 %72, 128
  %74 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %75 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @bin2bcd(i64 %77)
  %79 = or i32 %73, %78
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  store i32 %79, i32* %80, align 16
  %81 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 128
  %84 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %85 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @bin2bcd(i64 %87)
  %89 = or i32 %83, %88
  %90 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 224
  %94 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %95 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bin2bcd(i64 %97)
  %99 = or i32 %93, %98
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  store i32 %99, i32* %100, align 8
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 128
  %104 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %105 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = call i32 @bin2bcd(i64 %108)
  %110 = or i32 %103, %109
  %111 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @MCP795_ALM0C2_BIT, align 4
  %113 = load i32, i32* @MCP795_ALM0C1_BIT, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MCP795_ALM0C0_BIT, align 4
  %116 = or i32 %114, %115
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %121 = load i32, i32* %120, align 16
  %122 = and i32 %121, 192
  %123 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %124 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @bin2bcd(i64 %126)
  %128 = or i32 %122, %127
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  store i32 %128, i32* %129, align 16
  %130 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 224
  %133 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %134 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  %138 = call i32 @bin2bcd(i64 %137)
  %139 = or i32 %132, %138
  %140 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  store i32 %139, i32* %140, align 4
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load i32, i32* @MCP795_REG_ALM0_SECONDS, align 4
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %144 = call i32 @mcp795_rtcc_write(%struct.device* %141, i32 %142, i32* %143, i32 24)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %61
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %3, align 4
  br label %175

149:                                              ; preds = %61
  %150 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %151 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load %struct.device*, %struct.device** %4, align 8
  %156 = call i32 @mcp795_update_alarm(%struct.device* %155, i32 1)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %3, align 4
  br label %175

161:                                              ; preds = %154
  %162 = load %struct.device*, %struct.device** %4, align 8
  %163 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %149
  %165 = load %struct.device*, %struct.device** %4, align 8
  %166 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %167 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %166, i32 0, i32 0
  %168 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %169 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %173 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %172, i32 0, i32 0
  %174 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.rtc_time* %167, i64 %171, %struct.rtc_time* %173)
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %164, %159, %147, %59, %50, %42, %25, %15
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @mcp795_read_time(%struct.device*, %struct.rtc_time*) #1

declare dso_local i64 @rtc_tm_to_time64(%struct.rtc_time*) #1

declare dso_local i32 @is_leap_year(i32) #1

declare dso_local i32 @mcp795_update_alarm(%struct.device*, i32) #1

declare dso_local i32 @mcp795_rtcc_read(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @bin2bcd(i64) #1

declare dso_local i32 @mcp795_rtcc_write(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
