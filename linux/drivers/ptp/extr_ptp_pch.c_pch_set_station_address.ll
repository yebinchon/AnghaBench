; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_set_station_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_pch.c_pch_set_station_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pch_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [43 x i8] c"invalid params returning PCH_INVALIDPARAM\0A\00", align 1
@PCH_INVALIDPARAM = common dso_local global i32 0, align 4
@PCH_STATION_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"invoking pch_station_set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_set_station_address(i8* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pch_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = call %struct.pch_dev* @pci_get_drvdata(%struct.pci_dev* %10)
  store %struct.pch_dev* %11, %struct.pch_dev** %7, align 8
  %12 = load %struct.pch_dev*, %struct.pch_dev** %7, align 8
  %13 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @PCH_INVALIDPARAM, align 4
  store i32 %23, i32* %3, align 4
  br label %101

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %97, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PCH_STATION_BYTES, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %100

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = mul nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @hex_to_bin(i8 signext %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @PCH_INVALIDPARAM, align 4
  store i32 %43, i32* %3, align 4
  br label %101

44:                                               ; preds = %29
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 16
  store i32 %46, i32* %8, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = mul nsw i32 %48, 3
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @hex_to_bin(i8 signext %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @PCH_INVALIDPARAM, align 4
  store i32 %61, i32* %3, align 4
  br label %101

62:                                               ; preds = %44
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 3
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 58
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %82 = load i32, i32* @PCH_INVALIDPARAM, align 4
  store i32 %82, i32* %3, align 4
  br label %101

83:                                               ; preds = %68, %62
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.pch_dev*, %struct.pch_dev** %7, align 8
  %89 = getelementptr inbounds %struct.pch_dev, %struct.pch_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = call i32 @iowrite32(i32 %87, i32* %95)
  br label %97

97:                                               ; preds = %83
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %25

100:                                              ; preds = %25
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %78, %57, %39, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.pch_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hex_to_bin(i8 signext) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
