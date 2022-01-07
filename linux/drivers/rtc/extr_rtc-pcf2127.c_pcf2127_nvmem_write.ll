; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2127.c_pcf2127_nvmem_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-pcf2127.c_pcf2127_nvmem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf2127 = type { i32 }

@PCF2127_REG_RAM_ADDR_MSB = common dso_local global i32 0, align 4
@PCF2127_REG_RAM_WRT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i64)* @pcf2127_nvmem_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf2127_nvmem_write(i8* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pcf2127*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.pcf2127*
  store %struct.pcf2127* %14, %struct.pcf2127** %10, align 8
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %16 = load i32, i32* %7, align 4
  %17 = lshr i32 %16, 8
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %15, align 1
  %19 = getelementptr inbounds i8, i8* %15, i64 1
  %20 = load i32, i32* %7, align 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = load %struct.pcf2127*, %struct.pcf2127** %10, align 8
  %23 = getelementptr inbounds %struct.pcf2127, %struct.pcf2127* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCF2127_REG_RAM_ADDR_MSB, align 4
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %27 = call i32 @regmap_bulk_write(i32 %24, i32 %25, i8* %26, i64 2)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %49

32:                                               ; preds = %4
  %33 = load %struct.pcf2127*, %struct.pcf2127** %10, align 8
  %34 = getelementptr inbounds %struct.pcf2127, %struct.pcf2127* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCF2127_REG_RAM_WRT_CMD, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @regmap_bulk_write(i32 %35, i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = sext i32 %40 to i64
  br label %46

44:                                               ; preds = %32
  %45 = load i64, i64* %9, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %30
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @regmap_bulk_write(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
