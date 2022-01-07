; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_putbits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/gigaset/extr_isocdata.c_isowbuf_putbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isowbuf_t = type { i32, i32, i32* }

@BAS_OUTBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isowbuf_t*, i32, i32)* @isowbuf_putbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isowbuf_putbits(%struct.isowbuf_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.isowbuf_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isowbuf_t* %0, %struct.isowbuf_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %9 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %12 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %17 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %26 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %33, %3
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 8
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %37 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %35, i32* %42, align 4
  %43 = load i32, i32* @BAS_OUTBUFSIZE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = srem i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 8
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 8
  store i32 %49, i32* %6, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %53 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 255
  %56 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %57 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.isowbuf_t*, %struct.isowbuf_t** %4, align 8
  %64 = getelementptr inbounds %struct.isowbuf_t, %struct.isowbuf_t* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
