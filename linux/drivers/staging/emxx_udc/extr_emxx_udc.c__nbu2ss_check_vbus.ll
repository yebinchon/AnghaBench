; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_check_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_check_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { i32, i64, i64, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (i32*)* }

@VBUS_CHATTERING_MDELAY = common dso_local global i32 0, align 4
@vbus_gpio = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" ----- VBUS OFF\0A\00", align 1
@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" ----- VBUS ON\0A\00", align 1
@USB_STATE_POWERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbu2ss_udc*)* @_nbu2ss_check_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_check_vbus(%struct.nbu2ss_udc* %0) #0 {
  %2 = alloca %struct.nbu2ss_udc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %2, align 8
  %5 = load i32, i32* @VBUS_CHATTERING_MDELAY, align 4
  %6 = call i32 @mdelay(i32 %5)
  %7 = load i32, i32* @vbus_gpio, align 4
  %8 = call i64 @gpiod_get_value(i32 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %13 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %15 = call i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc* %14)
  %16 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %17 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_info(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %21 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %62

24:                                               ; preds = %11
  %25 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %26 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %28 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %33 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %36 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %37 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %39 = call i32 @_nbu2ss_quiesce(%struct.nbu2ss_udc* %38)
  %40 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %41 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %40, i32 0, i32 6
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = icmp ne %struct.TYPE_2__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %34
  %45 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %46 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %45, i32 0, i32 4
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %49 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32*)*, i32 (i32*)** %51, align 8
  %53 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %54 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %53, i32 0, i32 5
  %55 = call i32 %52(i32* %54)
  %56 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %57 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %56, i32 0, i32 4
  %58 = call i32 @spin_lock(i32* %57)
  br label %59

59:                                               ; preds = %44, %34
  %60 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %61 = call i32 @_nbu2ss_disable_controller(%struct.nbu2ss_udc* %60)
  br label %62

62:                                               ; preds = %59, %11
  br label %114

63:                                               ; preds = %1
  %64 = call i32 @mdelay(i32 5)
  %65 = load i32, i32* @vbus_gpio, align 4
  %66 = call i64 @gpiod_get_value(i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %114

70:                                               ; preds = %63
  %71 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %72 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %76 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %114

80:                                               ; preds = %70
  %81 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %82 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %87 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i64, i64* @USB_STATE_POWERED, align 8
  %89 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %90 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %92 = call i32 @_nbu2ss_enable_controller(%struct.nbu2ss_udc* %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %97 = call i32 @_nbu2ss_disable_controller(%struct.nbu2ss_udc* %96)
  %98 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %99 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %114

100:                                              ; preds = %85
  %101 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %102 = call i32 @_nbu2ss_pullup(%struct.nbu2ss_udc* %101, i32 1)
  br label %113

103:                                              ; preds = %80
  %104 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %105 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @USB_STATE_POWERED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %2, align 8
  %111 = call i32 @_nbu2ss_pullup(%struct.nbu2ss_udc* %110, i32 1)
  br label %112

112:                                              ; preds = %109, %103
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %69, %79, %95, %113, %62
  ret void
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @_nbu2ss_reset_controller(%struct.nbu2ss_udc*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @_nbu2ss_quiesce(%struct.nbu2ss_udc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_nbu2ss_disable_controller(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_enable_controller(%struct.nbu2ss_udc*) #1

declare dso_local i32 @_nbu2ss_pullup(%struct.nbu2ss_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
