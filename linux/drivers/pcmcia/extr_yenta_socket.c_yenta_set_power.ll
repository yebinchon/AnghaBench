; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CB_SOCKET_STATE = common dso_local global i32 0, align 4
@CB_CBCARD = common dso_local global i32 0, align 4
@YENTA_16BIT_POWER_EXCA = common dso_local global i32 0, align 4
@I365_POWER = common dso_local global i32 0, align 4
@I365_VCC_MASK = common dso_local global i32 0, align 4
@I365_VPP1_MASK = common dso_local global i32 0, align 4
@I365_VPP2_MASK = common dso_local global i32 0, align 4
@YENTA_16BIT_POWER_DF = common dso_local global i32 0, align 4
@I365_VCC_3V = common dso_local global i32 0, align 4
@I365_VCC_5V = common dso_local global i32 0, align 4
@I365_VPP1_5V = common dso_local global i32 0, align 4
@I365_VPP1_12V = common dso_local global i32 0, align 4
@I365_VPP2_5V = common dso_local global i32 0, align 4
@I365_VPP2_12V = common dso_local global i32 0, align 4
@CB_SC_VCC_3V = common dso_local global i32 0, align 4
@CB_SC_VCC_5V = common dso_local global i32 0, align 4
@CB_SC_VPP_3V = common dso_local global i32 0, align 4
@CB_SC_VPP_5V = common dso_local global i32 0, align 4
@CB_SC_VPP_12V = common dso_local global i32 0, align 4
@CB_SOCKET_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*, %struct.TYPE_3__*)* @yenta_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_set_power(%struct.yenta_socket* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.yenta_socket*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.yenta_socket* %0, %struct.yenta_socket** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %9 = load i32, i32* @CB_SOCKET_STATE, align 4
  %10 = call i32 @cb_readl(%struct.yenta_socket* %8, i32 %9)
  %11 = load i32, i32* @CB_CBCARD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %101, label %14

14:                                               ; preds = %2
  %15 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %16 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @YENTA_16BIT_POWER_EXCA, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %101

21:                                               ; preds = %14
  %22 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %23 = load i32, i32* @I365_POWER, align 4
  %24 = call i32 @exca_readb(%struct.yenta_socket* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @I365_VCC_MASK, align 4
  %26 = load i32, i32* @I365_VPP1_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @I365_VPP2_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %34 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @YENTA_16BIT_POWER_DF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %65

39:                                               ; preds = %21
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %51 [
    i32 33, label %43
    i32 50, label %47
  ]

43:                                               ; preds = %39
  %44 = load i32, i32* @I365_VCC_3V, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @I365_VCC_5V, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %47, %43
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %64 [
    i32 33, label %56
    i32 50, label %56
    i32 120, label %60
  ]

56:                                               ; preds = %52, %52
  %57 = load i32, i32* @I365_VPP1_5V, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @I365_VPP1_12V, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %52, %60, %56
  br label %91

65:                                               ; preds = %21
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %73 [
    i32 50, label %69
  ]

69:                                               ; preds = %65
  %70 = load i32, i32* @I365_VCC_5V, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  switch i32 %77, label %90 [
    i32 50, label %78
    i32 120, label %84
  ]

78:                                               ; preds = %74
  %79 = load i32, i32* @I365_VPP1_5V, align 4
  %80 = load i32, i32* @I365_VPP2_5V, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %5, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %74
  %85 = load i32, i32* @I365_VPP1_12V, align 4
  %86 = load i32, i32* @I365_VPP2_12V, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %74, %84, %78
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %97 = load i32, i32* @I365_POWER, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @exca_writeb(%struct.yenta_socket* %96, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %91
  br label %138

101:                                              ; preds = %14, %2
  store i32 0, i32* %7, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %109 [
    i32 33, label %105
    i32 50, label %107
  ]

105:                                              ; preds = %101
  %106 = load i32, i32* @CB_SC_VCC_3V, align 4
  store i32 %106, i32* %7, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @CB_SC_VCC_5V, align 4
  store i32 %108, i32* %7, align 4
  br label %110

109:                                              ; preds = %101
  store i32 0, i32* %7, align 4
  br label %110

110:                                              ; preds = %109, %107, %105
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %126 [
    i32 33, label %114
    i32 50, label %118
    i32 120, label %122
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* @CB_SC_VPP_3V, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %126

118:                                              ; preds = %110
  %119 = load i32, i32* @CB_SC_VPP_5V, align 4
  %120 = load i32, i32* %7, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %126

122:                                              ; preds = %110
  %123 = load i32, i32* @CB_SC_VPP_12V, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %110, %122, %118, %114
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %129 = load i32, i32* @CB_SOCKET_CONTROL, align 4
  %130 = call i32 @cb_readl(%struct.yenta_socket* %128, i32 %129)
  %131 = icmp ne i32 %127, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load %struct.yenta_socket*, %struct.yenta_socket** %3, align 8
  %134 = load i32, i32* @CB_SOCKET_CONTROL, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @cb_writel(%struct.yenta_socket* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %126
  br label %138

138:                                              ; preds = %137, %100
  ret void
}

declare dso_local i32 @cb_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @exca_readb(%struct.yenta_socket*, i32) #1

declare dso_local i32 @exca_writeb(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
