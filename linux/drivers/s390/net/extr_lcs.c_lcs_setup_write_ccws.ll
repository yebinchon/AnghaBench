; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_write_ccws.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_setup_write_ccws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i8*, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"iwritccw\00", align 1
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@LCS_CCW_WRITE = common dso_local global i32 0, align 4
@CCW_FLAG_SUSPEND = common dso_local global i32 0, align 4
@CCW_FLAG_CC = common dso_local global i32 0, align 4
@CCW_FLAG_SLI = common dso_local global i32 0, align 4
@LCS_CCW_TRANSFER = common dso_local global i32 0, align 4
@LCS_CH_STATE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*)* @lcs_setup_write_ccws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_setup_write_ccws(%struct.lcs_card* %0) #0 {
  %2 = alloca %struct.lcs_card*, align 8
  %3 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %2, align 8
  %4 = load i32, i32* @setup, align 4
  %5 = call i32 @LCS_DBF_TEXT(i32 3, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %7 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i32 @memset(%struct.TYPE_9__* %9, i32 0, i32 %14)
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %70, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load i32, i32* @LCS_CCW_WRITE, align 4
  %22 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %23 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store i32 %21, i32* %29, align 8
  %30 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %31 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @CCW_FLAG_SUSPEND, align 4
  %39 = load i32, i32* @CCW_FLAG_CC, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CCW_FLAG_SLI, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %44 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %42, i32* %50, align 8
  %51 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %52 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = call i64 @__pa(%struct.TYPE_9__* %59)
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %63 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i8* %61, i8** %69, align 8
  br label %70

70:                                               ; preds = %20
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %16

73:                                               ; preds = %16
  %74 = load i32, i32* @LCS_CCW_TRANSFER, align 4
  %75 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %76 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store i32 %74, i32* %82, align 8
  %83 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %84 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i64 @__pa(%struct.TYPE_9__* %86)
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %90 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i8* %88, i8** %96, align 8
  %97 = load i32, i32* @LCS_CH_STATE_INIT, align 4
  %98 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %99 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 %97, i32* %100, align 8
  %101 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %102 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load %struct.lcs_card*, %struct.lcs_card** %2, align 8
  %105 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @__pa(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
