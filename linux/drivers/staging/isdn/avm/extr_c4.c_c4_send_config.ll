; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_send_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/avm/extr_c4.c_c4_send_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i64 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @c4_send_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4_send_config(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca [4 x i32********], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @queue_sendconfigword(i32* %10, i32 1)
  store i32 %11, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @queue_sendconfigword(i32* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %103

24:                                               ; preds = %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %62, %24
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = getelementptr inbounds [4 x i32********], [4 x i32********]* %6, i64 0, i64 0
  %42 = bitcast i32********* %41 to i32**********
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @copy_from_user(i32********** %42, i8* %43, i32 32)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %103

49:                                               ; preds = %40
  br label %55

50:                                               ; preds = %35
  %51 = getelementptr inbounds [4 x i32********], [4 x i32********]* %6, i64 0, i64 0
  %52 = bitcast i32********* %51 to i32**********
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @memcpy(i32********** %52, i8* %53, i32 32)
  br label %55

55:                                               ; preds = %50, %49
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds [4 x i32********], [4 x i32********]* %6, i64 0, i64 0
  %58 = call i32 @queue_sendconfig(i32* %56, i32********* %57)
  store i32 %58, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %3, align 4
  br label %103

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %64, 32
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 32
  store i8* %68, i8** %7, align 8
  br label %31

69:                                               ; preds = %31
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %69
  %73 = getelementptr inbounds [4 x i32********], [4 x i32********]* %6, i64 0, i64 0
  %74 = call i32 @memset(i32********* %73, i32 0, i32 32)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = bitcast [4 x i32********]* %6 to i32**********
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @copy_from_user(i32********** %80, i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EFAULT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %103

88:                                               ; preds = %79
  br label %94

89:                                               ; preds = %72
  %90 = bitcast [4 x i32********]* %6 to i32**********
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memcpy(i32********** %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %88
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds [4 x i32********], [4 x i32********]* %6, i64 0, i64 0
  %97 = call i32 @queue_sendconfig(i32* %95, i32********* %96)
  store i32 %97, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %103

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %69
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %99, %85, %60, %46, %22, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @queue_sendconfigword(i32*, i32) #1

declare dso_local i64 @copy_from_user(i32**********, i8*, i32) #1

declare dso_local i32 @memcpy(i32**********, i8*, i32) #1

declare dso_local i32 @queue_sendconfig(i32*, i32*********) #1

declare dso_local i32 @memset(i32*********, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
