; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_check_dsp_e1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_check_dsp_e1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_dsp_e1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dsp_e1(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @FW_GET_BYTE(i32* %14)
  store i32 %15, i32* %6, align 4
  store i32 1, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul nsw i32 4, %17
  %19 = add i32 %16, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp ugt i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %87, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %90

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @get_unaligned_le32(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = add i32 %34, 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %87

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp uge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %91

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %13, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @FW_GET_BYTE(i32* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %83, %44
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = add i32 %58, 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %3, align 4
  br label %91

63:                                               ; preds = %57
  %64 = load i32, i32* %13, align 4
  %65 = add i32 %64, 2
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @get_unaligned_le16(i32* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add i32 %71, 2
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %73, %74
  %76 = load i32, i32* %5, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %91

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %53

86:                                               ; preds = %53
  br label %87

87:                                               ; preds = %86, %38
  %88 = load i32, i32* %10, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %24

90:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %78, %62, %43, %22
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @FW_GET_BYTE(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
