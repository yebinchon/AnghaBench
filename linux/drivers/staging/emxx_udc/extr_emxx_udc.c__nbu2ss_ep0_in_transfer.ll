; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_in_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_in_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nbu2ss_req = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@EP0_PACKETSIZE = common dso_local global i32 0, align 4
@EP0_INAK_EN = common dso_local global i32 0, align 4
@EP0_INAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbu2ss_udc*, %struct.nbu2ss_req*)* @_nbu2ss_ep0_in_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nbu2ss_ep0_in_transfer(%struct.nbu2ss_udc* %0, %struct.nbu2ss_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbu2ss_udc*, align 8
  %5 = alloca %struct.nbu2ss_req*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nbu2ss_udc* %0, %struct.nbu2ss_udc** %4, align 8
  store %struct.nbu2ss_req* %1, %struct.nbu2ss_req** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %11 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %15 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %21 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @EP0_PACKETSIZE, align 4
  %25 = srem i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %29 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %34 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %36 = call i32 @EP0_send_NULL(%struct.nbu2ss_udc* %35, i32 0)
  store i32 1, i32* %3, align 4
  br label %122

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %19
  store i32 0, i32* %3, align 4
  br label %122

39:                                               ; preds = %2
  %40 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %41 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @_nbu2ss_readl(i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @EP0_INAK_EN, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i64, i64* @EP0_INAK, align 8
  %49 = trunc i64 %48 to i32
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %54 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @_nbu2ss_writel(i32* %56, i32 %57)
  %59 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %60 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %64 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %69 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %6, align 8
  %73 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %74 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %6, align 8
  %80 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @EP0_in_PIO(%struct.nbu2ss_udc* %80, i32* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %86 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %39
  %93 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %94 = call i32 @EP0_send_NULL(%struct.nbu2ss_udc* %93, i32 0)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %122

96:                                               ; preds = %39
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %98, 4
  br i1 %99, label %100, label %120

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @EP0_PACKETSIZE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %6, align 8
  %109 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %4, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i64 @ep0_in_overbytes(%struct.nbu2ss_udc* %109, i32* %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %112
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.nbu2ss_req*, %struct.nbu2ss_req** %5, align 8
  %119 = getelementptr inbounds %struct.nbu2ss_req, %struct.nbu2ss_req* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %104, %100, %96
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %92, %38, %32
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @EP0_send_NULL(%struct.nbu2ss_udc*, i32) #1

declare dso_local i32 @_nbu2ss_readl(i32*) #1

declare dso_local i32 @_nbu2ss_writel(i32*, i32) #1

declare dso_local i32 @EP0_in_PIO(%struct.nbu2ss_udc*, i32*, i32) #1

declare dso_local i64 @ep0_in_overbytes(%struct.nbu2ss_udc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
