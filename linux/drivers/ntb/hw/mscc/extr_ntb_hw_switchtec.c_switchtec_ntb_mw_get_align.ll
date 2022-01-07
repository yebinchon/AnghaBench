; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_mw_get_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_mw_get_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@NTB_DEF_PEER_IDX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i32, i32, i64*, i64*, i64*)* @switchtec_ntb_mw_get_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_mw_get_align(%struct.ntb_dev* %0, i32 %1, i32 %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ntb_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.switchtec_ntb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load %struct.ntb_dev*, %struct.ntb_dev** %8, align 8
  %18 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %17)
  store %struct.switchtec_ntb* %18, %struct.switchtec_ntb** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @NTB_DEF_PEER_IDX, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %79

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %14, align 8
  %28 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %14, align 8
  %33 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @ioread64(i32* %39)
  store i64 %40, i64* %16, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %79

46:                                               ; preds = %25
  %47 = load i64*, i64** %11, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i64, i64* %16, align 8
  br label %56

54:                                               ; preds = %49
  %55 = load i64, i64* @SZ_4K, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = load i64*, i64** %11, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %46
  %60 = load i64*, i64** %12, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i64, i64* %16, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @SZ_4K, align 8
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i64 [ %66, %65 ], [ %68, %67 ]
  %71 = load i64*, i64** %12, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i64*, i64** %13, align 8
  %74 = icmp ne i64* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i64, i64* %16, align 8
  %77 = load i64*, i64** %13, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %43, %22
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i64 @ioread64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
