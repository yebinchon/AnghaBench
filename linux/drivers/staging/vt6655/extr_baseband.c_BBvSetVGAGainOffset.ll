; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetVGAGainOffset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_baseband.c_BBvSetVGAGainOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i8*, i8, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBvSetVGAGainOffset(%struct.vnt_private* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i8 %1, i8* %4, align 1
  store i8 0, i8* %5, align 1
  %6 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %7 = load i8, i8* %4, align 1
  %8 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %6, i32 231, i8 zeroext %7)
  %9 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %10 = call i32 @BBbReadEmbedded(%struct.vnt_private* %9, i32 10, i8* %5)
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 32
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %5, align 1
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 223
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %5, align 1
  br label %40

35:                                               ; preds = %25
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 32
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %5, align 1
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i8, i8* %4, align 1
  %43 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %44 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %43, i32 0, i32 1
  store i8 %42, i8* %44, align 8
  %45 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @BBbWriteEmbedded(%struct.vnt_private* %45, i32 10, i8 zeroext %46)
  ret void
}

declare dso_local i32 @BBbWriteEmbedded(%struct.vnt_private*, i32, i8 zeroext) #1

declare dso_local i32 @BBbReadEmbedded(%struct.vnt_private*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
