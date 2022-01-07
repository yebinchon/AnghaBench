; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_ps2_sendcommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_ps2_sendcommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.serio = type { i32 }

@NVEC_PS2 = common dso_local global i32 0, align 4
@SEND_COMMAND = common dso_local global i32 0, align 4
@ENABLE_MOUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Sending ps2 cmd %02x\0A\00", align 1
@ps2_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @ps2_sendcommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_sendcommand(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [4 x i8], align 1
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* @NVEC_PS2, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6, align 1
  %9 = getelementptr inbounds i8, i8* %6, i64 1
  %10 = load i32, i32* @SEND_COMMAND, align 4
  %11 = trunc i32 %10 to i8
  store i8 %11, i8* %9, align 1
  %12 = getelementptr inbounds i8, i8* %9, i64 1
  %13 = load i32, i32* @ENABLE_MOUSE, align 4
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %12, align 1
  %15 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 1, i8* %15, align 1
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 2
  store i8 %19, i8* %20, align 1
  %21 = load %struct.serio*, %struct.serio** %3, align 8
  %22 = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 0
  %23 = load i8, i8* %4, align 1
  %24 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8 zeroext %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ps2_dev, i32 0, i32 0), align 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %27 = call i32 @nvec_write_async(i32 %25, i8* %26, i32 4)
  ret i32 %27
}

declare dso_local i32 @dev_dbg(i32*, i8*, i8 zeroext) #1

declare dso_local i32 @nvec_write_async(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
