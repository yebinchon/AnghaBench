; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_get_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdrtas.c_wdrtas_get_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDRTAS_SP_SPI_LEN = common dso_local global i32 0, align 4
@rtas_data_buf_lock = common dso_local global i32 0, align 4
@rtas_data_buf = common dso_local global i32 0, align 4
@wdrtas_token_get_sp = common dso_local global i32 0, align 4
@WDRTAS_SP_SPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"could not get sp_spi watchdog timeout (%li). Continuing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wdrtas_get_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdrtas_get_interval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @WDRTAS_SP_SPI_LEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = call i32 @spin_lock(i32* @rtas_data_buf_lock)
  %13 = load i32, i32* @rtas_data_buf, align 4
  %14 = load i32, i32* @WDRTAS_SP_SPI_LEN, align 4
  %15 = call i32 @memset(i32 %13, i32 0, i32 %14)
  %16 = load i32, i32* @wdrtas_token_get_sp, align 4
  %17 = load i32, i32* @WDRTAS_SP_SPI, align 4
  %18 = load i32, i32* @rtas_data_buf, align 4
  %19 = call i32 @__pa(i32 %18)
  %20 = load i32, i32* @WDRTAS_SP_SPI_LEN, align 4
  %21 = call i64 @rtas_call(i32 %16, i32 3, i32 1, i32* null, i32 %17, i32 %19, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* @rtas_data_buf, align 4
  %23 = load i32, i32* @WDRTAS_SP_SPI_LEN, align 4
  %24 = call i32 @memcpy(i8* %11, i32 %22, i32 %23)
  %25 = call i32 @spin_unlock(i32* @rtas_data_buf_lock)
  %26 = getelementptr inbounds i8, i8* %11, i64 0
  %27 = load i8, i8* %26, align 16
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %1
  %31 = getelementptr inbounds i8, i8* %11, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 2
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, i8* %11, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %35, %30, %1
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, i8* %11, i64 2
  %49 = load i8, i8* %48, align 2
  %50 = sext i8 %49 to i32
  %51 = mul nsw i32 %50, 60
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %53)
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i64 @rtas_call(i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @__pa(i32) #2

declare dso_local i32 @memcpy(i8*, i32, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @pr_warn(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
