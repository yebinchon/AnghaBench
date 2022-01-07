; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_nand_init_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_alauda.c_nand_init_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parity = common dso_local global i32* null, align 8
@ecc2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @nand_init_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nand_init_ecc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @parity, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  store i32 0, i32* %5, align 4
  store i32 1, i32* %1, align 4
  br label %6

6:                                                ; preds = %23, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = load i32*, i32** @parity, align 8
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, 1
  %19 = load i32*, i32** @parity, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %6

26:                                               ; preds = %6
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %85, %26
  %28 = load i32, i32* %1, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %88

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %63, %30
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %66

34:                                               ; preds = %31
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = xor i32 %45, 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %2, align 4
  %49 = and i32 %48, 2
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = xor i32 %52, 16
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i32, i32* %2, align 4
  %56 = and i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = xor i32 %59, 64
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %31

66:                                               ; preds = %31
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = shl i32 %68, 1
  %70 = xor i32 %67, %69
  %71 = load i32*, i32** @parity, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 168, i32 0
  %79 = xor i32 %70, %78
  %80 = xor i32 %79, -1
  %81 = load i32*, i32** @ecc2, align 8
  %82 = load i32, i32* %1, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %66
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %27

88:                                               ; preds = %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
