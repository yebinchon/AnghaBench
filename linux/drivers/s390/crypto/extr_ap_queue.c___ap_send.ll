; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c___ap_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c___ap_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue_status = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, i64, i32)* @__ap_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ap_send(i32 %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ap_queue_status, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %19

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = or i64 %16, 4194304
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %14, %5
  %20 = load i32, i32* %7, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i32 @ap_nqap(i32 %20, i64 %21, i8* %22, i64 %23)
  %25 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ap_queue_status, %struct.ap_queue_status* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local i32 @ap_nqap(i32, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
