; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_read_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-r9701.c_read_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.spi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @read_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_regs(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca [1 x i8], align 1
  %9 = alloca [1 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.spi_device* @to_spi_device(%struct.device* %12)
  store %struct.spi_device* %13, %struct.spi_device** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %43, %3
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %23, label %46

23:                                               ; preds = %21
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 128, %29
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %8, i64 0, i64 0
  %35 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %36 = call i32 @spi_write_then_read(%struct.spi_device* %33, i8* %34, i32 1, i8* %35, i32 1)
  store i32 %36, i32* %11, align 4
  %37 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 %38, i8* %42, align 1
  br label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %14

46:                                               ; preds = %21
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

declare dso_local %struct.spi_device* @to_spi_device(%struct.device*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
