; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_set_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_bt431.h_bt431_set_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt431_regs = type { i32 }

@BT431_REG_CRAM_BASE = common dso_local global i32 0, align 4
@BT431_CURSOR_SIZE = common dso_local global i32 0, align 4
@ROP_XOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt431_regs*, i8*, i8*, i32, i32, i32)* @bt431_set_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt431_set_cursor(%struct.bt431_regs* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.bt431_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bt431_regs* %0, %struct.bt431_regs** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %17, i32 8)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.bt431_regs*, %struct.bt431_regs** %7, align 8
  %20 = load i32, i32* @BT431_REG_CRAM_BASE, align 4
  %21 = call i32 @bt431_select_reg(%struct.bt431_regs* %19, i32 %20)
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %85, %6
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @BT431_CURSOR_SIZE, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %81, %26
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @BT431_CURSOR_SIZE, align 4
  %30 = sdiv i32 %29, 8
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %84

32:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @ROP_XOR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load i32, i32* %16, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = xor i32 %53, %59
  %61 = or i32 %52, %60
  store i32 %61, i32* %16, align 4
  br label %74

62:                                               ; preds = %40
  %63 = load i32, i32* %16, align 4
  %64 = shl i32 %63, 8
  %65 = load i32, i32* %16, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = and i32 %65, %71
  %73 = or i32 %64, %72
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %62, %50
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %74, %36, %32
  %78 = load %struct.bt431_regs*, %struct.bt431_regs** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @bt431_write_cmap_inc(%struct.bt431_regs* %78, i32 %79)
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %27

84:                                               ; preds = %27
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %22

88:                                               ; preds = %22
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @bt431_select_reg(%struct.bt431_regs*, i32) #1

declare dso_local i32 @bt431_write_cmap_inc(%struct.bt431_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
