; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_8000_flash_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_8000_flash_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32* }

@FUNC0_FLASH_OFFSET = common dso_local global i32 0, align 4
@FUNC1_FLASH_OFFSET = common dso_local global i32 0, align 4
@SEM_FLASH_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error reading flash.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"8000\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid flash.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid MAC address.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_get_8000_flash_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_8000_flash_params(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %10 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %10, i32 0, i32 1
  %12 = bitcast %struct.TYPE_5__* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @FUNC0_FLASH_OFFSET, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %27

22:                                               ; preds = %1
  %23 = load i32, i32* @FUNC1_FLASH_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %29 = load i32, i32* @SEM_FLASH_MASK, align 4
  %30 = call i64 @ql_sem_spinlock(%struct.ql_adapter* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %140

35:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @ql_read_flash_word(%struct.ql_adapter* %41, i32 %44, i32* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %51 = load i32, i32* @ifup, align 4
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @netif_err(%struct.ql_adapter* %50, i32 %51, %struct.TYPE_6__* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %135

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %64 = call i32 @ql_validate_flash(%struct.ql_adapter* %63, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %69 = load i32, i32* @ifup, align 4
  %70 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @netif_err(%struct.ql_adapter* %68, i32 %69, %struct.TYPE_6__* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %135

76:                                               ; preds = %62
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @memcpy(i32* %84, i32* %89, i32 %94)
  br label %109

96:                                               ; preds = %76
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memcpy(i32* %97, i32* %102, i32 %107)
  br label %109

109:                                              ; preds = %96, %83
  %110 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %111 = call i32 @is_valid_ether_addr(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %115 = load i32, i32* @ifup, align 4
  %116 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = call i32 @netif_err(%struct.ql_adapter* %114, i32 %115, %struct.TYPE_6__* %118, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %135

122:                                              ; preds = %109
  %123 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @memcpy(i32* %127, i32* %128, i32 %133)
  br label %135

135:                                              ; preds = %122, %113, %67, %49
  %136 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %137 = load i32, i32* @SEM_FLASH_MASK, align 4
  %138 = call i32 @ql_sem_unlock(%struct.ql_adapter* %136, i32 %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %135, %32
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i64 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_read_flash_word(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ql_validate_flash(%struct.ql_adapter*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
