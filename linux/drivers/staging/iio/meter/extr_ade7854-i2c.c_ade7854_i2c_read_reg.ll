; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/iio/meter/extr_ade7854-i2c.c_ade7854_i2c_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ade7854_state = type { i32*, i32*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32*, i32)* @ade7854_i2c_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ade7854_i2c_read_reg(%struct.device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.ade7854_state*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.iio_dev* @dev_to_iio_dev(%struct.device* %12)
  store %struct.iio_dev* %13, %struct.iio_dev** %9, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %15 = call %struct.ade7854_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.ade7854_state* %15, %struct.ade7854_state** %10, align 8
  %16 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %17 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %23 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %29 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  %32 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %33 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %36 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @i2c_master_send(i32 %34, i32* %37, i32 2)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  br label %130

42:                                               ; preds = %4
  %43 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %44 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %47 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i2c_master_recv(i32 %45, i32* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %130

54:                                               ; preds = %42
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %126 [
    i32 8, label %56
    i32 16, label %63
    i32 24, label %77
    i32 32, label %98
  ]

56:                                               ; preds = %54
  %57 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %58 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  br label %129

63:                                               ; preds = %54
  %64 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %65 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %71 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %69, %74
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  br label %129

77:                                               ; preds = %54
  %78 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %79 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 16
  %84 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %85 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 8
  %90 = or i32 %83, %89
  %91 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %92 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %90, %95
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %129

98:                                               ; preds = %54
  %99 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %100 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %106 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %104, %110
  %112 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %113 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 8
  %118 = or i32 %111, %117
  %119 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %120 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %118, %123
  %125 = load i32*, i32** %7, align 8
  store i32 %124, i32* %125, align 4
  br label %129

126:                                              ; preds = %54
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %11, align 4
  br label %130

129:                                              ; preds = %98, %77, %63, %56
  br label %130

130:                                              ; preds = %129, %126, %53, %41
  %131 = load %struct.ade7854_state*, %struct.ade7854_state** %10, align 8
  %132 = getelementptr inbounds %struct.ade7854_state, %struct.ade7854_state* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %11, align 4
  ret i32 %134
}

declare dso_local %struct.iio_dev* @dev_to_iio_dev(%struct.device*) #1

declare dso_local %struct.ade7854_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_master_send(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_recv(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
