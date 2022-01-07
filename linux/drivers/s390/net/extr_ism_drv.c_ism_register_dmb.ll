; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_register_dmb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ism_drv.c_ism_register_dmb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smcd_dev = type { %struct.ism_dev* }
%struct.ism_dev = type { i32 }
%struct.smcd_dmb = type { i32, i32, i32, i32, i32, i32, i32 }
%union.ism_reg_dmb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ISM_REG_DMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smcd_dev*, %struct.smcd_dmb*)* @ism_register_dmb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ism_register_dmb(%struct.smcd_dev* %0, %struct.smcd_dmb* %1) #0 {
  %3 = alloca %struct.smcd_dev*, align 8
  %4 = alloca %struct.smcd_dmb*, align 8
  %5 = alloca %struct.ism_dev*, align 8
  %6 = alloca %union.ism_reg_dmb, align 4
  %7 = alloca i32, align 4
  store %struct.smcd_dev* %0, %struct.smcd_dev** %3, align 8
  store %struct.smcd_dmb* %1, %struct.smcd_dmb** %4, align 8
  %8 = load %struct.smcd_dev*, %struct.smcd_dev** %3, align 8
  %9 = getelementptr inbounds %struct.smcd_dev, %struct.smcd_dev* %8, i32 0, i32 0
  %10 = load %struct.ism_dev*, %struct.ism_dev** %9, align 8
  store %struct.ism_dev* %10, %struct.ism_dev** %5, align 8
  %11 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %12 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %13 = call i32 @ism_alloc_dmb(%struct.ism_dev* %11, %struct.smcd_dmb* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %70

17:                                               ; preds = %2
  %18 = call i32 @memset(%union.ism_reg_dmb* %6, i32 0, i32 32)
  %19 = load i32, i32* @ISM_REG_DMB, align 4
  %20 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 32, i32* %25, align 4
  %26 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %27 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %32 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %37 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %42 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %47 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %52 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_5__*
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %57 = call i32 @ism_cmd(%struct.ism_dev* %56, %union.ism_reg_dmb* %6)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %17
  %61 = load %struct.ism_dev*, %struct.ism_dev** %5, align 8
  %62 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %63 = call i32 @ism_free_dmb(%struct.ism_dev* %61, %struct.smcd_dmb* %62)
  br label %70

64:                                               ; preds = %17
  %65 = bitcast %union.ism_reg_dmb* %6 to %struct.TYPE_6__*
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.smcd_dmb*, %struct.smcd_dmb** %4, align 8
  %69 = getelementptr inbounds %struct.smcd_dmb, %struct.smcd_dmb* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %60, %16
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @ism_alloc_dmb(%struct.ism_dev*, %struct.smcd_dmb*) #1

declare dso_local i32 @memset(%union.ism_reg_dmb*, i32, i32) #1

declare dso_local i32 @ism_cmd(%struct.ism_dev*, %union.ism_reg_dmb*) #1

declare dso_local i32 @ism_free_dmb(%struct.ism_dev*, %struct.smcd_dmb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
