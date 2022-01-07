; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_status_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/altmodes/extr_displayport.c_dp_altmode_status_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dp_altmode = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@DP_STATUS_SWITCH_TO_USB = common dso_local global i32 0, align 4
@DP_STATE_CONFIGURE = common dso_local global i8* null, align 8
@DP_STATUS_EXIT_DP_MODE = common dso_local global i32 0, align 4
@DP_STATE_EXIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dp_altmode*)* @dp_altmode_status_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_altmode_status_update(%struct.dp_altmode* %0) #0 {
  %2 = alloca %struct.dp_altmode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dp_altmode* %0, %struct.dp_altmode** %2, align 8
  %6 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %7 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @DP_CONF_GET_PIN_ASSIGN(i64 %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %16 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @DP_STATUS_CONNECTION(i32 %18)
  store i32 %19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %24 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DP_STATUS_SWITCH_TO_USB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %32 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** @DP_STATE_CONFIGURE, align 8
  %35 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %36 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %71

37:                                               ; preds = %22, %1
  %38 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %39 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DP_STATUS_EXIT_DP_MODE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** @DP_STATE_EXIT, align 8
  %47 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %48 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %70

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %52 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @DP_CONF_CURRENTLY(i64 %54)
  %56 = and i32 %50, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %49
  %59 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dp_altmode_configure(%struct.dp_altmode* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** @DP_STATE_CONFIGURE, align 8
  %66 = load %struct.dp_altmode*, %struct.dp_altmode** %2, align 8
  %67 = getelementptr inbounds %struct.dp_altmode, %struct.dp_altmode* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %45
  br label %71

71:                                               ; preds = %70, %30
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @DP_CONF_GET_PIN_ASSIGN(i64) #1

declare dso_local i32 @DP_STATUS_CONNECTION(i32) #1

declare dso_local i32 @DP_CONF_CURRENTLY(i64) #1

declare dso_local i32 @dp_altmode_configure(%struct.dp_altmode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
