; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-mcp795.c_mcp795_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@MCP795_REG_ALM0_SECONDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Read alarm: %ptRdr(%d) %ptRt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @mcp795_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp795_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @MCP795_REG_ALM0_SECONDS, align 4
  %10 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %11 = call i32 @mcp795_rtcc_read(%struct.device* %8, i32 %9, i32* %10, i32 24)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %18 = load i32, i32* %17, align 16
  %19 = and i32 %18, 127
  %20 = call i8* @bcd2bin(i32 %19)
  %21 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %22 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  store i8* %20, i8** %23, align 8
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 127
  %27 = call i8* @bcd2bin(i32 %26)
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  store i8* %27, i8** %30, align 8
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 31
  %34 = call i8* @bcd2bin(i32 %33)
  %35 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %36 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  store i8* %34, i8** %37, align 8
  %38 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 7
  %41 = call i8* @bcd2bin(i32 %40)
  %42 = getelementptr i8, i8* %41, i64 -1
  %43 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %44 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  %47 = load i32, i32* %46, align 16
  %48 = and i32 %47, 63
  %49 = call i8* @bcd2bin(i32 %48)
  %50 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %51 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 5
  store i8* %49, i8** %52, align 8
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 31
  %56 = call i8* @bcd2bin(i32 %55)
  %57 = getelementptr i8, i8* %56, i64 -1
  %58 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %59 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i8* %57, i8** %60, align 8
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %65 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 4
  %67 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %68 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i32 -1, i32* %69, align 8
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %71, i32 0, i32 0
  %73 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %74 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %78 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %77, i32 0, i32 0
  %79 = call i32 @dev_dbg(%struct.device* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %72, i8* %76, %struct.TYPE_3__* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %16, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mcp795_rtcc_read(%struct.device*, i32, i32*, i32) #1

declare dso_local i8* @bcd2bin(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.TYPE_3__*, i8*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
