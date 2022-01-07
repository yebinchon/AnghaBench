; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_chid_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_mmc.c_wusbhc_chid_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32, i32*, i32, %struct.TYPE_2__*, %struct.wusb_ckhdid, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.wusb_ckhdid = type { i32 }

@wusb_ckhdid_zero = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Cannot get associated UWB Host Controller\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot register as a UWB PAL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_chid_set(%struct.wusbhc* %0, %struct.wusb_ckhdid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wusbhc*, align 8
  %5 = alloca %struct.wusb_ckhdid*, align 8
  %6 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %4, align 8
  store %struct.wusb_ckhdid* %1, %struct.wusb_ckhdid** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %8 = call i64 @memcmp(%struct.wusb_ckhdid* %7, i32* @wusb_ckhdid_zero, i32 4)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wusb_ckhdid* null, %struct.wusb_ckhdid** %5, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %13 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %16 = icmp ne %struct.wusb_ckhdid* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %19 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %24 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %107

28:                                               ; preds = %17
  %29 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %30 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %29, i32 0, i32 4
  %31 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %32 = bitcast %struct.wusb_ckhdid* %30 to i8*
  %33 = bitcast %struct.wusb_ckhdid* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %28, %11
  %35 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %36 = icmp ne %struct.wusb_ckhdid* %35, null
  br i1 %36, label %37, label %73

37:                                               ; preds = %34
  %38 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %39 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %37
  %43 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %44 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @uwb_rc_get_by_grandpa(i32 %47)
  %49 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %50 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %52 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  %58 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %59 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @dev_err(%struct.TYPE_2__* %60, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %102

62:                                               ; preds = %42
  %63 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %64 = call i32 @wusbhc_pal_register(%struct.wusbhc* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %69 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = call i32 @dev_err(%struct.TYPE_2__* %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %95

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %37, %34
  %74 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %75 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.wusb_ckhdid*, %struct.wusb_ckhdid** %5, align 8
  %78 = icmp ne %struct.wusb_ckhdid* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %81 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %80, i32 0, i32 2
  %82 = call i32 @uwb_radio_start(i32* %81)
  store i32 %82, i32* %6, align 4
  br label %93

83:                                               ; preds = %73
  %84 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %85 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %90 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %89, i32 0, i32 2
  %91 = call i32 @uwb_radio_stop(i32* %90)
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %107

95:                                               ; preds = %67
  %96 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %97 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @uwb_rc_put(i32* %98)
  %100 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %101 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %100, i32 0, i32 1
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %95, %55
  %103 = load %struct.wusbhc*, %struct.wusbhc** %4, align 8
  %104 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %103, i32 0, i32 0
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %93, %22
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @memcmp(%struct.wusb_ckhdid*, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @uwb_rc_get_by_grandpa(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @wusbhc_pal_register(%struct.wusbhc*) #1

declare dso_local i32 @uwb_radio_start(i32*) #1

declare dso_local i32 @uwb_radio_stop(i32*) #1

declare dso_local i32 @uwb_rc_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
