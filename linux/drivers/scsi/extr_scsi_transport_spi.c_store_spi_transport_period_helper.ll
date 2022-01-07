; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_store_spi_transport_period_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_transport_spi.c_store_spi_transport_period_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@SPI_STATIC_PPR = common dso_local global i32 0, align 4
@ppr_to_ps = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, i8*, i64, i32*)* @store_spi_transport_period_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_spi_transport_period_helper(%struct.device* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @simple_strtoul(i8* %14, i8** %12, i32 10)
  %16 = mul nsw i32 %15, 1000
  store i32 %16, i32* %10, align 4
  %17 = load i8*, i8** %12, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 46
  br i1 %20, label %21, label %45

21:                                               ; preds = %4
  store i32 100, i32* %13, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i8*, i8** %12, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @isdigit(i8 signext %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %44

30:                                               ; preds = %22
  %31 = load i8*, i8** %12, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = sub nsw i32 %33, 48
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %39, 10
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %13, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %22, label %44

44:                                               ; preds = %41, %29
  br label %45

45:                                               ; preds = %44, %4
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SPI_STATIC_PPR, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32*, i32** @ppr_to_ps, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %46

64:                                               ; preds = %59, %46
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = sdiv i32 %68, 4000
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %11, align 4
  %72 = icmp sgt i32 %71, 255
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 255, i32* %11, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
