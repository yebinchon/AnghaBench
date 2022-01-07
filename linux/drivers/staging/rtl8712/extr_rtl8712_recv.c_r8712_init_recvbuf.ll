; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_init_recvbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_init_recvbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }
%struct.recv_buf = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_RECVBUF_SZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_init_recvbuf(%struct._adapter* %0, %struct.recv_buf* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.recv_buf*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.recv_buf* %1, %struct.recv_buf** %4, align 8
  %5 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %6 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %5, i32 0, i32 7
  store i64 0, i64* %6, align 8
  %7 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %8 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %7, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %10 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %12 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %17 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %20 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %22 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %25 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  %26 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %27 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %30 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %32 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_RECVBUF_SZ, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.recv_buf*, %struct.recv_buf** %4, align 8
  %37 = getelementptr inbounds %struct.recv_buf, %struct.recv_buf* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %15, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
