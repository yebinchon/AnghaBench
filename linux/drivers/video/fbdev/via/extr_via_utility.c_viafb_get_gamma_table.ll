; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_utility.c_viafb_get_gamma_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_via_utility.c_viafb_get_gamma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@SR16 = common dso_local global i32 0, align 4
@VIASR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i32 0, align 4
@CR33 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@SR1A = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@LUT_INDEX_READ = common dso_local global i32 0, align 4
@LUT_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_get_gamma_table(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i8 0, i8* %6, align 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %23 [
    i32 136, label %13
    i32 133, label %13
    i32 132, label %18
    i32 128, label %18
    i32 135, label %18
    i32 134, label %18
    i32 131, label %18
    i32 130, label %18
    i32 129, label %18
  ]

13:                                               ; preds = %1, %1
  %14 = load i32, i32* @SR16, align 4
  %15 = load i32, i32* @VIASR, align 4
  %16 = load i32, i32* @BIT7, align 4
  %17 = call i32 @viafb_write_reg_mask(i32 %14, i32 %15, i32 128, i32 %16)
  br label %23

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %19 = load i32, i32* @CR33, align 4
  %20 = load i32, i32* @VIACR, align 4
  %21 = load i32, i32* @BIT7, align 4
  %22 = call i32 @viafb_write_reg_mask(i32 %19, i32 %20, i32 128, i32 %21)
  br label %23

23:                                               ; preds = %1, %18, %13
  %24 = load i32, i32* @VIASR, align 4
  %25 = load i32, i32* @SR1A, align 4
  %26 = call zeroext i8 @viafb_read_reg(i32 %24, i32 %25)
  store i8 %26, i8* %6, align 1
  %27 = load i32, i32* @SR1A, align 4
  %28 = load i32, i32* @VIASR, align 4
  %29 = load i32, i32* @BIT0, align 4
  %30 = call i32 @viafb_write_reg_mask(i32 %27, i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* @LUT_INDEX_READ, align 4
  %32 = call i32 @outb(i32 0, i32 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %57, %23
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i32, i32* @LUT_DATA, align 4
  %38 = call zeroext i8 @inb(i32 %37)
  store i8 %38, i8* %3, align 1
  %39 = load i32, i32* @LUT_DATA, align 4
  %40 = call zeroext i8 @inb(i32 %39)
  store i8 %40, i8* %4, align 1
  %41 = load i32, i32* @LUT_DATA, align 4
  %42 = call zeroext i8 @inb(i32 %41)
  store i8 %42, i8* %5, align 1
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 16
  %46 = load i8, i8* %4, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = or i32 %45, %48
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %49, %51
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %36
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load i32, i32* @SR1A, align 4
  %62 = load i32, i32* @VIASR, align 4
  %63 = load i8, i8* %6, align 1
  %64 = call i32 @viafb_write_reg(i32 %61, i32 %62, i8 zeroext %63)
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i32) #1

declare dso_local zeroext i8 @viafb_read_reg(i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
