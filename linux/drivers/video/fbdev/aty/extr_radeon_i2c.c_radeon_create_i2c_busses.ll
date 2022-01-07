; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_i2c.c_radeon_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.radeonfb_info*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GPIO_MONID = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"monid\00", align 1
@GPIO_DVI_DDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dvi\00", align 1
@GPIO_VGA_DDC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@GPIO_CRT2_DDC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"crt2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_create_i2c_busses(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %3 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %4 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store %struct.radeonfb_info* %3, %struct.radeonfb_info** %8, align 8
  %9 = load i32, i32* @GPIO_MONID, align 4
  %10 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 8
  %15 = load i32, i32* @I2C_CLASS_HWMON, align 4
  %16 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %17 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %15, i32* %21, align 8
  %22 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %23 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 0
  %26 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %28 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %29 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store %struct.radeonfb_info* %27, %struct.radeonfb_info** %32, align 8
  %33 = load i32, i32* @GPIO_DVI_DDC, align 4
  %34 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %35 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 8
  %39 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %40 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 1
  %43 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_4__* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %45 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %46 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.radeonfb_info* %44, %struct.radeonfb_info** %49, align 8
  %50 = load i32, i32* @GPIO_VGA_DDC, align 4
  %51 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %52 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %50, i32* %55, align 8
  %56 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %57 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 2
  %60 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_4__* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %61 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %62 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %63 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store %struct.radeonfb_info* %61, %struct.radeonfb_info** %66, align 8
  %67 = load i32, i32* @GPIO_CRT2_DDC, align 4
  %68 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %69 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 8
  %73 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %74 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 3
  %77 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_4__* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @radeon_setup_i2c_bus(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
