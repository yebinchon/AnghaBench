; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_output_framed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_output_framed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32 }
%struct.gsm_dlci = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.gsm_msg = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*, %struct.gsm_dlci*)* @gsm_dlci_data_output_framed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_dlci_data_output_framed(%struct.gsm_mux* %0, %struct.gsm_dlci* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca %struct.gsm_dlci*, align 8
  %6 = alloca %struct.gsm_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store %struct.gsm_dlci* %1, %struct.gsm_dlci** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %14 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %20 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp eq %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %25 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %24, i32 0, i32 2
  %26 = call %struct.TYPE_5__* @skb_dequeue_tail(i32* %25)
  %27 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %28 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %27, i32 0, i32 1
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %28, align 8
  %29 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %30 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %138

34:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %37 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %45 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %35
  %49 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %50 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %55 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @dev_kfree_skb_any(%struct.TYPE_5__* %56)
  %58 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %59 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %58, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %59, align 8
  store i32 0, i32* %3, align 4
  br label %138

60:                                               ; preds = %48
  %61 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %62 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  br label %65

64:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %70 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %71 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %75 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux* %69, i32 %72, i32 %73, i32 %76)
  store %struct.gsm_msg* %77, %struct.gsm_msg** %6, align 8
  %78 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %79 = icmp eq %struct.gsm_msg* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %65
  %81 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %82 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %81, i32 0, i32 2
  %83 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %84 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @skb_queue_tail(i32* %82, %struct.TYPE_5__* %85)
  %87 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %88 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %87, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %88, align 8
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %138

91:                                               ; preds = %65
  %92 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %93 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %7, align 8
  %95 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %96 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %110

99:                                               ; preds = %91
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 7
  %102 = load i32, i32* %11, align 4
  %103 = shl i32 %102, 6
  %104 = or i32 %101, %103
  %105 = or i32 %104, 1
  %106 = load i32*, i32** %7, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %7, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %99, %91
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %113 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %112, i32 0, i32 1
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @memcpy(i32* %111, i32 %116, i32 %117)
  %119 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %120 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @skb_pull(%struct.TYPE_5__* %121, i32 %122)
  %124 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %125 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %126 = call i32 @__gsm_data_queue(%struct.gsm_dlci* %124, %struct.gsm_msg* %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %110
  %130 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %131 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %130, i32 0, i32 1
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = call i32 @dev_kfree_skb_any(%struct.TYPE_5__* %132)
  %134 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %135 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %134, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %135, align 8
  br label %136

136:                                              ; preds = %129, %110
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %80, %53, %33
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_5__* @skb_dequeue_tail(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_5__*) #1

declare dso_local %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux*, i32, i32, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @__gsm_data_queue(%struct.gsm_dlci*, %struct.gsm_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
