; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_set_lcd_output_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_lcd.c_set_lcd_output_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UNICHROME_K8M890 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_4__* null, align 8
@UNICHROME_P4M890 = common dso_local global i32 0, align 4
@CR97 = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4
@BIT7 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT0 = common dso_local global i64 0, align 8
@IGA2 = common dso_local global i32 0, align 4
@CR91 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_lcd_output_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_lcd_output_path(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %43 [
    i32 132, label %6
    i32 129, label %34
    i32 128, label %34
    i32 131, label %34
    i32 130, label %34
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @UNICHROME_K8M890, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %6
  %15 = load i32, i32* @UNICHROME_P4M890, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @viaparinfo, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %15, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14, %6
  %23 = load i32, i32* @CR97, align 4
  %24 = load i32, i32* @VIACR, align 4
  %25 = load i64, i64* @BIT7, align 8
  %26 = load i64, i64* @BIT2, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* @BIT1, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @BIT0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @viafb_write_reg_mask(i32 %23, i32 %24, i32 132, i64 %31)
  br label %33

33:                                               ; preds = %22, %14
  br label %34

34:                                               ; preds = %2, %2, %2, %2, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IGA2, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @CR91, align 4
  %40 = load i32, i32* @VIACR, align 4
  %41 = call i32 @viafb_write_reg(i32 %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %2, %42
  ret void
}

declare dso_local i32 @viafb_write_reg_mask(i32, i32, i32, i64) #1

declare dso_local i32 @viafb_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
