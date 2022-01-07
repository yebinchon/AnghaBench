; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_check_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf_cfg.c_check_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.odm_dm_struct }
%struct.odm_dm_struct = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32)* @check_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_condition(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.odm_dm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.odm_dm_struct* %14, %struct.odm_dm_struct** %6, align 8
  %15 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %16 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %19 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %6, align 8
  %22 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, -842150451
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %65

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 65280
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %41, 8
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 7
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %65

51:                                               ; preds = %47, %38
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 16711680
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 16
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 15
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %65

64:                                               ; preds = %60, %51
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %50, %37, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
