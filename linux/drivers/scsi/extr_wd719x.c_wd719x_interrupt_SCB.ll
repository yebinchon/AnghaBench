; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_interrupt_SCB.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_wd719x.c_wd719x_interrupt_SCB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wd719x = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.wd719x_scb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.wd719x_regs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@DID_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"command rejected\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SCB queue is full\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SCB terminated by direct command\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"DMA abort\0A\00", align 1
@DID_PARITY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"DMA parity error\0A\00", align 1
@DID_TIME_OUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"selection timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"bus reset occurred\0A\00", align 1
@DID_RESET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"SCSI bus error\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"wrong data transfer direction\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"invalid SCSI phase\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"record too long\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"unexpected bus free\0A\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"auto request sense\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"target id %d ignored command\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"reversed tags\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"tag type not supported by target\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"no SCAM soft ID available\0A\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"unknown SUE error code: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wd719x*, i64, %struct.wd719x_scb*)* @wd719x_interrupt_SCB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd719x_interrupt_SCB(%struct.wd719x* %0, i64 %1, %struct.wd719x_scb* %2) #0 {
  %4 = alloca %union.wd719x_regs, align 4
  %5 = alloca %struct.wd719x*, align 8
  %6 = alloca %struct.wd719x_scb*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %union.wd719x_regs, %union.wd719x_regs* %4, i32 0, i32 0
  %9 = bitcast %struct.TYPE_8__* %8 to i64*
  store i64 %1, i64* %9, align 4
  store %struct.wd719x* %0, %struct.wd719x** %5, align 8
  store %struct.wd719x_scb* %2, %struct.wd719x_scb** %6, align 8
  %10 = bitcast %union.wd719x_regs* %4 to %struct.TYPE_8__*
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %149 [
    i32 137, label %13
    i32 135, label %15
    i32 133, label %22
    i32 132, label %29
    i32 142, label %36
    i32 140, label %36
    i32 141, label %43
    i32 139, label %43
    i32 131, label %50
    i32 134, label %57
    i32 144, label %64
    i32 128, label %71
    i32 146, label %78
    i32 130, label %85
    i32 143, label %92
    i32 147, label %99
    i32 138, label %114
    i32 129, label %128
    i32 145, label %135
    i32 136, label %142
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DID_OK, align 4
  store i32 %14, i32* %7, align 4
  br label %159

15:                                               ; preds = %3
  %16 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %17 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @DID_ERROR, align 4
  store i32 %21, i32* %7, align 4
  br label %159

22:                                               ; preds = %3
  %23 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %24 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @DID_ERROR, align 4
  store i32 %28, i32* %7, align 4
  br label %159

29:                                               ; preds = %3
  %30 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %31 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = call i32 @dev_dbg(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @DID_ABORT, align 4
  store i32 %35, i32* %7, align 4
  br label %159

36:                                               ; preds = %3, %3
  %37 = load i32, i32* @DID_ABORT, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %39 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %159

43:                                               ; preds = %3, %3
  %44 = load i32, i32* @DID_PARITY, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %46 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %159

50:                                               ; preds = %3
  %51 = load i32, i32* @DID_TIME_OUT, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %53 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %159

57:                                               ; preds = %3
  %58 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %59 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i32, i32* @DID_RESET, align 4
  store i32 %63, i32* %7, align 4
  br label %159

64:                                               ; preds = %3
  %65 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %66 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %70 = load i32, i32* @DID_ERROR, align 4
  store i32 %70, i32* %7, align 4
  br label %159

71:                                               ; preds = %3
  %72 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %73 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %72, i32 0, i32 0
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %77 = load i32, i32* @DID_ERROR, align 4
  store i32 %77, i32* %7, align 4
  br label %159

78:                                               ; preds = %3
  %79 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %80 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i32 (i32*, i8*, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i32, i32* @DID_ERROR, align 4
  store i32 %84, i32* %7, align 4
  br label %159

85:                                               ; preds = %3
  %86 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %87 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %91 = load i32, i32* @DID_ERROR, align 4
  store i32 %91, i32* %7, align 4
  br label %159

92:                                               ; preds = %3
  %93 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %94 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %98 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %98, i32* %7, align 4
  br label %159

99:                                               ; preds = %3
  %100 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %101 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %105 = bitcast %union.wd719x_regs* %4 to %struct.TYPE_8__*
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @DID_OK, align 4
  store i32 %110, i32* %7, align 4
  br label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @DID_PARITY, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %109
  br label %159

114:                                              ; preds = %3
  %115 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %116 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %115, i32 0, i32 0
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load %struct.wd719x_scb*, %struct.wd719x_scb** %6, align 8
  %120 = getelementptr inbounds %struct.wd719x_scb, %struct.wd719x_scb* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %118, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @DID_NO_CONNECT, align 4
  store i32 %127, i32* %7, align 4
  br label %159

128:                                              ; preds = %3
  %129 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %130 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %129, i32 0, i32 0
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 (i32*, i8*, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %134 = load i32, i32* @DID_ERROR, align 4
  store i32 %134, i32* %7, align 4
  br label %159

135:                                              ; preds = %3
  %136 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %137 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %136, i32 0, i32 0
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %141 = load i32, i32* @DID_ERROR, align 4
  store i32 %141, i32* %7, align 4
  br label %159

142:                                              ; preds = %3
  %143 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %144 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0))
  %148 = load i32, i32* @DID_ERROR, align 4
  store i32 %148, i32* %7, align 4
  br label %159

149:                                              ; preds = %3
  %150 = load %struct.wd719x*, %struct.wd719x** %5, align 8
  %151 = getelementptr inbounds %struct.wd719x, %struct.wd719x* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = bitcast %union.wd719x_regs* %4 to %struct.TYPE_8__*
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @dev_warn(i32* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @DID_ERROR, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %149, %142, %135, %128, %114, %113, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %13
  %160 = load %struct.wd719x_scb*, %struct.wd719x_scb** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @wd719x_finish_cmd(%struct.wd719x_scb* %160, i32 %161)
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @wd719x_finish_cmd(%struct.wd719x_scb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
