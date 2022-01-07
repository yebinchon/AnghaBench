; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.h_ipr_is_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.h_ipr_is_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_hostrcb = type { %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.ipr_res_addr }
%struct.ipr_res_addr = type { i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_10__ = type { i64 }

@IPR_MAX_NUM_BUSES = common dso_local global i64 0, align 8
@IPR_MAX_NUM_TARGETS_PER_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_hostrcb*)* @ipr_is_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_is_device(%struct.ipr_hostrcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipr_hostrcb*, align 8
  %4 = alloca %struct.ipr_res_addr*, align 8
  %5 = alloca i32*, align 8
  store %struct.ipr_hostrcb* %0, %struct.ipr_hostrcb** %3, align 8
  %6 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %7 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %1
  %13 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %14 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 129
  br i1 %33, label %34, label %40

34:                                               ; preds = %29, %24, %12
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %62

40:                                               ; preds = %34, %29
  br label %61

41:                                               ; preds = %1
  %42 = load %struct.ipr_hostrcb*, %struct.ipr_hostrcb** %3, align 8
  %43 = getelementptr inbounds %struct.ipr_hostrcb, %struct.ipr_hostrcb* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.ipr_res_addr* %46, %struct.ipr_res_addr** %4, align 8
  %47 = load %struct.ipr_res_addr*, %struct.ipr_res_addr** %4, align 8
  %48 = getelementptr inbounds %struct.ipr_res_addr, %struct.ipr_res_addr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPR_MAX_NUM_BUSES, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.ipr_res_addr*, %struct.ipr_res_addr** %4, align 8
  %54 = getelementptr inbounds %struct.ipr_res_addr, %struct.ipr_res_addr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IPR_MAX_NUM_TARGETS_PER_BUS, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %62

60:                                               ; preds = %52, %41
  br label %61

61:                                               ; preds = %60, %40
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %39
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
