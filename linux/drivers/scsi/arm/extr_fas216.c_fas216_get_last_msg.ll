; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_get_last_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/arm/extr_fas216.c_fas216_get_last_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.message = type { i32, i32* }

@NOP = common dso_local global i16 0, align 2
@EXTENDED_MESSAGE = common dso_local global i32 0, align 4
@LOG_MESSAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Message: %04x found at position %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_6__*, i32)* @fas216_get_last_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @fas216_get_last_msg(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.message*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i16, i16* @NOP, align 2
  store i16 %8, i16* %5, align 2
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = call %struct.message* @msgqueue_getmsg(i32* %12, i32 %13)
  store %struct.message* %15, %struct.message** %6, align 8
  %16 = icmp ne %struct.message* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.message*, %struct.message** %6, align 8
  %20 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  br label %9

25:                                               ; preds = %23, %9
  %26 = load %struct.message*, %struct.message** %6, align 8
  %27 = icmp ne %struct.message* %26, null
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load %struct.message*, %struct.message** %6, align 8
  %30 = getelementptr inbounds %struct.message, %struct.message* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EXTENDED_MESSAGE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @EXTENDED_MESSAGE, align 4
  %38 = load %struct.message*, %struct.message** %6, align 8
  %39 = getelementptr inbounds %struct.message, %struct.message* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %37, %43
  %45 = trunc i32 %44 to i16
  store i16 %45, i16* %5, align 2
  br label %53

46:                                               ; preds = %28
  %47 = load %struct.message*, %struct.message** %6, align 8
  %48 = getelementptr inbounds %struct.message, %struct.message* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %5, align 2
  br label %53

53:                                               ; preds = %46, %36
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* @LOG_MESSAGES, align 4
  %57 = load i16, i16* %5, align 2
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @fas216_log(%struct.TYPE_6__* %55, i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i16 zeroext %57, i32 %58)
  %60 = load i16, i16* %5, align 2
  ret i16 %60
}

declare dso_local %struct.message* @msgqueue_getmsg(i32*, i32) #1

declare dso_local i32 @fas216_log(%struct.TYPE_6__*, i32, i8*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
