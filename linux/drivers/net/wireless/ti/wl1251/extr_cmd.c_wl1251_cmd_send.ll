; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.wl1251_cmd_header = type { i64, i32 }

@ACX_REG_INTERRUPT_TRIG = common dso_local global i32 0, align 4
@INTR_TRIG_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@WL1251_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@ACX_REG_INTERRUPT_NO_CLEAR = common dso_local global i32 0, align 4
@WL1251_ACX_INTR_CMD_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"command complete timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ACX_REG_INTERRUPT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_send(%struct.wl1251* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wl1251_cmd_header*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.wl1251_cmd_header*
  store %struct.wl1251_cmd_header* %14, %struct.wl1251_cmd_header** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.wl1251_cmd_header*, %struct.wl1251_cmd_header** %9, align 8
  %17 = getelementptr inbounds %struct.wl1251_cmd_header, %struct.wl1251_cmd_header* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.wl1251_cmd_header*, %struct.wl1251_cmd_header** %9, align 8
  %19 = getelementptr inbounds %struct.wl1251_cmd_header, %struct.wl1251_cmd_header* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load i64, i64* %8, align 8
  %21 = urem i64 %20, 4
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %26 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %27 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @wl1251_mem_write(%struct.wl1251* %25, i32 %28, i8* %29, i64 %30)
  %32 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %33 = load i32, i32* @ACX_REG_INTERRUPT_TRIG, align 4
  %34 = load i32, i32* @INTR_TRIG_CMD, align 4
  %35 = call i32 @wl1251_reg_write32(%struct.wl1251* %32, i32 %33, i32 %34)
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i32, i32* @WL1251_COMMAND_TIMEOUT, align 4
  %38 = call i64 @msecs_to_jiffies(i32 %37)
  %39 = add i64 %36, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %41 = load i32, i32* @ACX_REG_INTERRUPT_NO_CLEAR, align 4
  %42 = call i32 @wl1251_reg_read32(%struct.wl1251* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %58, %4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @WL1251_ACX_INTR_CMD_COMPLETE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @time_after(i64 %50, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = call i32 @wl1251_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ETIMEDOUT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %68

58:                                               ; preds = %49
  %59 = call i32 @msleep(i32 1)
  %60 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %61 = load i32, i32* @ACX_REG_INTERRUPT_NO_CLEAR, align 4
  %62 = call i32 @wl1251_reg_read32(%struct.wl1251* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %65 = load i32, i32* @ACX_REG_INTERRUPT_ACK, align 4
  %66 = load i32, i32* @WL1251_ACX_INTR_CMD_COMPLETE, align 4
  %67 = call i32 @wl1251_reg_write32(%struct.wl1251* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %54
  %69 = load i32, i32* %12, align 4
  ret i32 %69
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl1251_mem_write(%struct.wl1251*, i32, i8*, i64) #1

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wl1251_reg_read32(%struct.wl1251*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @wl1251_error(i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
