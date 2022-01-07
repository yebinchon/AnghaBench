; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_otm3225a.c_otm3225a_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_otm3225a.c_otm3225a_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.otm3225a_spi_instruction = type { i8, i32, i64 }

@OTM3225A_INDEX_REG = common dso_local global i8 0, align 1
@OTM3225A_DATA_REG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, %struct.otm3225a_spi_instruction*, i32)* @otm3225a_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otm3225a_write(%struct.spi_device* %0, %struct.otm3225a_spi_instruction* %1, i32 %2) #0 {
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.otm3225a_spi_instruction*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.otm3225a_spi_instruction* %1, %struct.otm3225a_spi_instruction** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %50, %3
  %9 = load i32, i32* %6, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i8, i8* @OTM3225A_INDEX_REG, align 1
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %15, align 1
  %16 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %17 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %18, i8* %19, align 1
  %20 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %22 = call i32 @spi_write(%struct.spi_device* %20, i8* %21, i32 3)
  %23 = load i8, i8* @OTM3225A_DATA_REG, align 1
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %26 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %33 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 255
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %36, i8* %37, align 1
  %38 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %40 = call i32 @spi_write(%struct.spi_device* %38, i8* %39, i32 3)
  %41 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %42 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %12
  %46 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %47 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @msleep(i64 %48)
  br label %50

50:                                               ; preds = %45, %12
  %51 = load %struct.otm3225a_spi_instruction*, %struct.otm3225a_spi_instruction** %5, align 8
  %52 = getelementptr inbounds %struct.otm3225a_spi_instruction, %struct.otm3225a_spi_instruction* %51, i32 1
  store %struct.otm3225a_spi_instruction* %52, %struct.otm3225a_spi_instruction** %5, align 8
  br label %8

53:                                               ; preds = %8
  ret void
}

declare dso_local i32 @spi_write(%struct.spi_device*, i8*, i32) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
