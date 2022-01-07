; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_set_fifo_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_set_fifo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PCI_BASE2_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*, i32)* @set_fifo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fifo_mode(%struct.net2280* %0, i32 %1) #0 {
  %3 = alloca %struct.net2280*, align 8
  %4 = alloca i32, align 4
  store %struct.net2280* %0, %struct.net2280** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PCI_BASE2_RANGE, align 4
  %6 = shl i32 65535, %5
  %7 = load i32, i32* %4, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.net2280*, %struct.net2280** %3, align 8
  %10 = getelementptr inbounds %struct.net2280, %struct.net2280* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @writel(i32 %8, i32* %12)
  %14 = load %struct.net2280*, %struct.net2280** %3, align 8
  %15 = getelementptr inbounds %struct.net2280, %struct.net2280* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.net2280*, %struct.net2280** %3, align 8
  %19 = getelementptr inbounds %struct.net2280, %struct.net2280* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.net2280*, %struct.net2280** %3, align 8
  %25 = getelementptr inbounds %struct.net2280, %struct.net2280* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @list_add_tail(i32* %23, i32* %26)
  %28 = load %struct.net2280*, %struct.net2280** %3, align 8
  %29 = getelementptr inbounds %struct.net2280, %struct.net2280* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.net2280*, %struct.net2280** %3, align 8
  %35 = getelementptr inbounds %struct.net2280, %struct.net2280* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %33, i32* %36)
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %102 [
    i32 0, label %39
    i32 1, label %70
    i32 2, label %81
  ]

39:                                               ; preds = %2
  %40 = load %struct.net2280*, %struct.net2280** %3, align 8
  %41 = getelementptr inbounds %struct.net2280, %struct.net2280* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.net2280*, %struct.net2280** %3, align 8
  %47 = getelementptr inbounds %struct.net2280, %struct.net2280* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @list_add_tail(i32* %45, i32* %48)
  %50 = load %struct.net2280*, %struct.net2280** %3, align 8
  %51 = getelementptr inbounds %struct.net2280, %struct.net2280* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.net2280*, %struct.net2280** %3, align 8
  %57 = getelementptr inbounds %struct.net2280, %struct.net2280* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %55, i32* %58)
  %60 = load %struct.net2280*, %struct.net2280** %3, align 8
  %61 = getelementptr inbounds %struct.net2280, %struct.net2280* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 1024, i32* %64, align 4
  %65 = load %struct.net2280*, %struct.net2280** %3, align 8
  %66 = getelementptr inbounds %struct.net2280, %struct.net2280* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 1024, i32* %69, align 4
  br label %102

70:                                               ; preds = %2
  %71 = load %struct.net2280*, %struct.net2280** %3, align 8
  %72 = getelementptr inbounds %struct.net2280, %struct.net2280* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  store i32 2048, i32* %75, align 4
  %76 = load %struct.net2280*, %struct.net2280** %3, align 8
  %77 = getelementptr inbounds %struct.net2280, %struct.net2280* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  store i32 2048, i32* %80, align 4
  br label %102

81:                                               ; preds = %2
  %82 = load %struct.net2280*, %struct.net2280** %3, align 8
  %83 = getelementptr inbounds %struct.net2280, %struct.net2280* %82, i32 0, i32 1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.net2280*, %struct.net2280** %3, align 8
  %89 = getelementptr inbounds %struct.net2280, %struct.net2280* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = call i32 @list_add_tail(i32* %87, i32* %90)
  %92 = load %struct.net2280*, %struct.net2280** %3, align 8
  %93 = getelementptr inbounds %struct.net2280, %struct.net2280* %92, i32 0, i32 1
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 2048, i32* %96, align 4
  %97 = load %struct.net2280*, %struct.net2280** %3, align 8
  %98 = getelementptr inbounds %struct.net2280, %struct.net2280* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 1024, i32* %101, align 4
  br label %102

102:                                              ; preds = %2, %81, %70, %39
  %103 = load %struct.net2280*, %struct.net2280** %3, align 8
  %104 = getelementptr inbounds %struct.net2280, %struct.net2280* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 5
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.net2280*, %struct.net2280** %3, align 8
  %110 = getelementptr inbounds %struct.net2280, %struct.net2280* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = call i32 @list_add_tail(i32* %108, i32* %111)
  %113 = load %struct.net2280*, %struct.net2280** %3, align 8
  %114 = getelementptr inbounds %struct.net2280, %struct.net2280* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 6
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load %struct.net2280*, %struct.net2280** %3, align 8
  %120 = getelementptr inbounds %struct.net2280, %struct.net2280* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = call i32 @list_add_tail(i32* %118, i32* %121)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
