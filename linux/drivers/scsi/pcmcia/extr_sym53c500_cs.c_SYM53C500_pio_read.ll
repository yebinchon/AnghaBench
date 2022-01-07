; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_pio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pcmcia/extr_sym53c500_cs.c_SYM53C500_pio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIO_STATUS = common dso_local global i32 0, align 4
@PIO_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32)* @SYM53C500_pio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SYM53C500_pio_read(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @REG1(i32 %12)
  br label %14

14:                                               ; preds = %93, %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %94

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PIO_STATUS, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i8* @inb(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, 128
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %95

27:                                               ; preds = %17
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %28, 30
  switch i32 %29, label %30 [
    i32 16, label %31
    i32 0, label %32
    i32 8, label %33
    i32 12, label %34
    i32 14, label %35
  ]

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %27, %30
  store i32 0, i32* %11, align 4
  br label %36

32:                                               ; preds = %27
  store i32 1, i32* %11, align 4
  br label %36

33:                                               ; preds = %27
  store i32 42, i32* %11, align 4
  br label %36

34:                                               ; preds = %27
  store i32 84, i32* %11, align 4
  br label %36

35:                                               ; preds = %27
  store i32 128, i32* %11, align 4
  br label %36

36:                                               ; preds = %35, %34, %33, %32, %31
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %37, 64
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %95

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %57, 3
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PIO_FIFO, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = ashr i32 %64, 2
  %66 = call i32 @insl(i32 %62, i8* %63, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 252
  %69 = load i8*, i8** %8, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 252
  %74 = load i32, i32* %9, align 4
  %75 = sub i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %92

76:                                               ; preds = %56, %53
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PIO_FIFO, align 4
  %84 = add nsw i32 %82, %83
  %85 = call i8* @inb(i32 %84)
  %86 = ptrtoint i8* %85 to i8
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %8, align 8
  store i8 %86, i8* %87, align 1
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %89, -1
  store i32 %90, i32* %9, align 4
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %44
  br label %14

94:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %43, %26
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @REG1(i32) #1

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @insl(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
