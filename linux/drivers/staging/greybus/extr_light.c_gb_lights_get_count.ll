; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_get_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_lights = type { i64, i32 }
%struct.gb_lights_get_lights_response = type { i64 }

@GB_LIGHTS_TYPE_GET_LIGHTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_lights*)* @gb_lights_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_get_count(%struct.gb_lights* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_lights*, align 8
  %4 = alloca %struct.gb_lights_get_lights_response, align 8
  %5 = alloca i32, align 4
  store %struct.gb_lights* %0, %struct.gb_lights** %3, align 8
  %6 = load %struct.gb_lights*, %struct.gb_lights** %3, align 8
  %7 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GB_LIGHTS_TYPE_GET_LIGHTS, align 4
  %10 = call i32 @gb_operation_sync(i32 %8, i32 %9, i32* null, i32 0, %struct.gb_lights_get_lights_response* %4, i32 8)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.gb_lights_get_lights_response, %struct.gb_lights_get_lights_response* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %27

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.gb_lights_get_lights_response, %struct.gb_lights_get_lights_response* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gb_lights*, %struct.gb_lights** %3, align 8
  %26 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %22, %19, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @gb_operation_sync(i32, i32, i32*, i32, %struct.gb_lights_get_lights_response*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
