; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_dlci_data_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32 }
%struct.gsm_dlci = type { i32, i32, i32, i32 }
%struct.gsm_msg = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsm_mux*, %struct.gsm_dlci*)* @gsm_dlci_data_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_dlci_data_output(%struct.gsm_mux* %0, %struct.gsm_dlci* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca %struct.gsm_dlci*, align 8
  %6 = alloca %struct.gsm_msg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store %struct.gsm_dlci* %1, %struct.gsm_dlci** %5, align 8
  %12 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %13 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %2, %66
  %17 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %18 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @kfifo_len(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %85

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %28 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %33 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %40 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %41 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %45 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux* %39, i32 %42, i32 %43, i32 %46)
  store %struct.gsm_msg* %47, %struct.gsm_msg** %6, align 8
  %48 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %49 = icmp eq %struct.gsm_msg* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %85

53:                                               ; preds = %35
  %54 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %55 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %7, align 8
  %57 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %58 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %66 [
    i32 1, label %60
    i32 2, label %61
  ]

60:                                               ; preds = %53
  br label %66

61:                                               ; preds = %53
  %62 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %63 = call i32 @gsm_encode_modem(%struct.gsm_dlci* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %66

66:                                               ; preds = %53, %61, %60
  %67 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %68 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %73 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %72, i32 0, i32 1
  %74 = call i32 @kfifo_out_locked(i32 %69, i32* %70, i32 %71, i32* %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON(i32 %77)
  %79 = load %struct.gsm_dlci*, %struct.gsm_dlci** %5, align 8
  %80 = load %struct.gsm_msg*, %struct.gsm_msg** %6, align 8
  %81 = call i32 @__gsm_data_queue(%struct.gsm_dlci* %79, %struct.gsm_msg* %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %16

85:                                               ; preds = %50, %23
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @kfifo_len(i32) #1

declare dso_local %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux*, i32, i32, i32) #1

declare dso_local i32 @gsm_encode_modem(%struct.gsm_dlci*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfifo_out_locked(i32, i32*, i32, i32*) #1

declare dso_local i32 @__gsm_data_queue(%struct.gsm_dlci*, %struct.gsm_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
