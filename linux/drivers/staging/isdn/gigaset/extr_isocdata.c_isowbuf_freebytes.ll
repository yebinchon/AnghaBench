; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_freebytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_freebytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i32, i32 }

@BAS_OUTBUFPAD = common dso_local global i32 0, align 4
@BAS_OUTBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isowbuf_t*)* @isowbuf_freebytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isowbuf_freebytes(%struct.isowbuf_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isowbuf_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %3, align 8
  %7 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %8 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.isowbuf_t*, %struct.isowbuf_t** %3, align 8
  %11 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BAS_OUTBUFPAD, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @BAS_OUTBUFPAD, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @BAS_OUTBUFPAD, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %30, %26, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
