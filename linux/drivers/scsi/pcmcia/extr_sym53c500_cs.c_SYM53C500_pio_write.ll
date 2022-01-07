; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_pio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_pio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIO_STATUS = common dso_local global i32 0, align 4
@PIO_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @SYM53C500_pio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYM53C500_pio_write(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @REG1(i32 %12)
  br label %14

14:                                               ; preds = %92, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 64
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ false, %14 ], [ %21, %17 ]
  br i1 %23, label %24, label %93

24:                                               ; preds = %22
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @PIO_STATUS, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @inb(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %94

33:                                               ; preds = %24
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 30
  switch i32 %35, label %40 [
    i32 16, label %36
    i32 0, label %37
    i32 8, label %38
    i32 12, label %39
    i32 14, label %41
  ]

36:                                               ; preds = %33
  store i32 128, i32* %11, align 4
  br label %42

37:                                               ; preds = %33
  store i32 84, i32* %11, align 4
  br label %42

38:                                               ; preds = %33
  store i32 42, i32* %11, align 4
  br label %42

39:                                               ; preds = %33
  store i32 1, i32* %11, align 4
  br label %42

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %33, %40
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %41, %39, %38, %37, %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %42
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PIO_FIFO, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 2
  %64 = call i32 @outsl(i32 %60, i8* %61, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 252
  %67 = load i8*, i8** %8, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, 252
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %91

74:                                               ; preds = %54, %51
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @PIO_FIFO, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @outb(i32 %83, i32 %86)
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %75

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %57
  br label %92

92:                                               ; preds = %91, %42
  br label %14

93:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %32
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @REG1(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outsl(i32, i8*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
