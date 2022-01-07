; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_video_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.v4l2_subdev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Chip ID 0x%04x detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PLL_MULTIPLIER = common dso_local global i32 0, align 4
@PRE_PLL_CLK_DIV = common dso_local global i32 0, align 4
@PLSTATIM = common dso_local global i32 0, align 4
@IMAGE_ORIENTATION = common dso_local global i32 0, align 4
@VNDMY_ABLMGSHLMT = common dso_local global i32 0, align 4
@Y_OPBADDR_START_DI = common dso_local global i32 0, align 4
@FRAME_LENGTH_LINES_HI = common dso_local global i32 0, align 4
@FRAME_LENGTH_LINES_LO = common dso_local global i32 0, align 4
@YADDR_START = common dso_local global i32 0, align 4
@YADDR_END = common dso_local global i32 0, align 4
@X_OUTPUT_SIZE_MSB = common dso_local global i32 0, align 4
@X_OUTPUT_SIZE_LSB = common dso_local global i32 0, align 4
@Y_OUTPUT_SIZE_MSB = common dso_local global i32 0, align 4
@Y_OUTPUT_SIZE_LSB = common dso_local global i32 0, align 4
@X_EVEN_INC = common dso_local global i32 0, align 4
@X_ODD_INC = common dso_local global i32 0, align 4
@Y_EVEN_INC = common dso_local global i32 0, align 4
@Y_ODD_INC = common dso_local global i32 0, align 4
@HMODEADD = common dso_local global i32 0, align 4
@VMODEADD = common dso_local global i32 0, align 4
@VAPPLINE_START = common dso_local global i32 0, align 4
@VAPPLINE_END = common dso_local global i32 0, align 4
@SHUTTER = common dso_local global i32 0, align 4
@HADDAVE = common dso_local global i32 0, align 4
@LANESEL = common dso_local global i32 0, align 4
@GROUPED_PARAMETER_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @imx074_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx074_video_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.v4l2_subdev* %8, %struct.v4l2_subdev** %4, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call i32 @imx074_s_power(%struct.v4l2_subdev* %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %193

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %17 = call i32 @reg_read(%struct.i2c_client* %16, i32 0)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %189

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 %22, 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = call i32 @reg_read(%struct.i2c_client* %24, i32 1)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %189

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 116
  br i1 %38, label %39, label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %189

42:                                               ; preds = %29
  %43 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %44 = load i32, i32* @PLL_MULTIPLIER, align 4
  %45 = call i32 @reg_write(%struct.i2c_client* %43, i32 %44, i32 45)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = load i32, i32* @PRE_PLL_CLK_DIV, align 4
  %48 = call i32 @reg_write(%struct.i2c_client* %46, i32 %47, i32 2)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %50 = load i32, i32* @PLSTATIM, align 4
  %51 = call i32 @reg_write(%struct.i2c_client* %49, i32 %50, i32 75)
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = call i32 @reg_write(%struct.i2c_client* %52, i32 12324, i32 0)
  %54 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %55 = load i32, i32* @IMAGE_ORIENTATION, align 4
  %56 = call i32 @reg_write(%struct.i2c_client* %54, i32 %55, i32 0)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %58 = call i32 @reg_write(%struct.i2c_client* %57, i32 274, i32 8)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %60 = call i32 @reg_write(%struct.i2c_client* %59, i32 275, i32 8)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %62 = load i32, i32* @VNDMY_ABLMGSHLMT, align 4
  %63 = call i32 @reg_write(%struct.i2c_client* %61, i32 %62, i32 128)
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i32, i32* @Y_OPBADDR_START_DI, align 4
  %66 = call i32 @reg_write(%struct.i2c_client* %64, i32 %65, i32 8)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = call i32 @reg_write(%struct.i2c_client* %67, i32 12309, i32 55)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = call i32 @reg_write(%struct.i2c_client* %69, i32 12316, i32 1)
  %71 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %72 = call i32 @reg_write(%struct.i2c_client* %71, i32 12332, i32 5)
  %73 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %74 = call i32 @reg_write(%struct.i2c_client* %73, i32 12337, i32 38)
  %75 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %76 = call i32 @reg_write(%struct.i2c_client* %75, i32 12353, i32 96)
  %77 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %78 = call i32 @reg_write(%struct.i2c_client* %77, i32 12369, i32 36)
  %79 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %80 = call i32 @reg_write(%struct.i2c_client* %79, i32 12371, i32 52)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = call i32 @reg_write(%struct.i2c_client* %81, i32 12375, i32 192)
  %83 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %84 = call i32 @reg_write(%struct.i2c_client* %83, i32 12380, i32 9)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %86 = call i32 @reg_write(%struct.i2c_client* %85, i32 12381, i32 7)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %88 = call i32 @reg_write(%struct.i2c_client* %87, i32 12384, i32 48)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %90 = call i32 @reg_write(%struct.i2c_client* %89, i32 12389, i32 0)
  %91 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %92 = call i32 @reg_write(%struct.i2c_client* %91, i32 12458, i32 8)
  %93 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %94 = call i32 @reg_write(%struct.i2c_client* %93, i32 12459, i32 28)
  %95 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %96 = call i32 @reg_write(%struct.i2c_client* %95, i32 12464, i32 50)
  %97 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %98 = call i32 @reg_write(%struct.i2c_client* %97, i32 12466, i32 131)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = call i32 @reg_write(%struct.i2c_client* %99, i32 12499, i32 4)
  %101 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %102 = call i32 @reg_write(%struct.i2c_client* %101, i32 12550, i32 120)
  %103 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %104 = call i32 @reg_write(%struct.i2c_client* %103, i32 12556, i32 130)
  %105 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %106 = call i32 @reg_write(%struct.i2c_client* %105, i32 13060, i32 5)
  %107 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %108 = call i32 @reg_write(%struct.i2c_client* %107, i32 13061, i32 4)
  %109 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %110 = call i32 @reg_write(%struct.i2c_client* %109, i32 13062, i32 17)
  %111 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %112 = call i32 @reg_write(%struct.i2c_client* %111, i32 13063, i32 2)
  %113 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %114 = call i32 @reg_write(%struct.i2c_client* %113, i32 13064, i32 12)
  %115 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %116 = call i32 @reg_write(%struct.i2c_client* %115, i32 13065, i32 6)
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = call i32 @reg_write(%struct.i2c_client* %117, i32 13066, i32 8)
  %119 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %120 = call i32 @reg_write(%struct.i2c_client* %119, i32 13067, i32 4)
  %121 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %122 = call i32 @reg_write(%struct.i2c_client* %121, i32 13068, i32 8)
  %123 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %124 = call i32 @reg_write(%struct.i2c_client* %123, i32 13069, i32 6)
  %125 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %126 = call i32 @reg_write(%struct.i2c_client* %125, i32 13070, i32 1)
  %127 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %128 = call i32 @reg_write(%struct.i2c_client* %127, i32 13185, i32 0)
  %129 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %130 = load i32, i32* @FRAME_LENGTH_LINES_HI, align 4
  %131 = call i32 @reg_write(%struct.i2c_client* %129, i32 %130, i32 6)
  %132 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %133 = load i32, i32* @FRAME_LENGTH_LINES_LO, align 4
  %134 = call i32 @reg_write(%struct.i2c_client* %132, i32 %133, i32 72)
  %135 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %136 = load i32, i32* @YADDR_START, align 4
  %137 = call i32 @reg_write(%struct.i2c_client* %135, i32 %136, i32 0)
  %138 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %139 = load i32, i32* @YADDR_END, align 4
  %140 = call i32 @reg_write(%struct.i2c_client* %138, i32 %139, i32 47)
  %141 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %142 = load i32, i32* @X_OUTPUT_SIZE_MSB, align 4
  %143 = call i32 @reg_write(%struct.i2c_client* %141, i32 %142, i32 8)
  %144 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %145 = load i32, i32* @X_OUTPUT_SIZE_LSB, align 4
  %146 = call i32 @reg_write(%struct.i2c_client* %144, i32 %145, i32 56)
  %147 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %148 = load i32, i32* @Y_OUTPUT_SIZE_MSB, align 4
  %149 = call i32 @reg_write(%struct.i2c_client* %147, i32 %148, i32 6)
  %150 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %151 = load i32, i32* @Y_OUTPUT_SIZE_LSB, align 4
  %152 = call i32 @reg_write(%struct.i2c_client* %150, i32 %151, i32 24)
  %153 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %154 = load i32, i32* @X_EVEN_INC, align 4
  %155 = call i32 @reg_write(%struct.i2c_client* %153, i32 %154, i32 1)
  %156 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %157 = load i32, i32* @X_ODD_INC, align 4
  %158 = call i32 @reg_write(%struct.i2c_client* %156, i32 %157, i32 3)
  %159 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %160 = load i32, i32* @Y_EVEN_INC, align 4
  %161 = call i32 @reg_write(%struct.i2c_client* %159, i32 %160, i32 1)
  %162 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %163 = load i32, i32* @Y_ODD_INC, align 4
  %164 = call i32 @reg_write(%struct.i2c_client* %162, i32 %163, i32 3)
  %165 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %166 = load i32, i32* @HMODEADD, align 4
  %167 = call i32 @reg_write(%struct.i2c_client* %165, i32 %166, i32 0)
  %168 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %169 = load i32, i32* @VMODEADD, align 4
  %170 = call i32 @reg_write(%struct.i2c_client* %168, i32 %169, i32 22)
  %171 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %172 = load i32, i32* @VAPPLINE_START, align 4
  %173 = call i32 @reg_write(%struct.i2c_client* %171, i32 %172, i32 36)
  %174 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %175 = load i32, i32* @VAPPLINE_END, align 4
  %176 = call i32 @reg_write(%struct.i2c_client* %174, i32 %175, i32 83)
  %177 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %178 = load i32, i32* @SHUTTER, align 4
  %179 = call i32 @reg_write(%struct.i2c_client* %177, i32 %178, i32 0)
  %180 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %181 = load i32, i32* @HADDAVE, align 4
  %182 = call i32 @reg_write(%struct.i2c_client* %180, i32 %181, i32 128)
  %183 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %184 = load i32, i32* @LANESEL, align 4
  %185 = call i32 @reg_write(%struct.i2c_client* %183, i32 %184, i32 0)
  %186 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %187 = load i32, i32* @GROUPED_PARAMETER_HOLD, align 4
  %188 = call i32 @reg_write(%struct.i2c_client* %186, i32 %187, i32 0)
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %42, %39, %28, %20
  %190 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %191 = call i32 @imx074_s_power(%struct.v4l2_subdev* %190, i32 0)
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %189, %13
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @imx074_s_power(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
