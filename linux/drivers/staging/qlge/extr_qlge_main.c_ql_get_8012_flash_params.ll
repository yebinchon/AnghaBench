; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_8012_flash_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_get_8012_flash_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@SEM_FLASH_MASK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Error reading flash.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"8012\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Invalid flash.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_get_8012_flash_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_8012_flash_params(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %9 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %9, i32 0, i32 1
  %11 = bitcast %struct.TYPE_5__* %10 to i32*
  store i32* %11, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %20 = load i32, i32* @SEM_FLASH_MASK, align 4
  %21 = call i64 @ql_sem_spinlock(%struct.ql_adapter* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %100

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @ql_read_flash_word(%struct.ql_adapter* %32, i32 %35, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %42 = load i32, i32* @ifup, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @netif_err(%struct.ql_adapter* %41, i32 %42, %struct.TYPE_6__* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %95

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %55 = call i32 @ql_validate_flash(%struct.ql_adapter* %54, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %60 = load i32, i32* @ifup, align 4
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @netif_err(%struct.ql_adapter* %59, i32 %60, %struct.TYPE_6__* %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %95

67:                                               ; preds = %53
  %68 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @is_valid_ether_addr(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %95

78:                                               ; preds = %67
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %79, i32 0, i32 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @memcpy(i32 %83, i32 %88, i32 %93)
  br label %95

95:                                               ; preds = %78, %75, %58, %40
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %97 = load i32, i32* @SEM_FLASH_MASK, align 4
  %98 = call i32 @ql_sem_unlock(%struct.ql_adapter* %96, i32 %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %95, %23
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i64 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_read_flash_word(%struct.ql_adapter*, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @ql_validate_flash(%struct.ql_adapter*, i32, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
