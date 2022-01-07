; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_emulate_read_cap_with_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_iblock.c_iblock_emulate_read_cap_with_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i32 }
%struct.request_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.se_device*, %struct.block_device*, %struct.request_queue*)* @iblock_emulate_read_cap_with_block_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iblock_emulate_read_cap_with_block_size(%struct.se_device* %0, %struct.block_device* %1, %struct.request_queue* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store %struct.request_queue* %2, %struct.request_queue** %7, align 8
  %10 = load %struct.block_device*, %struct.block_device** %6, align 8
  %11 = getelementptr inbounds %struct.block_device, %struct.block_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @i_size_read(i32 %12)
  %14 = load %struct.block_device*, %struct.block_device** %6, align 8
  %15 = call i32 @bdev_logical_block_size(%struct.block_device* %14)
  %16 = call i32 @div_u64(i32 %13, i32 %15)
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load %struct.block_device*, %struct.block_device** %6, align 8
  %20 = call i32 @bdev_logical_block_size(%struct.block_device* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.se_device*, %struct.se_device** %5, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %4, align 8
  br label %98

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %95 [
    i32 4096, label %31
    i32 2048, label %47
    i32 1024, label %63
    i32 512, label %79
  ]

31:                                               ; preds = %29
  %32 = load %struct.se_device*, %struct.se_device** %5, align 8
  %33 = getelementptr inbounds %struct.se_device, %struct.se_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %45 [
    i32 2048, label %36
    i32 1024, label %39
    i32 512, label %42
  ]

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = shl i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %46

39:                                               ; preds = %31
  %40 = load i64, i64* %8, align 8
  %41 = shl i64 %40, 2
  store i64 %41, i64* %8, align 8
  br label %46

42:                                               ; preds = %31
  %43 = load i64, i64* %8, align 8
  %44 = shl i64 %43, 3
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %31, %42
  br label %46

46:                                               ; preds = %45, %39, %36
  br label %96

47:                                               ; preds = %29
  %48 = load %struct.se_device*, %struct.se_device** %5, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %61 [
    i32 4096, label %52
    i32 1024, label %55
    i32 512, label %58
  ]

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = lshr i64 %53, 1
  store i64 %54, i64* %8, align 8
  br label %62

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = shl i64 %56, 1
  store i64 %57, i64* %8, align 8
  br label %62

58:                                               ; preds = %47
  %59 = load i64, i64* %8, align 8
  %60 = shl i64 %59, 2
  store i64 %60, i64* %8, align 8
  br label %62

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %58, %55, %52
  br label %96

63:                                               ; preds = %29
  %64 = load %struct.se_device*, %struct.se_device** %5, align 8
  %65 = getelementptr inbounds %struct.se_device, %struct.se_device* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %77 [
    i32 4096, label %68
    i32 2048, label %71
    i32 512, label %74
  ]

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = lshr i64 %69, 2
  store i64 %70, i64* %8, align 8
  br label %78

71:                                               ; preds = %63
  %72 = load i64, i64* %8, align 8
  %73 = lshr i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %78

74:                                               ; preds = %63
  %75 = load i64, i64* %8, align 8
  %76 = shl i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %78

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %74, %71, %68
  br label %96

79:                                               ; preds = %29
  %80 = load %struct.se_device*, %struct.se_device** %5, align 8
  %81 = getelementptr inbounds %struct.se_device, %struct.se_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %93 [
    i32 4096, label %84
    i32 2048, label %87
    i32 1024, label %90
  ]

84:                                               ; preds = %79
  %85 = load i64, i64* %8, align 8
  %86 = lshr i64 %85, 3
  store i64 %86, i64* %8, align 8
  br label %94

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = lshr i64 %88, 2
  store i64 %89, i64* %8, align 8
  br label %94

90:                                               ; preds = %79
  %91 = load i64, i64* %8, align 8
  %92 = lshr i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %94

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %90, %87, %84
  br label %96

95:                                               ; preds = %29
  br label %96

96:                                               ; preds = %95, %94, %78, %62, %46
  %97 = load i64, i64* %8, align 8
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %96, %27
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
