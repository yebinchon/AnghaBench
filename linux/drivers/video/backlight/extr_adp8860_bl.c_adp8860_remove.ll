; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp8860_bl.c_adp8860_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adp8860_bl = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADP8860_MDCR = common dso_local global i32 0, align 4
@NSTBY = common dso_local global i32 0, align 4
@adp8860_bl_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @adp8860_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp8860_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adp8860_bl*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.adp8860_bl* %5, %struct.adp8860_bl** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = load i32, i32* @ADP8860_MDCR, align 4
  %8 = load i32, i32* @NSTBY, align 4
  %9 = call i32 @adp8860_clr_bits(%struct.i2c_client* %6, i32 %7, i32 %8)
  %10 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %11 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %16 = call i32 @adp8860_led_remove(%struct.i2c_client* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %19 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.adp8860_bl*, %struct.adp8860_bl** %3, align 8
  %24 = getelementptr inbounds %struct.adp8860_bl, %struct.adp8860_bl* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @sysfs_remove_group(i32* %27, i32* @adp8860_bl_attr_group)
  br label %29

29:                                               ; preds = %22, %17
  ret i32 0
}

declare dso_local %struct.adp8860_bl* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @adp8860_clr_bits(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @adp8860_led_remove(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
