; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_setup_ddc_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_setup_ddc_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_6__, %struct.tridentfb_par* }
%struct.TYPE_6__ = type { i32 }
%struct.tridentfb_par = type { %struct.TYPE_9__, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.tridentfb_par*, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@tridentfb_ddc_setsda_tgui = common dso_local global i32 0, align 4
@tridentfb_ddc_setscl_tgui = common dso_local global i32 0, align 4
@tridentfb_ddc_getsda_tgui = common dso_local global i32 0, align 4
@tridentfb_ddc_setsda = common dso_local global i32 0, align 4
@tridentfb_ddc_setscl = common dso_local global i32 0, align 4
@tridentfb_ddc_getsda = common dso_local global i32 0, align 4
@tridentfb_ddc_getscl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @tridentfb_setup_ddc_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_setup_ddc_bus(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tridentfb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 2
  %6 = load %struct.tridentfb_par*, %struct.tridentfb_par** %5, align 8
  store %struct.tridentfb_par* %6, %struct.tridentfb_par** %3, align 8
  %7 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %8 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlcpy(i32 %10, i32 %14, i32 4)
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %18 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* @I2C_CLASS_DDC, align 4
  %21 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %22 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %25 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %24, i32 0, i32 1
  %26 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %27 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %28, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %33 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 8
  %36 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %37 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @is_oldclock(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %1
  %42 = load i32, i32* @tridentfb_ddc_setsda_tgui, align 4
  %43 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %44 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @tridentfb_ddc_setscl_tgui, align 4
  %47 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %48 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 8
  %50 = load i32, i32* @tridentfb_ddc_getsda_tgui, align 4
  %51 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %52 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 4
  br label %71

54:                                               ; preds = %1
  %55 = load i32, i32* @tridentfb_ddc_setsda, align 4
  %56 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %57 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 6
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @tridentfb_ddc_setscl, align 4
  %60 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %61 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @tridentfb_ddc_getsda, align 4
  %64 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %65 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store i32 %63, i32* %66, align 4
  %67 = load i32, i32* @tridentfb_ddc_getscl, align 4
  %68 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %69 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %54, %41
  %72 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %73 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i32 10, i32* %74, align 8
  %75 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %76 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  store i32 20, i32* %77, align 4
  %78 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %79 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %80 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  store %struct.tridentfb_par* %78, %struct.tridentfb_par** %81, align 8
  %82 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %83 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %82, i32 0, i32 0
  %84 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %85 = call i32 @i2c_set_adapdata(%struct.TYPE_9__* %83, %struct.tridentfb_par* %84)
  %86 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %87 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %86, i32 0, i32 0
  %88 = call i32 @i2c_bit_add_bus(%struct.TYPE_9__* %87)
  ret i32 %88
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @is_oldclock(i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_9__*, %struct.tridentfb_par*) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
