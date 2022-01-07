; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i8*, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@REG_FF = common dso_local global i32 0, align 4
@EXTENDED_MESSAGE = common dso_local global i8 0, align 1
@CMD_MSGACCEPTED = common dso_local global i32 0, align 4
@CMD_SETATN = common dso_local global i32 0, align 4
@MSG_PARITY_ERROR = common dso_local global i32 0, align 4
@PHASE_MSGOUT_EXPECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @fas216_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fas216_message(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i32 @fas216_checkmagic(%struct.TYPE_13__* %10)
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %13 = load i32, i32* @REG_FF, align 4
  %14 = call zeroext i8 @fas216_readb(%struct.TYPE_13__* %12, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 %14, i8* %16, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, i8* @EXTENDED_MESSAGE, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = call i32 @fas216_get_msg_byte(%struct.TYPE_13__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 %31, i8* %33, align 1
  store i32 2, i32* %4, align 4
  br label %34

34:                                               ; preds = %56, %29
  %35 = load i32, i32* %4, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = add nsw i32 %39, 2
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %34
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %44 = call i32 @fas216_get_msg_byte(%struct.TYPE_13__* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 %49, i8* %53, align 1
  br label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %34

59:                                               ; preds = %54, %34
  br label %60

60:                                               ; preds = %59, %24
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, -3
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %73

65:                                               ; preds = %61
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @fas216_parse_message(%struct.TYPE_13__* %66, i8* %67, i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %71 = load i32, i32* @CMD_MSGACCEPTED, align 4
  %72 = call i32 @fas216_cmd(%struct.TYPE_13__* %70, i32 %71)
  br label %93

73:                                               ; preds = %64
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = load i32, i32* @CMD_SETATN, align 4
  %76 = call i32 @fas216_cmd(%struct.TYPE_13__* %74, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = call i32 @msgqueue_flush(i32* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* @MSG_PARITY_ERROR, align 4
  %85 = call i32 @msgqueue_addmsg(i32* %83, i32 1, i32 %84)
  %86 = load i32, i32* @PHASE_MSGOUT_EXPECT, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = load i32, i32* @CMD_MSGACCEPTED, align 4
  %92 = call i32 @fas216_cmd(%struct.TYPE_13__* %90, i32 %91)
  br label %93

93:                                               ; preds = %73, %65
  ret void
}

declare dso_local i32 @fas216_checkmagic(%struct.TYPE_13__*) #1

declare dso_local zeroext i8 @fas216_readb(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fas216_get_msg_byte(%struct.TYPE_13__*) #1

declare dso_local i32 @fas216_parse_message(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @fas216_cmd(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @msgqueue_flush(i32*) #1

declare dso_local i32 @msgqueue_addmsg(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
