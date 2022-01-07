; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_set_fifo_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_set_fifo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LOCCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*, i32)* @net2272_set_fifo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_set_fifo_mode(%struct.net2272* %0, i32 %1) #0 {
  %3 = alloca %struct.net2272*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net2272* %0, %struct.net2272** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net2272*, %struct.net2272** %3, align 8
  %7 = load i32, i32* @LOCCTL, align 4
  %8 = call i32 @net2272_read(%struct.net2272* %6, i32 %7)
  %9 = and i32 %8, 63
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = shl i32 %10, 6
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.net2272*, %struct.net2272** %3, align 8
  %15 = load i32, i32* @LOCCTL, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @net2272_write(%struct.net2272* %14, i32 %15, i32 %16)
  %18 = load %struct.net2272*, %struct.net2272** %3, align 8
  %19 = getelementptr inbounds %struct.net2272, %struct.net2272* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.net2272*, %struct.net2272** %3, align 8
  %23 = getelementptr inbounds %struct.net2272, %struct.net2272* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.net2272*, %struct.net2272** %3, align 8
  %29 = getelementptr inbounds %struct.net2272, %struct.net2272* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @list_add_tail(i32* %27, i32* %30)
  %32 = load i32, i32* %4, align 4
  switch i32 %32, label %102 [
    i32 0, label %33
    i32 1, label %54
    i32 2, label %75
    i32 3, label %96
  ]

33:                                               ; preds = %2
  %34 = load %struct.net2272*, %struct.net2272** %3, align 8
  %35 = getelementptr inbounds %struct.net2272, %struct.net2272* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.net2272*, %struct.net2272** %3, align 8
  %41 = getelementptr inbounds %struct.net2272, %struct.net2272* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @list_add_tail(i32* %39, i32* %42)
  %44 = load %struct.net2272*, %struct.net2272** %3, align 8
  %45 = getelementptr inbounds %struct.net2272, %struct.net2272* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 512, i32* %48, align 4
  %49 = load %struct.net2272*, %struct.net2272** %3, align 8
  %50 = getelementptr inbounds %struct.net2272, %struct.net2272* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 512, i32* %53, align 4
  br label %102

54:                                               ; preds = %2
  %55 = load %struct.net2272*, %struct.net2272** %3, align 8
  %56 = getelementptr inbounds %struct.net2272, %struct.net2272* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.net2272*, %struct.net2272** %3, align 8
  %62 = getelementptr inbounds %struct.net2272, %struct.net2272* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @list_add_tail(i32* %60, i32* %63)
  %65 = load %struct.net2272*, %struct.net2272** %3, align 8
  %66 = getelementptr inbounds %struct.net2272, %struct.net2272* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 1024, i32* %69, align 4
  %70 = load %struct.net2272*, %struct.net2272** %3, align 8
  %71 = getelementptr inbounds %struct.net2272, %struct.net2272* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 512, i32* %74, align 4
  br label %102

75:                                               ; preds = %2
  %76 = load %struct.net2272*, %struct.net2272** %3, align 8
  %77 = getelementptr inbounds %struct.net2272, %struct.net2272* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.net2272*, %struct.net2272** %3, align 8
  %83 = getelementptr inbounds %struct.net2272, %struct.net2272* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @list_add_tail(i32* %81, i32* %84)
  %86 = load %struct.net2272*, %struct.net2272** %3, align 8
  %87 = getelementptr inbounds %struct.net2272, %struct.net2272* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 1024, i32* %90, align 4
  %91 = load %struct.net2272*, %struct.net2272** %3, align 8
  %92 = getelementptr inbounds %struct.net2272, %struct.net2272* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32 1024, i32* %95, align 4
  br label %102

96:                                               ; preds = %2
  %97 = load %struct.net2272*, %struct.net2272** %3, align 8
  %98 = getelementptr inbounds %struct.net2272, %struct.net2272* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 1024, i32* %101, align 4
  br label %102

102:                                              ; preds = %2, %96, %75, %54, %33
  %103 = load %struct.net2272*, %struct.net2272** %3, align 8
  %104 = getelementptr inbounds %struct.net2272, %struct.net2272* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.net2272*, %struct.net2272** %3, align 8
  %110 = getelementptr inbounds %struct.net2272, %struct.net2272* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @list_add_tail(i32* %108, i32* %111)
  %113 = load %struct.net2272*, %struct.net2272** %3, align 8
  %114 = getelementptr inbounds %struct.net2272, %struct.net2272* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 512, i32* %117, align 4
  ret void
}

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

declare dso_local i32 @net2272_write(%struct.net2272*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
