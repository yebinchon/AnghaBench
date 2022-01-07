; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.h_cedrus_dst_buf_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus.h_cedrus_dst_buf_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vb2_buffer** }
%struct.vb2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cedrus_ctx*, i32, i32)* @cedrus_dst_buf_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_dst_buf_addr(%struct.cedrus_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cedrus_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vb2_buffer*, align 8
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

12:                                               ; preds = %3
  %13 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %20, i64 %22
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %23, align 8
  store %struct.vb2_buffer* %24, %struct.vb2_buffer** %8, align 8
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %26 = icmp ne %struct.vb2_buffer* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %12
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %29 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cedrus_buf_addr(%struct.vb2_buffer* %28, i32* %30, i32 %31)
  br label %34

33:                                               ; preds = %12
  br label %34

34:                                               ; preds = %33, %27
  %35 = phi i32 [ %32, %27 ], [ 0, %33 ]
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @cedrus_buf_addr(%struct.vb2_buffer*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
