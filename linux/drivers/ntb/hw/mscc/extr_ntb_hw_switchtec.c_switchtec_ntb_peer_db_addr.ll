; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_db_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_peer_db_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_dev = type { i32 }
%struct.switchtec_ntb = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@BITS_PER_LONG_LONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_dev*, i64*, i32*, i32*, i32)* @switchtec_ntb_peer_db_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_ntb_peer_db_addr(%struct.ntb_dev* %0, i64* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ntb_dev*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.switchtec_ntb*, align 8
  %13 = alloca i64, align 8
  store %struct.ntb_dev* %0, %struct.ntb_dev** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ntb_dev*, %struct.ntb_dev** %7, align 8
  %15 = call %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev* %14)
  store %struct.switchtec_ntb* %15, %struct.switchtec_ntb** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @BITS_PER_LONG_LONG, align 4
  %18 = icmp sge i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %5
  %26 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %12, align 8
  %27 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %12, align 8
  %32 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %30, %35
  store i64 %36, i64* %13, align 8
  %37 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %12, align 8
  %38 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %13, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %13, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %25
  %47 = load %struct.ntb_dev*, %struct.ntb_dev** %7, align 8
  %48 = getelementptr inbounds %struct.ntb_dev, %struct.ntb_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @pci_resource_start(i32 %49, i32 0)
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  %53 = load i64*, i64** %8, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %46, %25
  %55 = load i32*, i32** %9, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  store i32 4, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32*, i32** %10, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @BIT_ULL(i32 %63)
  %65 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %12, align 8
  %66 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %64, %67
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %59
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.switchtec_ntb* @ntb_sndev(%struct.ntb_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
