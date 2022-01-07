; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c___wlcore_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c___wlcore_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, i32, i8*, i64)* }
%struct.wl1271_cmd_header = type { i64, i32 }

@WLCORE_STATE_RESTARTING = common dso_local global i64 0, align 8
@CMD_STOP_FWLOGGER = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WL1271_FLAG_IN_ELP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WL1271_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@REG_INTERRUPT_NO_CLEAR = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_CMD_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"command complete timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@WL1271_CMD_FAST_POLL_COUNT = common dso_local global i64 0, align 8
@REG_INTERRUPT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, i64, i8*, i64, i64)* @__wlcore_cmd_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wlcore_cmd_send(%struct.wl1271* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wl1271_cmd_header*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLCORE_STATE_RESTARTING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @CMD_STOP_FWLOGGER, align 8
  %26 = icmp ne i64 %24, %25
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ false, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %170

35:                                               ; preds = %27
  %36 = load i64, i64* %10, align 8
  %37 = icmp ult i64 %36, 16
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %170

44:                                               ; preds = %35
  %45 = load i8*, i8** %9, align 8
  %46 = bitcast i8* %45 to %struct.wl1271_cmd_header*
  store %struct.wl1271_cmd_header* %46, %struct.wl1271_cmd_header** %12, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @cpu_to_le16(i64 %47)
  %49 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %50 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %52 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load i64, i64* %10, align 8
  %54 = urem i64 %53, 4
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load i32, i32* @WL1271_FLAG_IN_ELP, align 4
  %59 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 3
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %64 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @wlcore_write(%struct.wl1271* %63, i32 %66, i8* %67, i64 %68, i32 0)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %44
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %170

74:                                               ; preds = %44
  %75 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32 (%struct.wl1271*, i32, i8*, i64)*, i32 (%struct.wl1271*, i32, i8*, i64)** %78, align 8
  %80 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %81 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i32 %79(%struct.wl1271* %80, i32 %83, i8* %84, i64 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %74
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %6, align 4
  br label %170

91:                                               ; preds = %74
  %92 = load i64, i64* @jiffies, align 8
  %93 = load i32, i32* @WL1271_COMMAND_TIMEOUT, align 4
  %94 = call i64 @msecs_to_jiffies(i32 %93)
  %95 = add i64 %92, %94
  store i64 %95, i64* %13, align 8
  %96 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %97 = load i32, i32* @REG_INTERRUPT_NO_CLEAR, align 4
  %98 = call i32 @wlcore_read_reg(%struct.wl1271* %96, i32 %97, i32* %14)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %170

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %137, %103
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @WL1271_ACX_INTR_CMD_COMPLETE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i64, i64* %13, align 8
  %113 = call i64 @time_after(i64 %111, i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = call i32 @wl1271_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ETIMEDOUT, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %6, align 4
  br label %170

119:                                              ; preds = %110
  %120 = load i64, i64* %17, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* @WL1271_CMD_FAST_POLL_COUNT, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 @udelay(i32 10)
  br label %129

127:                                              ; preds = %119
  %128 = call i32 @msleep(i32 1)
  br label %129

129:                                              ; preds = %127, %125
  %130 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %131 = load i32, i32* @REG_INTERRUPT_NO_CLEAR, align 4
  %132 = call i32 @wlcore_read_reg(%struct.wl1271* %130, i32 %131, i32* %14)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %6, align 4
  br label %170

137:                                              ; preds = %129
  br label %104

138:                                              ; preds = %104
  %139 = load i64, i64* %11, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i64 16, i64* %11, align 8
  br label %142

142:                                              ; preds = %141, %138
  %143 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %144 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %148 = load i64, i64* %11, align 8
  %149 = call i32 @wlcore_read(%struct.wl1271* %143, i32 %146, %struct.wl1271_cmd_header* %147, i64 %148, i32 0)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %15, align 4
  store i32 %153, i32* %6, align 4
  br label %170

154:                                              ; preds = %142
  %155 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %12, align 8
  %156 = getelementptr inbounds %struct.wl1271_cmd_header, %struct.wl1271_cmd_header* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @le16_to_cpu(i64 %157)
  store i64 %158, i64* %16, align 8
  %159 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %160 = load i32, i32* @REG_INTERRUPT_ACK, align 4
  %161 = load i32, i32* @WL1271_ACX_INTR_CMD_COMPLETE, align 4
  %162 = call i32 @wlcore_write_reg(%struct.wl1271* %159, i32 %160, i32 %161)
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %15, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %154
  %166 = load i32, i32* %15, align 4
  store i32 %166, i32* %6, align 4
  br label %170

167:                                              ; preds = %154
  %168 = load i64, i64* %16, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %167, %165, %152, %135, %115, %101, %89, %72, %41, %32
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @wlcore_write(%struct.wl1271*, i32, i8*, i64, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wlcore_read_reg(%struct.wl1271*, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wlcore_read(%struct.wl1271*, i32, %struct.wl1271_cmd_header*, i64, i32) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @wlcore_write_reg(%struct.wl1271*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
