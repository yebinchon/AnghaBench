; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_cpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_cpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i8)* @imm_cpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_cpp(i16 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i16 %0, i16* %4, align 2
  store i8 %1, i8* %5, align 1
  %9 = load i16, i16* %4, align 2
  %10 = call i32 @w_ctr(i16 zeroext %9, i32 12)
  %11 = call i32 @udelay(i32 2)
  %12 = load i16, i16* %4, align 2
  %13 = call i32 @w_dtr(i16 zeroext %12, i32 170)
  %14 = call i32 @udelay(i32 10)
  %15 = load i16, i16* %4, align 2
  %16 = call i32 @w_dtr(i16 zeroext %15, i32 85)
  %17 = call i32 @udelay(i32 10)
  %18 = load i16, i16* %4, align 2
  %19 = call i32 @w_dtr(i16 zeroext %18, i32 0)
  %20 = call i32 @udelay(i32 10)
  %21 = load i16, i16* %4, align 2
  %22 = call i32 @w_dtr(i16 zeroext %21, i32 255)
  %23 = call i32 @udelay(i32 10)
  %24 = load i16, i16* %4, align 2
  %25 = call i32 @r_str(i16 zeroext %24)
  %26 = and i32 %25, 184
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %6, align 1
  %28 = load i16, i16* %4, align 2
  %29 = call i32 @w_dtr(i16 zeroext %28, i32 135)
  %30 = call i32 @udelay(i32 10)
  %31 = load i16, i16* %4, align 2
  %32 = call i32 @r_str(i16 zeroext %31)
  %33 = and i32 %32, 184
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %7, align 1
  %35 = load i16, i16* %4, align 2
  %36 = call i32 @w_dtr(i16 zeroext %35, i32 120)
  %37 = call i32 @udelay(i32 10)
  %38 = load i16, i16* %4, align 2
  %39 = call i32 @r_str(i16 zeroext %38)
  %40 = and i32 %39, 56
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i16, i16* %4, align 2
  %43 = load i8, i8* %5, align 1
  %44 = zext i8 %43 to i32
  %45 = call i32 @w_dtr(i16 zeroext %42, i32 %44)
  %46 = call i32 @udelay(i32 2)
  %47 = load i16, i16* %4, align 2
  %48 = call i32 @w_ctr(i16 zeroext %47, i32 12)
  %49 = call i32 @udelay(i32 10)
  %50 = load i16, i16* %4, align 2
  %51 = call i32 @w_ctr(i16 zeroext %50, i32 13)
  %52 = call i32 @udelay(i32 2)
  %53 = load i16, i16* %4, align 2
  %54 = call i32 @w_ctr(i16 zeroext %53, i32 12)
  %55 = call i32 @udelay(i32 10)
  %56 = load i16, i16* %4, align 2
  %57 = call i32 @w_dtr(i16 zeroext %56, i32 255)
  %58 = call i32 @udelay(i32 10)
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 184
  br i1 %61, label %62, label %71

62:                                               ; preds = %2
  %63 = load i8, i8* %7, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 24
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8, i8* %8, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 48
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %85

71:                                               ; preds = %66, %62, %2
  %72 = load i8, i8* %6, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 184
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i8, i8* %7, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 24
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i8, i8* %8, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 56
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %79, %75, %71
  store i32 -1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %70
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @w_dtr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
