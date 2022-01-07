; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_txb = type { i32, i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }
%struct.rtllib_device = type { i32, i32, i32, i32 (%struct.TYPE_6__*, i32, i32)*, i32*, i64, i32 (i32, i32)*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cb_desc = type { i64 }

@MAX_DEV_ADDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_softmac_xmit(%struct.rtllib_txb* %0, %struct.rtllib_device* %1) #0 {
  %3 = alloca %struct.rtllib_txb*, align 8
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cb_desc*, align 8
  %9 = alloca i64, align 8
  store %struct.rtllib_txb* %0, %struct.rtllib_txb** %3, align 8
  store %struct.rtllib_device* %1, %struct.rtllib_device** %4, align 8
  %10 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %11 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store %struct.cb_desc* null, %struct.cb_desc** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %14 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %18 = call i32 @rtllib_sta_wakeup(%struct.rtllib_device* %17, i32 0)
  %19 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %20 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MAX_DEV_ADDR_SIZE, align 8
  %27 = add nsw i64 %25, %26
  %28 = inttoptr i64 %27 to %struct.cb_desc*
  store %struct.cb_desc* %28, %struct.cb_desc** %8, align 8
  %29 = load %struct.cb_desc*, %struct.cb_desc** %8, align 8
  %30 = getelementptr inbounds %struct.cb_desc, %struct.cb_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %35 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %33, %2
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %118, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %43 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %121

46:                                               ; preds = %40
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i64 @skb_queue_len(i32* %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %46
  %57 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %58 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %57, i32 0, i32 6
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %61 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 %59(i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %68 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %66, %56, %46
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %72, 200
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %76 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %82 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %85
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = call i32 @skb_queue_tail(i32* %80, %struct.TYPE_6__* %87)
  br label %98

89:                                               ; preds = %71
  %90 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %91 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %90, i32 0, i32 2
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %92, i64 %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = call i32 @kfree_skb(%struct.TYPE_6__* %96)
  br label %98

98:                                               ; preds = %89, %74
  br label %117

99:                                               ; preds = %66
  %100 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %101 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %100, i32 0, i32 3
  %102 = load i32 (%struct.TYPE_6__*, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i32)** %101, align 8
  %103 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %104 = getelementptr inbounds %struct.rtllib_txb, %struct.rtllib_txb* %103, i32 0, i32 2
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %111 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %114 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 %102(%struct.TYPE_6__* %109, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %99, %98
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %40

121:                                              ; preds = %40
  %122 = load %struct.rtllib_txb*, %struct.rtllib_txb** %3, align 8
  %123 = call i32 @rtllib_txb_free(%struct.rtllib_txb* %122)
  %124 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %125 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %124, i32 0, i32 0
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtllib_sta_wakeup(%struct.rtllib_device*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree_skb(%struct.TYPE_6__*) #1

declare dso_local i32 @rtllib_txb_free(%struct.rtllib_txb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
