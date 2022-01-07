; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_toggle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_lms283gf05.c_lms283gf05_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.lms283gf05_seq = type { i8, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.lms283gf05_seq*, i32)* @lms283gf05_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lms283gf05_toggle(%struct.spi_device* %0, %struct.lms283gf05_seq* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.lms283gf05_seq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.lms283gf05_seq* %1, %struct.lms283gf05_seq** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %55, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %9
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 116, i8* %14, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %15, align 1
  %16 = load %struct.lms283gf05_seq*, %struct.lms283gf05_seq** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %16, i64 %18
  %20 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %21, i8* %22, align 1
  %23 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %25 = call i32 @spi_write(%struct.spi_device* %23, i8* %24, i32 3)
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 118, i8* %26, align 1
  %27 = load %struct.lms283gf05_seq*, %struct.lms283gf05_seq** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %27, i64 %29
  %31 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %34, i8* %35, align 1
  %36 = load %struct.lms283gf05_seq*, %struct.lms283gf05_seq** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %36, i64 %38
  %40 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %43, i8* %44, align 1
  %45 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %47 = call i32 @spi_write(%struct.spi_device* %45, i8* %46, i32 3)
  %48 = load %struct.lms283gf05_seq*, %struct.lms283gf05_seq** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %48, i64 %50
  %52 = getelementptr inbounds %struct.lms283gf05_seq, %struct.lms283gf05_seq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mdelay(i32 %53)
  br label %55

55:                                               ; preds = %13
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %9

58:                                               ; preds = %9
  ret void
}

declare dso_local i32 @spi_write(%struct.spi_device*, i8*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
