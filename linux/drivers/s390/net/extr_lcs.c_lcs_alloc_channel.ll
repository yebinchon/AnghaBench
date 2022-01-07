; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_alloc_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_lcs.c_lcs_alloc_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ichalloc\00", align 1
@LCS_NUM_BUFFS = common dso_local global i32 0, align 4
@LCS_IOBUFFERSIZE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LCS_BUF_STATE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"echalloc\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_channel*)* @lcs_alloc_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_alloc_channel(%struct.lcs_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lcs_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.lcs_channel* %0, %struct.lcs_channel** %3, align 8
  %5 = load i32, i32* @setup, align 4
  %6 = call i32 @LCS_DBF_TEXT(i32 2, i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %43, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %7
  %12 = load i32, i32* @LCS_IOBUFFERSIZE, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = or i32 %13, %14
  %16 = call i32* @kzalloc(i32 %12, i32 %15)
  %17 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %18 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* %16, i32** %23, align 8
  %24 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %25 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %11
  br label %46

34:                                               ; preds = %11
  %35 = load i32, i32* @LCS_BUF_STATE_EMPTY, align 4
  %36 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %37 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %35, i32* %42, align 8
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %7

46:                                               ; preds = %33, %7
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @LCS_NUM_BUFFS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* @setup, align 4
  %52 = call i32 @LCS_DBF_TEXT(i32 2, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %57, %50
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = icmp sgt i32 %54, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.lcs_channel*, %struct.lcs_channel** %3, align 8
  %59 = getelementptr inbounds %struct.lcs_channel, %struct.lcs_channel* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kfree(i32* %65)
  br label %53

67:                                               ; preds = %53
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
