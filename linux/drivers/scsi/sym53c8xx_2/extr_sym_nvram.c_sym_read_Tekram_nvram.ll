; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_Tekram_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_nvram.c_sym_read_Tekram_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TEKRAM_24C16_NVRAM_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sym_device*, i32*)* @sym_read_Tekram_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_read_Tekram_nvram(%struct.sym_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sym_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sym_device* %0, %struct.sym_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32* %10, i32** %6, align 8
  store i32 4, i32* %7, align 4
  %11 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %12 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %32 [
    i32 130, label %16
    i32 129, label %16
    i32 128, label %16
    i32 131, label %22
  ]

16:                                               ; preds = %2, %2, %2
  %17 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %18 = load i32, i32* @TEKRAM_24C16_NVRAM_ADDRESS, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @sym_read_S24C16_nvram(%struct.sym_device* %17, i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %24 = load i32, i32* @TEKRAM_24C16_NVRAM_ADDRESS, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sym_read_S24C16_nvram(%struct.sym_device* %23, i32 %24, i32* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %36

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %2, %31
  %33 = load %struct.sym_device*, %struct.sym_device** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sym_read_T93C46_nvram(%struct.sym_device* %33, i32* %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %30, %16
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %70

40:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = add nsw i32 %51, %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %9, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 4660
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %70

69:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %68, %39
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @sym_read_S24C16_nvram(%struct.sym_device*, i32, i32*, i32) #1

declare dso_local i32 @sym_read_T93C46_nvram(%struct.sym_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
