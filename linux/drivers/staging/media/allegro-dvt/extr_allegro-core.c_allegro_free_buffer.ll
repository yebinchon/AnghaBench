; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.allegro_buffer = type { i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.allegro_dev*, %struct.allegro_buffer*)* @allegro_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allegro_free_buffer(%struct.allegro_dev* %0, %struct.allegro_buffer* %1) #0 {
  %3 = alloca %struct.allegro_dev*, align 8
  %4 = alloca %struct.allegro_buffer*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %3, align 8
  store %struct.allegro_buffer* %1, %struct.allegro_buffer** %4, align 8
  %5 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load %struct.allegro_dev*, %struct.allegro_dev** %3, align 8
  %11 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32* %13, i64 %16, i32* %19, i32 %22)
  %24 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load %struct.allegro_buffer*, %struct.allegro_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.allegro_buffer, %struct.allegro_buffer* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %9, %2
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
