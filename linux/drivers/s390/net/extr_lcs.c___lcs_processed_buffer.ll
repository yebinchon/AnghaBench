; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_processed_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c___lcs_processed_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { %struct.TYPE_2__*, %struct.lcs_buffer* }
%struct.TYPE_2__ = type { i32 }
%struct.lcs_buffer = type { i64 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"prcsbuff\00", align 1
@LCS_BUF_STATE_READY = common dso_local global i64 0, align 8
@LCS_BUF_STATE_PROCESSED = common dso_local global i64 0, align 8
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@CCW_FLAG_SUSPEND = common dso_local global i32 0, align 4
@CCW_FLAG_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*, %struct.lcs_buffer*)* @__lcs_processed_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lcs_processed_buffer(%struct.lcs_channel* %0, %struct.lcs_buffer* %1) #0 {
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca %struct.lcs_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  store %struct.lcs_buffer* %1, %struct.lcs_buffer** %4, align 8
  %8 = load i32, i32* @trace, align 4
  %9 = call i32 @LCS_DBF_TEXT(i32 5, i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LCS_BUF_STATE_READY, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i64, i64* @LCS_BUF_STATE_PROCESSED, align 8
  %18 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.lcs_buffer*, %struct.lcs_buffer** %4, align 8
  %21 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %22 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %21, i32 0, i32 1
  %23 = load %struct.lcs_buffer*, %struct.lcs_buffer** %22, align 8
  %24 = ptrtoint %struct.lcs_buffer* %20 to i64
  %25 = ptrtoint %struct.lcs_buffer* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @CCW_FLAG_SUSPEND, align 4
  %40 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %41 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %39
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @CCW_FLAG_PCI, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %52 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %50
  store i32 %59, i32* %57, align 4
  %60 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %61 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %60, i32 0, i32 1
  %62 = load %struct.lcs_buffer*, %struct.lcs_buffer** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %62, i64 %64
  %66 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @LCS_BUF_STATE_READY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %2
  %71 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @__lcs_ready_buffer_bits(%struct.lcs_channel* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %2
  %75 = load i32, i32* @CCW_FLAG_PCI, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %78 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %76
  store i32 %85, i32* %83, align 4
  %86 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %87 = call i32 @__lcs_resume_channel(%struct.lcs_channel* %86)
  ret i32 %87
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__lcs_ready_buffer_bits(%struct.lcs_channel*, i32) #1

declare dso_local i32 @__lcs_resume_channel(%struct.lcs_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
