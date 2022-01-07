; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_ehci_reset_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_ehci_reset_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"reset port\00", align 1
@ehci_regs = common dso_local global %struct.TYPE_2__* null, align 8
@PORT_PE = common dso_local global i64 0, align 8
@PORT_RESET = common dso_local global i64 0, align 8
@HUB_ROOT_RESET_TIME = common dso_local global i64 0, align 8
@HUB_RESET_TIMEOUT = common dso_local global i64 0, align 8
@PORT_RWC_BITS = common dso_local global i64 0, align 8
@PORT_CONNECT = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@PORT_CSC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ehci_reset_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_reset_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @dbgp_ehci_status(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_regs, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = call i64 @readl(i32* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @PORT_PE, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %4, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* @PORT_RESET, align 8
  %22 = load i64, i64* %4, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_regs, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = call i32 @writel(i64 %24, i32* %31)
  %33 = load i64, i64* @HUB_ROOT_RESET_TIME, align 8
  store i64 %33, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %55, %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @HUB_RESET_TIMEOUT, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @dbgp_mdelay(i64 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_regs, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i64 @readl(i32* %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @PORT_RESET, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %59

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %34

59:                                               ; preds = %53, %34
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @PORT_RESET, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  store i32 100000, i32* %7, align 4
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @PORT_RWC_BITS, align 8
  %67 = load i64, i64* @PORT_RESET, align 8
  %68 = or i64 %66, %67
  %69 = xor i64 %68, -1
  %70 = and i64 %65, %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_regs, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = call i32 @writel(i64 %70, i32* %77)
  br label %79

79:                                               ; preds = %98, %64
  %80 = call i32 @udelay(i32 1)
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_regs, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = call i64 @readl(i32* %87)
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %79
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @PORT_RESET, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %7, align 4
  %97 = icmp sgt i32 %96, 0
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ false, %89 ], [ %97, %94 ]
  br i1 %99, label %79, label %100

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %59
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @PORT_CONNECT, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* @ENOTCONN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %131

109:                                              ; preds = %101
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @PORT_CSC, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %2, align 4
  br label %131

117:                                              ; preds = %109
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @PORT_RESET, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @PORT_PE, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  store i32 0, i32* %2, align 4
  br label %131

128:                                              ; preds = %122, %117
  %129 = load i32, i32* @EBUSY, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %127, %114, %106
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @dbgp_ehci_status(i8*) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i32 @writel(i64, i32*) #1

declare dso_local i32 @dbgp_mdelay(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
