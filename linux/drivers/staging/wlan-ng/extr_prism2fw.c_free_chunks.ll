; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_free_chunks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2fw.c_free_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgchunk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imgchunk*, i32*)* @free_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_chunks(%struct.imgchunk* %0, i32* %1) #0 {
  %3 = alloca %struct.imgchunk*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.imgchunk* %0, %struct.imgchunk** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load %struct.imgchunk*, %struct.imgchunk** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %12, i64 %14
  %16 = getelementptr inbounds %struct.imgchunk, %struct.imgchunk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kfree(i32 %17)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i32*, i32** %4, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.imgchunk*, %struct.imgchunk** %3, align 8
  %25 = call i32 @memset(%struct.imgchunk* %24, i32 0, i32 4)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.imgchunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
