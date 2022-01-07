; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_imm.c_imm_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16 }

@IMM_SELECT_TMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @imm_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_select(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i16, i16* %9, align 2
  store i16 %10, i16* %7, align 2
  %11 = load i16, i16* %7, align 2
  %12 = call i32 @w_ctr(i16 zeroext %11, i32 12)
  %13 = load i32, i32* @IMM_SELECT_TMO, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %14
  %18 = load i16, i16* %7, align 2
  %19 = call i32 @r_str(i16 zeroext %18)
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi i1 [ false, %17 ], [ %24, %22 ]
  br i1 %26, label %14, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %65

31:                                               ; preds = %27
  %32 = load i16, i16* %7, align 2
  %33 = call i32 @w_ctr(i16 zeroext %32, i32 4)
  %34 = load i16, i16* %7, align 2
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 1, %35
  %37 = or i32 128, %36
  %38 = call i32 @w_dtr(i16 zeroext %34, i32 %37)
  %39 = call i32 @udelay(i32 1)
  %40 = load i16, i16* %7, align 2
  %41 = call i32 @w_ctr(i16 zeroext %40, i32 12)
  %42 = load i16, i16* %7, align 2
  %43 = call i32 @w_ctr(i16 zeroext %42, i32 13)
  %44 = load i32, i32* @IMM_SELECT_TMO, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %56, %31
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45
  %49 = load i16, i16* %7, align 2
  %50 = call i32 @r_str(i16 zeroext %49)
  %51 = and i32 %50, 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i1 [ false, %48 ], [ %55, %53 ]
  br i1 %57, label %45, label %58

58:                                               ; preds = %56
  %59 = load i16, i16* %7, align 2
  %60 = call i32 @w_ctr(i16 zeroext %59, i32 12)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @w_dtr(i16 zeroext, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
