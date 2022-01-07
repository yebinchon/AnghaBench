; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @ade7854_i2c_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_i2c_write_reg(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iio_dev*, align 8
  %12 = alloca %struct.ade7854_state*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %13)
  store %struct.iio_dev* %14, %struct.iio_dev** %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %11, align 8
  %16 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %15)
  store %struct.ade7854_state* %16, %struct.ade7854_state** %12, align 8
  %17 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %18 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %24 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %30 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %104 [
    i32 8, label %34
    i32 16, label %41
    i32 24, label %55
    i32 32, label %76
  ]

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 255
  %37 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %38 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %36, i32* %40, align 4
  store i32 3, i32* %10, align 4
  br label %107

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %46 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 255
  %51 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %52 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  store i32 %50, i32* %54, align 4
  store i32 4, i32* %10, align 4
  br label %107

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %60 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %67 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, 255
  %72 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %73 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32 %71, i32* %75, align 4
  store i32 5, i32* %10, align 4
  br label %107

76:                                               ; preds = %4
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 255
  %80 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %81 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = ashr i32 %84, 16
  %86 = and i32 %85, 255
  %87 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %88 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %95 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 255
  %100 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %101 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 5
  store i32 %99, i32* %103, align 4
  store i32 6, i32* %10, align 4
  br label %107

104:                                              ; preds = %4
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %116

107:                                              ; preds = %76, %55, %41, %34
  %108 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %109 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %112 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @i2c_master_send(i32 %110, i32* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %107, %104
  %117 = load %struct.ade7854_state*, %struct.ade7854_state** %12, align 8
  %118 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %117, i32 0, i32 1
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %9, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %9, align 4
  br label %125

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 0, %124 ]
  ret i32 %126
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
