; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_data_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_data_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_msg = type { i32, i32, i8*, i8*, i64, i64 }
%struct.gsm_mux = type { i32 }

@HDR_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gsm_msg* (%struct.gsm_mux*, i8*, i32, i8*)* @gsm_data_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gsm_msg* @gsm_data_alloc(%struct.gsm_mux* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gsm_msg*, align 8
  %6 = alloca %struct.gsm_mux*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gsm_msg*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 40, %12
  %14 = load i64, i64* @HDR_LEN, align 8
  %15 = add i64 %13, %14
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.gsm_msg* @kmalloc(i64 %15, i32 %16)
  store %struct.gsm_msg* %17, %struct.gsm_msg** %10, align 8
  %18 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %19 = icmp eq %struct.gsm_msg* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store %struct.gsm_msg* null, %struct.gsm_msg** %5, align 8
  br label %43

21:                                               ; preds = %4
  %22 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %23 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HDR_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = sub nsw i64 %26, 1
  %28 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %29 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %28, i32 0, i32 5
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %32 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %35 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %38 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  %40 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.gsm_msg*, %struct.gsm_msg** %10, align 8
  store %struct.gsm_msg* %42, %struct.gsm_msg** %5, align 8
  br label %43

43:                                               ; preds = %21, %20
  %44 = load %struct.gsm_msg*, %struct.gsm_msg** %5, align 8
  ret %struct.gsm_msg* %44
}

declare dso_local %struct.gsm_msg* @kmalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
