; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_calc_data_length_direction.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_calc_data_length_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_request = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_NONE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp_target_request*, i32*, i32*)* @sbp_calc_data_length_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp_calc_data_length_direction(%struct.sbp_target_request* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sbp_target_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sbp_target_request* %0, %struct.sbp_target_request** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.sbp_target_request*, %struct.sbp_target_request** %4, align 8
  %11 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = call i32 @CMDBLK_ORB_DATA_SIZE(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sbp_target_request*, %struct.sbp_target_request** %4, align 8
  %17 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = call i32 @CMDBLK_ORB_DIRECTION(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @DMA_NONE, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %70

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.sbp_target_request*, %struct.sbp_target_request** %4, align 8
  %39 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load i32*, i32** %5, align 8
  store i32 0, i32* %43, align 4
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %63, %42
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.sbp_target_request*, %struct.sbp_target_request** %4, align 8
  %50 = getelementptr inbounds %struct.sbp_target_request, %struct.sbp_target_request* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @be16_to_cpu(i32 %56)
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %57
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %44

66:                                               ; preds = %44
  br label %70

67:                                               ; preds = %35
  %68 = load i32, i32* %7, align 4
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %70

70:                                               ; preds = %24, %67, %66
  ret void
}

declare dso_local i32 @CMDBLK_ORB_DATA_SIZE(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @CMDBLK_ORB_DIRECTION(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
