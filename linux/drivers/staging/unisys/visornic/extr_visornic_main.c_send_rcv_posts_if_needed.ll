; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_send_rcv_posts_if_needed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visornic/extr_visornic_main.c_send_rcv_posts_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visornic_devdata = type { i32, i32, %struct.TYPE_2__, i32**, i32, %struct.net_device*, i64, i64, %struct.uiscmdrsp* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.uiscmdrsp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.visornic_devdata*)* @send_rcv_posts_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_rcv_posts_if_needed(%struct.visornic_devdata* %0) #0 {
  %2 = alloca %struct.visornic_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.uiscmdrsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.visornic_devdata* %0, %struct.visornic_devdata** %2, align 8
  %9 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %9, i32 0, i32 8
  %11 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %10, align 8
  store %struct.uiscmdrsp* %11, %struct.uiscmdrsp** %5, align 8
  %12 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %13 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %18 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  br label %119

22:                                               ; preds = %16
  %23 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %23, i32 0, i32 5
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %4, align 8
  store i32 0, i32* %7, align 4
  %26 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %112, %22
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %113

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %109, %32
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %112

41:                                               ; preds = %35
  %42 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %109

51:                                               ; preds = %41
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i32* @alloc_rcv_buf(%struct.net_device* %52)
  %54 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %54, i32 0, i32 3
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* %53, i32** %59, align 8
  %60 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %61 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %60, i32 0, i32 3
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %51
  %69 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %112

73:                                               ; preds = %51
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load %struct.uiscmdrsp*, %struct.uiscmdrsp** %5, align 8
  %77 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %78 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @post_skb(%struct.uiscmdrsp* %76, %struct.visornic_devdata* %77, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %73
  %89 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %89, i32 0, i32 3
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %3, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree_skb(i32* %95)
  %97 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %98 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  store i32* null, i32** %102, align 8
  br label %112

103:                                              ; preds = %73
  %104 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %105 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %103, %50
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %35

112:                                              ; preds = %88, %68, %35
  br label %29

113:                                              ; preds = %29
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.visornic_devdata*, %struct.visornic_devdata** %2, align 8
  %116 = getelementptr inbounds %struct.visornic_devdata, %struct.visornic_devdata* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %21
  ret void
}

declare dso_local i32* @alloc_rcv_buf(%struct.net_device*) #1

declare dso_local i32 @post_skb(%struct.uiscmdrsp*, %struct.visornic_devdata*, i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
