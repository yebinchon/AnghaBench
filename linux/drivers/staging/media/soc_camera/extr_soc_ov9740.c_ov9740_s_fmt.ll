; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.ov9740_priv = type { %struct.v4l2_mbus_framefmt }

@ov9740_defaults = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_framefmt*)* @ov9740_s_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_s_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.ov9740_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev* %11)
  store %struct.ov9740_priv* %12, %struct.ov9740_priv** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = load i32, i32* @ov9740_defaults, align 4
  %15 = load i32, i32* @ov9740_defaults, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @ov9740_reg_write_array(%struct.i2c_client* %13, i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ov9740_set_res(%struct.i2c_client* %23, i32 %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %22
  %36 = load %struct.ov9740_priv*, %struct.ov9740_priv** %7, align 8
  %37 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %36, i32 0, i32 0
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %39 = bitcast %struct.v4l2_mbus_framefmt* %37 to i8*
  %40 = bitcast %struct.v4l2_mbus_framefmt* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %33, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov9740_reg_write_array(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ov9740_set_res(%struct.i2c_client*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
