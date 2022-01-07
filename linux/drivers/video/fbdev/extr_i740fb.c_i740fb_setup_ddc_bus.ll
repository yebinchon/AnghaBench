; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_setup_ddc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_setup_ddc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_6__, %struct.i740fb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.i740fb_par = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.i740fb_par*, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@i740fb_ddc_setsda = common dso_local global i32 0, align 4
@i740fb_ddc_setscl = common dso_local global i32 0, align 4
@i740fb_ddc_getsda = common dso_local global i32 0, align 4
@i740fb_ddc_getscl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @i740fb_setup_ddc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_setup_ddc_bus(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.i740fb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.i740fb_par*, %struct.i740fb_par** %5, align 8
  store %struct.i740fb_par* %6, %struct.i740fb_par** %3, align 8
  %7 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %8 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlcpy(i32 %10, i32 %14, i32 4)
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %18 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @I2C_CLASS_DDC, align 4
  %21 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %22 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %25 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %24, i32 0, i32 1
  %26 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %27 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %33 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load i32, i32* @i740fb_ddc_setsda, align 4
  %37 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %38 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @i740fb_ddc_setscl, align 4
  %41 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %42 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @i740fb_ddc_getsda, align 4
  %45 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %46 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @i740fb_ddc_getscl, align 4
  %49 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %50 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %53 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 10, i32* %54, align 8
  %55 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %56 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 20, i32* %57, align 4
  %58 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %59 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %60 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store %struct.i740fb_par* %58, %struct.i740fb_par** %61, align 8
  %62 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %63 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %62, i32 0, i32 0
  %64 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %65 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %63, %struct.i740fb_par* %64)
  %66 = load %struct.i740fb_par*, %struct.i740fb_par** %3, align 8
  %67 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %66, i32 0, i32 0
  %68 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %67)
  ret i32 %68
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.i740fb_par*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
