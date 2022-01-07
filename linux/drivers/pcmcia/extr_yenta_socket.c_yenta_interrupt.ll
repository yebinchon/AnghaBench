; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_yenta_socket.c_yenta_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.yenta_socket = type { i32 }

@CB_SOCKET_EVENT = common dso_local global i32 0, align 4
@I365_CSC = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@CB_CD1EVENT = common dso_local global i32 0, align 4
@CB_CD2EVENT = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@I365_CSC_DETECT = common dso_local global i32 0, align 4
@I365_INTCTL = common dso_local global i32 0, align 4
@I365_PC_IOCARD = common dso_local global i32 0, align 4
@I365_CSC_STSCHG = common dso_local global i32 0, align 4
@SS_STSCHG = common dso_local global i32 0, align 4
@I365_CSC_BVD1 = common dso_local global i32 0, align 4
@SS_BATDEAD = common dso_local global i32 0, align 4
@I365_CSC_BVD2 = common dso_local global i32 0, align 4
@SS_BATWARN = common dso_local global i32 0, align 4
@I365_CSC_READY = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @yenta_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yenta_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.yenta_socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.yenta_socket*
  store %struct.yenta_socket* %11, %struct.yenta_socket** %7, align 8
  %12 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %13 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %14 = call i32 @cb_readl(%struct.yenta_socket* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %16 = load i32, i32* @CB_SOCKET_EVENT, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @cb_writel(%struct.yenta_socket* %15, i32 %16, i32 %17)
  %19 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %20 = load i32, i32* @I365_CSC, align 4
  %21 = call i32 @exca_readb(%struct.yenta_socket* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @CB_CD1EVENT, align 4
  %32 = load i32, i32* @CB_CD2EVENT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @SS_DETECT, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @I365_CSC_DETECT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @SS_DETECT, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %53 = load i32, i32* @I365_INTCTL, align 4
  %54 = call i32 @exca_readb(%struct.yenta_socket* %52, i32 %53)
  %55 = load i32, i32* @I365_PC_IOCARD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @I365_CSC_STSCHG, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @SS_STSCHG, align 4
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %104

70:                                               ; preds = %48
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @I365_CSC_BVD1, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @SS_BATDEAD, align 4
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %75
  %79 = phi i32 [ %76, %75 ], [ 0, %77 ]
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @I365_CSC_BVD2, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @SS_BATWARN, align 4
  br label %89

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @I365_CSC_READY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* @SS_READY, align 4
  br label %100

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i32 [ %98, %97 ], [ 0, %99 ]
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %66
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.yenta_socket*, %struct.yenta_socket** %7, align 8
  %109 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pcmcia_parse_events(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %27
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @cb_readl(%struct.yenta_socket*, i32) #1

declare dso_local i32 @cb_writel(%struct.yenta_socket*, i32, i32) #1

declare dso_local i32 @exca_readb(%struct.yenta_socket*, i32) #1

declare dso_local i32 @pcmcia_parse_events(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
