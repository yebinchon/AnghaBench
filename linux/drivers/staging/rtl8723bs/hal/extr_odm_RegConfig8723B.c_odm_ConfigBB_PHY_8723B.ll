; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigBB_PHY_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_odm_RegConfig8723B.c_odm_ConfigBB_PHY_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ODM_COMP_INIT = common dso_local global i32 0, align 4
@ODM_DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"===> ODM_ConfigBBWithHeaderFile: [PHY_REG] %08X %08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @odm_ConfigBB_PHY_8723B(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 254
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = call i32 @msleep(i32 50)
  br label %51

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 253
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @mdelay(i32 5)
  br label %50

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 252
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @mdelay(i32 1)
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 251
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = call i32 @udelay(i32 50)
  br label %48

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 250
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @udelay(i32 5)
  br label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 249
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @udelay(i32 1)
  br label %46

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @PHY_SetBBReg(i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %38, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48, %21
  br label %50

50:                                               ; preds = %49, %16
  br label %51

51:                                               ; preds = %50, %11
  %52 = call i32 @udelay(i32 1)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = load i32, i32* @ODM_COMP_INIT, align 4
  %55 = load i32, i32* @ODM_DBG_TRACE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @ODM_RT_TRACE(%struct.TYPE_4__* %53, i32 %54, i32 %55, i8* %59)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @PHY_SetBBReg(i32, i32, i32, i32) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_4__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
