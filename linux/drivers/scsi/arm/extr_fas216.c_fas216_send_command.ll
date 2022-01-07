; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_send_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@CMD_NOP = common dso_local global i32 0, align 4
@CMD_WITHDMA = common dso_local global i32 0, align 4
@CMD_FLUSHFIFO = common dso_local global i32 0, align 4
@REG_FF = common dso_local global i32 0, align 4
@CMD_TRANSFERINFO = common dso_local global i32 0, align 4
@PHASE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @fas216_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_send_command(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = call i32 @fas216_checkmagic(%struct.TYPE_12__* %4)
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = load i32, i32* @CMD_NOP, align 4
  %8 = load i32, i32* @CMD_WITHDMA, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @fas216_cmd(%struct.TYPE_12__* %6, i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = load i32, i32* @CMD_FLUSHFIFO, align 4
  %13 = call i32 @fas216_cmd(%struct.TYPE_12__* %11, i32 %12)
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %40, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = load i32, i32* @REG_FF, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fas216_writeb(%struct.TYPE_12__* %28, i32 %29, i32 %38)
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = load i32, i32* @CMD_TRANSFERINFO, align 4
  %46 = call i32 @fas216_cmd(%struct.TYPE_12__* %44, i32 %45)
  %47 = load i32, i32* @PHASE_COMMAND, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  ret void
}

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_12__*) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @fas216_writeb(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
