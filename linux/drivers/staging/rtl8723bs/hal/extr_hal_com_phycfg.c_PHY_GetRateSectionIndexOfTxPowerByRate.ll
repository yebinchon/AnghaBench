; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_GetRateSectionIndexOfTxPowerByRate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_PHY_GetRateSectionIndexOfTxPowerByRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@bMaskH3Bytes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Invalid RegAddr 0x3%x in PHY_GetRateSectionIndexOfTxPowerByRate()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PHY_GetRateSectionIndexOfTxPowerByRate(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %10)
  store %struct.hal_com_data* %11, %struct.hal_com_data** %7, align 8
  %12 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %13 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %12, i32 0, i32 0
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %45 [
    i32 137, label %20
    i32 136, label %21
    i32 142, label %22
    i32 135, label %23
    i32 141, label %34
    i32 140, label %35
    i32 139, label %36
    i32 138, label %37
    i32 129, label %38
    i32 128, label %39
    i32 134, label %40
    i32 133, label %41
    i32 132, label %42
    i32 131, label %43
    i32 130, label %44
  ]

20:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %48

21:                                               ; preds = %18
  store i32 1, i32* %9, align 4
  br label %48

22:                                               ; preds = %18
  store i32 6, i32* %9, align 4
  br label %48

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @bMaskH3Bytes, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 7, i32* %9, align 4
  br label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 15, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32, %27
  br label %48

34:                                               ; preds = %18
  store i32 2, i32* %9, align 4
  br label %48

35:                                               ; preds = %18
  store i32 3, i32* %9, align 4
  br label %48

36:                                               ; preds = %18
  store i32 4, i32* %9, align 4
  br label %48

37:                                               ; preds = %18
  store i32 5, i32* %9, align 4
  br label %48

38:                                               ; preds = %18
  store i32 8, i32* %9, align 4
  br label %48

39:                                               ; preds = %18
  store i32 9, i32* %9, align 4
  br label %48

40:                                               ; preds = %18
  store i32 14, i32* %9, align 4
  br label %48

41:                                               ; preds = %18
  store i32 10, i32* %9, align 4
  br label %48

42:                                               ; preds = %18
  store i32 11, i32* %9, align 4
  br label %48

43:                                               ; preds = %18
  store i32 12, i32* %9, align 4
  br label %48

44:                                               ; preds = %18
  store i32 13, i32* %9, align 4
  br label %48

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @DBG_871X(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %22, %21, %20
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
