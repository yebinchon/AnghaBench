; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_ccb_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_ccb_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dax_ctx = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"idx=%d\00", align 1
@DAX_CCB_RETRIES = common dso_local global i32 0, align 4
@CCA_STAT_NOT_COMPLETED = common dso_local global i64 0, align 8
@DAX_CCB_USEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"ctx (%p): CCB[%d] timed out, wait usec=%d, retries=%d. Killing ccb\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Kill CCB[%d] %s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dax_ctx*, i32)* @dax_ccb_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dax_ccb_wait(%struct.dax_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.dax_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dax_ctx* %0, %struct.dax_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 (i8*, i32, ...) @dax_dbg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DAX_CCB_RETRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.dax_ctx*, %struct.dax_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CCA_STAT_NOT_COMPLETED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* @DAX_CCB_USEC, align 4
  %27 = call i32 @udelay(i32 %26)
  br label %29

28:                                               ; preds = %14
  br label %55

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load %struct.dax_ctx*, %struct.dax_ctx** %3, align 8
  %35 = bitcast %struct.dax_ctx* %34 to i8*
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @DAX_CCB_USEC, align 4
  %39 = load i32, i32* @DAX_CCB_RETRIES, align 4
  %40 = call i32 (i8*, i32, ...) @dax_dbg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.dax_ctx*, %struct.dax_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = add i64 %43, %46
  %48 = call i32 @dax_ccb_kill(i64 %47, i32* %7)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %54 = call i32 (i8*, i32, ...) @dax_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49, i8* %53)
  br label %55

55:                                               ; preds = %33, %28
  ret void
}

declare dso_local i32 @dax_dbg(i8*, i32, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dax_ccb_kill(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
