; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_fifo_change_from_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_fifo_change_from_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_pipe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i16 }

@CURPIPE = common dso_local global i16 0, align 2
@D0FIFOSEL = common dso_local global i32 0, align 4
@D1FIFOSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_pipe*)* @fifo_change_from_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fifo_change_from_pipe(%struct.r8a66597* %0, %struct.r8a66597_pipe* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_pipe*, align 8
  %5 = alloca i16, align 2
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_pipe* %1, %struct.r8a66597_pipe** %4, align 8
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = call zeroext i16 @mbw_value(%struct.r8a66597* %6)
  store i16 %7, i16* %5, align 2
  %8 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %9 = call i32 @cfifo_change(%struct.r8a66597* %8, i32 0)
  %10 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %11 = load i16, i16* %5, align 2
  %12 = zext i16 %11 to i32
  %13 = trunc i32 %12 to i16
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @CURPIPE, align 2
  %17 = zext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = trunc i32 %18 to i16
  %20 = load i32, i32* @D0FIFOSEL, align 4
  %21 = call i32 @r8a66597_mdfy(%struct.r8a66597* %10, i16 zeroext %13, i16 zeroext %19, i32 %20)
  %22 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = trunc i32 %24 to i16
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @CURPIPE, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i16
  %32 = load i32, i32* @D1FIFOSEL, align 4
  %33 = call i32 @r8a66597_mdfy(%struct.r8a66597* %22, i16 zeroext %25, i16 zeroext %31, i32 %32)
  %34 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %38 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i32
  %42 = or i32 %36, %41
  %43 = trunc i32 %42 to i16
  %44 = load i16, i16* %5, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @CURPIPE, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %51 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @r8a66597_mdfy(%struct.r8a66597* %34, i16 zeroext %43, i16 zeroext %49, i32 %52)
  %54 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %55 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %56 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i16, i16* @CURPIPE, align 2
  %59 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %4, align 8
  %60 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 4
  %63 = call i32 @r8a66597_reg_wait(%struct.r8a66597* %54, i32 %57, i16 zeroext %58, i16 zeroext %62)
  ret void
}

declare dso_local zeroext i16 @mbw_value(%struct.r8a66597*) #1

declare dso_local i32 @cfifo_change(%struct.r8a66597*, i32) #1

declare dso_local i32 @r8a66597_mdfy(%struct.r8a66597*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @r8a66597_reg_wait(%struct.r8a66597*, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
