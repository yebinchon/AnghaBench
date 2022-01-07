; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_portreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_roothub_portreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.u132 = type { i32 }

@PORT_RESET_MSEC = common dso_local global i32 0, align 4
@roothub = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RH_PS_PRS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@RH_PS_CCS = common dso_local global i32 0, align 4
@RH_PS_PRSC = common dso_local global i32 0, align 4
@PORT_RESET_HW_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.u132*, i32)* @u132_roothub_portreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_roothub_portreset(%struct.u132* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.u132*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.u132* %0, %struct.u132** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.u132*, %struct.u132** %4, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @u132_read_pcimem(%struct.u132* %11, i32 %12, i32* %7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %113

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PORT_RESET_MSEC, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %107, %18
  br label %24

24:                                               ; preds = %43, %23
  %25 = load %struct.u132*, %struct.u132** %4, align 8
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @u132_read_pcimem(%struct.u132* %25, i32 %30, i32* %10)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %113

36:                                               ; preds = %24
  %37 = load i32, i32* @RH_PS_PRS, align 4
  %38 = load i32, i32* %10, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %41
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @tick_before(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %24, label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* @RH_PS_PRS, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %113

56:                                               ; preds = %48
  %57 = load i32, i32* @RH_PS_CCS, align 4
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load i32, i32* @RH_PS_PRSC, align 4
  %63 = load i32, i32* %10, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.u132*, %struct.u132** %4, align 8
  %68 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RH_PS_PRSC, align 4
  %74 = call i32 @u132_write_pcimem(%struct.u132* %67, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %113

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %61
  br label %82

81:                                               ; preds = %56
  br label %112

82:                                               ; preds = %80
  %83 = load %struct.u132*, %struct.u132** %4, align 8
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roothub, i32 0, i32 0), align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @RH_PS_PRS, align 4
  %90 = call i32 @u132_write_pcimem(%struct.u132* %83, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %113

95:                                               ; preds = %82
  %96 = load i32, i32* @PORT_RESET_HW_MSEC, align 4
  %97 = call i32 @msleep(i32 %96)
  %98 = load %struct.u132*, %struct.u132** %4, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @u132_read_pcimem(%struct.u132* %98, i32 %99, i32* %7)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %113

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @tick_before(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %23, label %112

112:                                              ; preds = %107, %81
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %103, %93, %77, %53, %34, %16
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @u132_read_pcimem(%struct.u132*, i32, i32*) #1

declare dso_local i64 @tick_before(i32, i32) #1

declare dso_local i32 @u132_write_pcimem(%struct.u132*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
