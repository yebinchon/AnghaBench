; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c__read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/slaves/extr_w1_ds2408.c__read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Reading with slave: %p, reg addr: %0#4x, buff addr: %p\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"mutex locked\00", align 1
@EIO = common dso_local global i32 0, align 4
@W1_F29_FUNC_READ_PIO_REGS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"mutex unlocked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i64, i8*)* @_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_read_reg(%struct.w1_slave* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.w1_slave*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [3 x i64], align 16
  store %struct.w1_slave* %0, %struct.w1_slave** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %10 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %9, i32 0, i32 0
  %11 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), %struct.w1_slave* %11, i32 %13, i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %23 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %28 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %31 = call i64 @w1_reset_select_slave(%struct.w1_slave* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %35 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %65

41:                                               ; preds = %21
  %42 = load i64, i64* @W1_F29_FUNC_READ_PIO_REGS, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 0, i64* %46, align 16
  %47 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %48 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %51 = call i32 @w1_write_block(%struct.TYPE_3__* %49, i64* %50, i32 3)
  %52 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %53 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call zeroext i8 @w1_read_8(%struct.TYPE_3__* %54)
  %56 = load i8*, i8** %7, align 8
  store i8 %55, i8* %56, align 1
  %57 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %58 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load %struct.w1_slave*, %struct.w1_slave** %5, align 8
  %63 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %62, i32 0, i32 0
  %64 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %41, %33, %18
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @w1_write_block(%struct.TYPE_3__*, i64*, i32) #1

declare dso_local zeroext i8 @w1_read_8(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
