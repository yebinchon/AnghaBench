; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_usecs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_periodic_usecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, %union.fotg210_shadow*, i32* }
%union.fotg210_shadow = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %union.fotg210_shadow, i32, %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.fotg210_qh_hw = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, %union.fotg210_shadow, %struct.fotg210_qh_hw* }
%struct.TYPE_6__ = type { %union.fotg210_shadow, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"ignoring FSTN cost ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"uframe %d sched overrun: %d usecs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.fotg210_hcd*, i32, i32)* @periodic_usecs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @periodic_usecs(%struct.fotg210_hcd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fotg210_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %union.fotg210_shadow*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fotg210_qh_hw*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %12 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %18 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %17, i32 0, i32 1
  %19 = load %union.fotg210_shadow*, %union.fotg210_shadow** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %union.fotg210_shadow, %union.fotg210_shadow* %19, i64 %21
  store %union.fotg210_shadow* %22, %union.fotg210_shadow** %8, align 8
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %135, %3
  %24 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %25 = bitcast %union.fotg210_shadow* %24 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %136

28:                                               ; preds = %23
  %29 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %30 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Q_NEXT_TYPE(%struct.fotg210_hcd* %30, i32 %32)
  %34 = call i32 @hc32_to_cpu(%struct.fotg210_hcd* %29, i32 %33)
  switch i32 %34, label %84 [
    i32 128, label %35
    i32 129, label %105
  ]

35:                                               ; preds = %28
  %36 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %37 = bitcast %union.fotg210_shadow* %36 to %struct.TYPE_5__**
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  %40 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %39, align 8
  store %struct.fotg210_qh_hw* %40, %struct.fotg210_qh_hw** %10, align 8
  %41 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %10, align 8
  %42 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %44, i32 %46)
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %35
  %51 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %52 = bitcast %union.fotg210_shadow* %51 to %struct.TYPE_5__**
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %50, %35
  %59 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %10, align 8
  %60 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add i32 8, %63
  %65 = shl i32 1, %64
  %66 = call i32 @cpu_to_hc32(%struct.fotg210_hcd* %62, i32 %65)
  %67 = and i32 %61, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %58
  %70 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %71 = bitcast %union.fotg210_shadow* %70 to %struct.TYPE_5__**
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69, %58
  %78 = load %struct.fotg210_qh_hw*, %struct.fotg210_qh_hw** %10, align 8
  %79 = getelementptr inbounds %struct.fotg210_qh_hw, %struct.fotg210_qh_hw* %78, i32 0, i32 1
  store i32* %79, i32** %7, align 8
  %80 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %81 = bitcast %union.fotg210_shadow* %80 to %struct.TYPE_5__**
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  store %union.fotg210_shadow* %83, %union.fotg210_shadow** %8, align 8
  br label %135

84:                                               ; preds = %28
  %85 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %86 = bitcast %union.fotg210_shadow* %85 to %struct.TYPE_6__**
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %91 = call i32 @FOTG210_LIST_END(%struct.fotg210_hcd* %90)
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %84
  %94 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %95 = call i32 @fotg210_dbg(%struct.fotg210_hcd* %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %84
  %97 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %98 = bitcast %union.fotg210_shadow* %97 to %struct.TYPE_6__**
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32* %100, i32** %7, align 8
  %101 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %102 = bitcast %union.fotg210_shadow* %101 to %struct.TYPE_6__**
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store %union.fotg210_shadow* %104, %union.fotg210_shadow** %8, align 8
  br label %135

105:                                              ; preds = %28
  %106 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %107 = bitcast %union.fotg210_shadow* %106 to %struct.TYPE_8__**
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %105
  %117 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %118 = bitcast %union.fotg210_shadow* %117 to %struct.TYPE_8__**
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %116, %105
  %127 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %128 = bitcast %union.fotg210_shadow* %127 to %struct.TYPE_8__**
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i32* %130, i32** %7, align 8
  %131 = load %union.fotg210_shadow*, %union.fotg210_shadow** %8, align 8
  %132 = bitcast %union.fotg210_shadow* %131 to %struct.TYPE_8__**
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store %union.fotg210_shadow* %134, %union.fotg210_shadow** %8, align 8
  br label %135

135:                                              ; preds = %126, %96, %77
  br label %23

136:                                              ; preds = %23
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %139 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ugt i32 %137, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %4, align 8
  %144 = load i32, i32* %5, align 4
  %145 = mul i32 %144, 8
  %146 = load i32, i32* %6, align 4
  %147 = add i32 %145, %146
  %148 = load i32, i32* %9, align 4
  %149 = call i32 @fotg210_err(%struct.fotg210_hcd* %143, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %142, %136
  %151 = load i32, i32* %9, align 4
  %152 = trunc i32 %151 to i16
  ret i16 %152
}

declare dso_local i32 @hc32_to_cpu(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @Q_NEXT_TYPE(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @cpu_to_hc32(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @FOTG210_LIST_END(%struct.fotg210_hcd*) #1

declare dso_local i32 @fotg210_dbg(%struct.fotg210_hcd*, i8*) #1

declare dso_local i32 @fotg210_err(%struct.fotg210_hcd*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
