; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { i32, i32 }

@MT9V022_REG32 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MT9V022_CHIP_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9v022_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_s_stream(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9v022*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %11 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %10)
  store %struct.mt9v022* %11, %struct.mt9v022** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %16 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, -17
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %20 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_mt9v022_rev3(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %14
  %25 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %26 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @is_mt9v024(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %24, %14
  %31 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %32 = load i32, i32* @MT9V022_REG32, align 4
  %33 = call i64 @reg_clear(%struct.i2c_client* %31, i32 %32, i32 516)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %78

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %24
  br label %66

40:                                               ; preds = %2
  %41 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %42 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, 16
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %46 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @is_mt9v022_rev3(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %40
  %51 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %52 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_mt9v024(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %50, %40
  %57 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %58 = load i32, i32* @MT9V022_REG32, align 4
  %59 = call i64 @reg_set(%struct.i2c_client* %57, i32 %58, i32 516)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %78

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %39
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = load i32, i32* @MT9V022_CHIP_CONTROL, align 4
  %69 = load %struct.mt9v022*, %struct.mt9v022** %7, align 8
  %70 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @reg_write(%struct.i2c_client* %67, i32 %68, i32 %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74, %61, %35
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i64 @is_mt9v022_rev3(i32) #1

declare dso_local i64 @is_mt9v024(i32) #1

declare dso_local i64 @reg_clear(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i64 @reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
