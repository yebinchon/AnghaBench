; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_tcs_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmh-rsc.c_tcs_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_drv = type { i32 }
%struct.tcs_group = type { i32, i32, i32, i32 }

@MAX_TCS_SLOTS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RSC_DRV_CMD_ENABLE = common dso_local global i32 0, align 4
@RSC_DRV_CMD_WAIT_FOR_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsc_drv*, i32)* @tcs_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs_invalidate(%struct.rsc_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsc_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcs_group*, align 8
  store %struct.rsc_drv* %0, %struct.rsc_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.tcs_group* @get_tcs_of_type(%struct.rsc_drv* %8, i32 %9)
  store %struct.tcs_group* %10, %struct.tcs_group** %7, align 8
  %11 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %12 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %15 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MAX_TCS_SLOTS, align 4
  %18 = call i64 @bitmap_empty(i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %22 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %21, i32 0, i32 2
  %23 = call i32 @spin_unlock(i32* %22)
  store i32 0, i32* %3, align 4
  br label %70

24:                                               ; preds = %2
  %25 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %26 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %58, %24
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %31 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %34 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = icmp slt i32 %29, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %28
  %39 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @tcs_is_free(%struct.rsc_drv* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  %44 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %45 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %70

49:                                               ; preds = %38
  %50 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %51 = load i32, i32* @RSC_DRV_CMD_ENABLE, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @write_tcs_reg_sync(%struct.rsc_drv* %50, i32 %51, i32 %52, i32 0)
  %54 = load %struct.rsc_drv*, %struct.rsc_drv** %4, align 8
  %55 = load i32, i32* @RSC_DRV_CMD_WAIT_FOR_CMPL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @write_tcs_reg_sync(%struct.rsc_drv* %54, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %63 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MAX_TCS_SLOTS, align 4
  %66 = call i32 @bitmap_zero(i32 %64, i32 %65)
  %67 = load %struct.tcs_group*, %struct.tcs_group** %7, align 8
  %68 = getelementptr inbounds %struct.tcs_group, %struct.tcs_group* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %61, %43, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.tcs_group* @get_tcs_of_type(%struct.rsc_drv*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tcs_is_free(%struct.rsc_drv*, i32) #1

declare dso_local i32 @write_tcs_reg_sync(%struct.rsc_drv*, i32, i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
