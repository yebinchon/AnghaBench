; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { i32, i32 (%struct.gsm_mux*, i32*, i32)* }

@GSM0_SOF = common dso_local global i32 0, align 4
@EA = common dso_local global i32 0, align 4
@INIT_FCS = common dso_local global i32 0, align 4
@GSM1_SOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i32, i32, i32)* @gsm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_send(%struct.gsm_mux* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gsm_mux*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca [3 x i32], align 4
  store %struct.gsm_mux* %0, %struct.gsm_mux** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %13 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %67 [
    i32 0, label %15
    i32 1, label %38
    i32 2, label %38
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @GSM0_SOF, align 4
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 2
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 1
  %22 = or i32 %19, %21
  %23 = load i32, i32* @EA, align 4
  %24 = or i32 %22, %23
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @EA, align 4
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @INIT_FCS, align 4
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = call i32 @gsm_fcs_add_block(i32 %30, i32* %32, i32 3)
  %34 = sub nsw i32 255, %33
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load i32, i32* @GSM0_SOF, align 4
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  store i32 6, i32* %9, align 4
  br label %69

38:                                               ; preds = %4, %4
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 %39, 2
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %41, 1
  %43 = or i32 %40, %42
  %44 = load i32, i32* @EA, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @INIT_FCS, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %51 = call i32 @gsm_fcs_add_block(i32 %49, i32* %50, i32 2)
  %52 = sub nsw i32 255, %51
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %55 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = call i32 @gsm_stuff_frame(i32* %54, i32* %56, i32 3)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @GSM1_SOF, align 4
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  store i32 %58, i32* %59, align 16
  %60 = load i32, i32* @GSM1_SOF, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %9, align 4
  br label %69

67:                                               ; preds = %4
  %68 = call i32 @WARN_ON(i32 1)
  br label %81

69:                                               ; preds = %38, %15
  %70 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %71 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %70, i32 0, i32 1
  %72 = load i32 (%struct.gsm_mux*, i32*, i32)*, i32 (%struct.gsm_mux*, i32*, i32)** %71, align 8
  %73 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %75 = load i32, i32* %9, align 4
  %76 = call i32 %72(%struct.gsm_mux* %73, i32* %74, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @gsm_print_packet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %79, i32* null, i32 0)
  br label %81

81:                                               ; preds = %69, %67
  ret void
}

declare dso_local i32 @gsm_fcs_add_block(i32, i32*, i32) #1

declare dso_local i32 @gsm_stuff_frame(i32*, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gsm_print_packet(i8*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
