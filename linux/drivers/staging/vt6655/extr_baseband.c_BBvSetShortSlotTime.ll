; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetShortSlotTime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetShortSlotTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBvSetShortSlotTime(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = call i32 @BBbReadEmbedded(%struct.vnt_private* %5, i32 10, i8* %3)
  %7 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 223
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  br label %21

16:                                               ; preds = %1
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %18, 32
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  br label %21

21:                                               ; preds = %16, %11
  %22 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %23 = call i32 @BBbReadEmbedded(%struct.vnt_private* %22, i32 231, i8* %4)
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load i8, i8* %3, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, 32
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %3, align 1
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %40 = load i8, i8* %3, align 1
  %41 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %39, i32 10, i8 zeroext %40)
  ret void
}

declare dso_local i32 @BBbReadEmbedded(%struct.vnt_private*, i32, i8*) #1

declare dso_local i32 @BBbWriteEmbedded(%struct.vnt_private*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
