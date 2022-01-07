; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_alloc_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_alloc_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270_line = type { %struct.tty3270_line* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty3270_line* (i32, i32)* @tty3270_alloc_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty3270_line* @tty3270_alloc_screen(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.tty3270_line*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty3270_line*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sub i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = mul i64 8, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i64 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.tty3270_line*
  store %struct.tty3270_line* %16, %struct.tty3270_line** %6, align 8
  %17 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  %18 = icmp ne %struct.tty3270_line* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %69

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub i32 %23, 2
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 4, %28
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i64 %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.tty3270_line*
  %34 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %34, i64 %36
  %38 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %37, i32 0, i32 0
  store %struct.tty3270_line* %33, %struct.tty3270_line** %38, align 8
  %39 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %39, i64 %41
  %43 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %42, i32 0, i32 0
  %44 = load %struct.tty3270_line*, %struct.tty3270_line** %43, align 8
  %45 = icmp ne %struct.tty3270_line* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %26
  br label %53

47:                                               ; preds = %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %21

51:                                               ; preds = %21
  %52 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  store %struct.tty3270_line* %52, %struct.tty3270_line** %3, align 8
  br label %73

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %54
  %59 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %59, i64 %61
  %63 = getelementptr inbounds %struct.tty3270_line, %struct.tty3270_line* %62, i32 0, i32 0
  %64 = load %struct.tty3270_line*, %struct.tty3270_line** %63, align 8
  %65 = call i32 @kfree(%struct.tty3270_line* %64)
  br label %54

66:                                               ; preds = %54
  %67 = load %struct.tty3270_line*, %struct.tty3270_line** %6, align 8
  %68 = call i32 @kfree(%struct.tty3270_line* %67)
  br label %69

69:                                               ; preds = %66, %19
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.tty3270_line* @ERR_PTR(i32 %71)
  store %struct.tty3270_line* %72, %struct.tty3270_line** %3, align 8
  br label %73

73:                                               ; preds = %69, %51
  %74 = load %struct.tty3270_line*, %struct.tty3270_line** %3, align 8
  ret %struct.tty3270_line* %74
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.tty3270_line*) #1

declare dso_local %struct.tty3270_line* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
